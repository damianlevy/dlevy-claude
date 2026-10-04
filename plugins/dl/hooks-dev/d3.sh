#!/usr/bin/env bash
# D3 - FLAGS NACEN APAGADOS. Al pedir turno.
# uso: d3.sh <ronda>
# En outputs/sql/*.sql no hay altas de flag/setting con valor verdadero, salvo los listados en
# outputs/FLAGS-ENCENDER-AUTORIZADO.md (una linea por flag, con el codigo del voto).
source "$(dirname "$0")/_common.sh"
AUT="$RONDA/outputs/FLAGS-ENCENDER-AUTORIZADO.md"
SQLS=$(find "$RONDA/outputs/sql" -maxdepth 1 -name '*.sql' 2>/dev/null | sort)
[ -n "$SQLS" ] || { ok "la ronda no propone SQL"; cierre D3; }
while IFS= read -r f; do
  n=0
  while IFS= read -r linea; do
    n=$((n+1))
    echo "$linea" | grep -qiE '^\s*--' && continue
    # patrones: ..._habilitado / _enabled / flag ... seguido de true | 'true' | 'on' | 1 en la misma linea
    if echo "$linea" | grep -qiE "([a-z0-9_]*(habilitad[oa]|enabled|flag|feature)[a-z0-9_]*)[^;]*\b(true|'true'|'on'|= *1\b)"; then
      flag=$(echo "$linea" | grep -oiE "[a-z0-9_]*(habilitad[oa]|enabled|flag|feature)[a-z0-9_]*" | head -1)
      if [ -f "$AUT" ] && grep -qi "$flag" "$AUT"; then ok "$(basename "$f"):$n enciende $flag (autorizado en FLAGS-ENCENDER-AUTORIZADO.md)"
      else fallo "$(basename "$f"):$n enciende $flag sin autorizacion: ${linea:0:80}"; fi
    fi
  done < "$f"
done <<< "$SQLS"
[ "$FALLOS" -eq 0 ] && ok "ningun flag nace encendido"
cierre D3
