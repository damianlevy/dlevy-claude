#!/usr/bin/env bash
# D5 - CIERRE INTEGRO. Al escribir CIERRE.flag.
# uso: d5.sh <ronda>
# Existe outputs/PARA-COORDINADORA.md; si hay HTML de decisiones, existe Libro de laudos con entrada de esta ronda;
# CIERRE.flag es el archivo mas nuevo de outputs/.
source "$(dirname "$0")/_common.sh"
O="$RONDA/outputs"
[ -f "$O/CIERRE.flag" ] || { fallo "no existe outputs/CIERRE.flag"; cierre D5; }
[ -f "$O/PARA-COORDINADORA.md" ] && ok "reporte a la coordinadora presente" || fallo "falta outputs/PARA-COORDINADORA.md"
if ls "$O"/*.html >/dev/null 2>&1; then
  libro=$(find "$RONDA" -iname 'LIBRO-DE-LAUDOS*.md' -o -iname 'LIBRO-LAUDOS*.md' 2>/dev/null | head -1)
  if [ -z "$libro" ]; then fallo "hay HTML de decisiones pero no hay Libro de laudos"
  elif [ "$(grep -c . "$libro")" -lt 2 ]; then fallo "el Libro de laudos esta vacio"
  else ok "Libro de laudos presente ($(basename "$libro"))"; fi
fi
mas_nuevo=$(ls -t "$O" | head -1)
[ "$mas_nuevo" = "CIERRE.flag" ] && ok "CIERRE.flag es el ultimo acto" || fallo "CIERRE.flag no es el archivo mas nuevo de outputs/ (lo es $mas_nuevo): se escribio antes de terminar"
cierre D5
