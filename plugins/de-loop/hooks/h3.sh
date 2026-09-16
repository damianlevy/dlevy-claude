#!/usr/bin/env bash
# H3 - ETIQUETADO DE EVIDENCIA. Corre sobre cada informe de fase 2 y cada sesion de fase 3.
# uso: h3.sh <ronda> <archivo.md> [mas archivos...]
# Regla mecanica: toda linea de contenido tiene que empezar con [NORMA|DATO|INFERENCIA|SUPUESTO|RESTRICCION.
# Se exceptuan: lineas vacias, titulos (#), tablas (|), separadores (---), citas (>),
# comentarios HTML, y lineas de estructura que terminan en ':' (introducen una lista).
# Una vineta "- " o "1. " cuenta como contenido: tiene que llevar etiqueta despues del marcador.
# 1.3.1: un renglon que CONTINUA un parrafo envuelto (el renglon anterior era contenido y este no abre vineta)
# no exige etiqueta: la etiqueta va al principio de cada parrafo y de cada vineta, no de cada renglon.
source "$(dirname "$0")/_common.sh"
shift; [ $# -ge 1 ] || { echo "uso: h3.sh <ronda> <archivo> [...]"; exit 2; }
for f in "$@"; do
  [ -f "$f" ] || { fallo "no existe $f"; continue; }
  n=0; prev=0
  while IFS= read -r linea; do
    n=$((n+1))
    raw="$(echo "$linea" | sed -E 's/^[[:space:]]*//')"
    l="$(echo "$raw" | sed -E 's/^([-*+]|[0-9]+[.)])[[:space:]]+//')"
    [ -z "$l" ] && { prev=0; continue; }
    case "$l" in '#'*|'|'*|'---'*|'>'*|'<!--'*|'```'*) prev=0; continue;; esac
    vineta=0; [ "$raw" != "$l" ] && vineta=1
    if [[ "$l" == *: ]]; then prev=1; continue; fi
    if echo "$l" | grep -qE "^\[($CLASES)( |\])"; then prev=1; continue; fi
    if [ "$prev" -eq 1 ] && [ "$vineta" -eq 0 ]; then continue; fi   # continuacion de parrafo
    fallo "$(basename "$f"):$n sin clase: ${l:0:70}"; prev=1
  done < "$f"
  [ "$FALLOS" -eq 0 ] && ok "$(basename "$f"): $n lineas, todas las afirmaciones etiquetadas"
done
cierre H3
