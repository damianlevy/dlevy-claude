#!/usr/bin/env bash
# H4 - FUENTES DECLARADAS. Corre junto con H3.
# uso: h4.sh <ronda> <archivo.md> [mas archivos...]
# Toda etiqueta [DATO ...] y [NORMA ...] tiene que citar un id Dn, y ese Dn tiene que existir
# en el campo D de la ficha normalizada (00-encuadre/*.md, lineas que empiezan con "Dn").
source "$(dirname "$0")/_common.sh"
shift; [ $# -ge 1 ] || { echo "uso: h4.sh <ronda> <archivo> [...]"; exit 2; }
DECLARADAS=$(cat "$RONDA"/00-encuadre/*.md 2>/dev/null | grep -oE '^[[:space:]]*(- |\* )?D[0-9]+' | grep -oE 'D[0-9]+' | sort -u)
[ -n "$DECLARADAS" ] || { fallo "la ficha de 00-encuadre no declara ningun insumo con id Dn"; cierre H4; }
ok "insumos declarados en campo D: $(echo $DECLARADAS | tr '\n' ' ')"
for f in "$@"; do
  [ -f "$f" ] || { fallo "no existe $f"; continue; }
  n=0
  while IFS= read -r linea; do
    n=$((n+1))
    while IFS= read -r tag; do
      [ -z "$tag" ] && continue
      id=$(echo "$tag" | grep -oE '\bD[0-9]+\b' | head -1)
      if [ -z "$id" ]; then fallo "$(basename "$f"):$n cita sin id de fuente: $tag"
      elif ! echo "$DECLARADAS" | grep -qx "$id"; then fallo "$(basename "$f"):$n cita $id, que no esta en el campo D"; fi
    done < <(echo "$linea" | grep -oE '\[(DATO|NORMA)[^]]*\]')
  done < "$f"
done
[ "$FALLOS" -eq 0 ] && ok "todas las citas apuntan a insumos declarados"
cierre H4
