#!/usr/bin/env bash
# H3 - ETIQUETADO DE EVIDENCIA. Corre sobre cada informe de fase 2 y cada sesion de fase 3.
# uso: h3.sh <ronda> <archivo.md> [mas archivos...]
# Regla mecanica: toda linea de contenido tiene que empezar con [NORMA|DATO|INFERENCIA|SUPUESTO|RESTRICCION.
# Se exceptuan: lineas vacias, titulos (#), tablas (|), separadores (---), citas (>),
# comentarios HTML, y lineas de estructura que terminan en ':' (introducen una lista).
# Una vineta "- " o "1. " cuenta como contenido: tiene que llevar etiqueta despues del marcador.
source "$(dirname "$0")/_common.sh"
shift; [ $# -ge 1 ] || { echo "uso: h3.sh <ronda> <archivo> [...]"; exit 2; }
for f in "$@"; do
  [ -f "$f" ] || { fallo "no existe $f"; continue; }
  n=0
  while IFS= read -r linea; do
    n=$((n+1))
    l="$(echo "$linea" | sed -E 's/^[[:space:]]*//; s/^([-*+]|[0-9]+[.)])[[:space:]]+//')"
    [ -z "$l" ] && continue
    case "$l" in '#'*|'|'*|'---'*|'>'*|'<!--'*|'```'*) continue;; esac
    [[ "$l" == *: ]] && continue
    echo "$l" | grep -qE "^\[($CLASES)( |\])" || fallo "$(basename "$f"):$n sin clase: ${l:0:70}"
  done < "$f"
  [ "$FALLOS" -eq 0 ] && ok "$(basename "$f"): $n lineas, todas las afirmaciones etiquetadas"
done
cierre H3
