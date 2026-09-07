#!/usr/bin/env bash
# Funciones compartidas por los hooks de DC:LOOP. No se ejecuta directo.
set -u
RONDA="${1:?uso: $0 <carpeta-de-ronda> [...]}"
[ -d "$RONDA" ] || { echo "ERROR: no existe la carpeta de ronda: $RONDA"; exit 2; }
CONTROL="$RONDA/control"; mkdir -p "$CONTROL"
CLASES='NORMA|DATO|INFERENCIA|SUPUESTO|RESTRICCION'
FALLOS=0
fallo() { echo "  FALLO: $*"; FALLOS=$((FALLOS+1)); }
ok()    { echo "  ok: $*"; }
sha()   { if command -v sha256sum >/dev/null; then sha256sum "$1" | cut -d' ' -f1; else shasum -a 256 "$1" | cut -d' ' -f1; fi; }
cierre() { # $1 = nombre del hook
  if [ "$FALLOS" -eq 0 ]; then echo "$1: APROBADO"; exit 0; else echo "$1: FALLADO ($FALLOS)"; exit 1; fi; }
