#!/usr/bin/env bash
# H1 - SELLADO DEL PRE-REGISTRO
# uso: h1.sh <ronda> seal     (al cerrar fase 1: guarda hashes en control/h1.sha)
#      h1.sh <ronda> verify   (al cerrar fase 3: recalcula y compara)
source "$(dirname "$0")/_common.sh"
MODO="${2:?uso: h1.sh <ronda> seal|verify}"
SELLO="$CONTROL/h1.sha"
ARCHIVOS=$(find "$RONDA/10-preregistro" -type f ! -name '.*' 2>/dev/null | sort)
[ -n "$ARCHIVOS" ] || { fallo "no hay archivos en 10-preregistro/"; cierre H1; }
for eq in A B; do
  n=$(find "$RONDA/10-preregistro/$eq" -type f ! -name '.*' 2>/dev/null | wc -l | tr -d ' ')
  [ "$n" -eq 1 ] || fallo "10-preregistro/$eq debe tener exactamente 1 archivo, tiene $n"
done
case "$MODO" in
  seal)
    : > "$SELLO"
    while IFS= read -r f; do echo "$(sha "$f")  ${f#$RONDA/}" >> "$SELLO"; done <<< "$ARCHIVOS"
    ok "sellados $(wc -l < "$SELLO" | tr -d ' ') archivos en control/h1.sha" ;;
  verify)
    [ -f "$SELLO" ] || { fallo "no existe control/h1.sha: el pre-registro nunca se sello"; cierre H1; }
    while IFS= read -r linea; do
      h="${linea%%  *}"; rel="${linea#*  }"; f="$RONDA/$rel"
      if [ ! -f "$f" ]; then fallo "falta $rel (RONDA CONTAMINADA)"
      elif [ "$(sha "$f")" != "$h" ]; then fallo "$rel fue modificado despues del sellado (RONDA CONTAMINADA)"
      else ok "$rel intacto"; fi
    done < "$SELLO"
    actuales=$(echo "$ARCHIVOS" | wc -l | tr -d ' '); sellados=$(wc -l < "$SELLO" | tr -d ' ')
    [ "$actuales" -eq "$sellados" ] || fallo "hay $actuales archivos y se sellaron $sellados: se agrego o quito un pre-registro" ;;
  *) echo "modo invalido: $MODO"; exit 2 ;;
esac
cierre H1
