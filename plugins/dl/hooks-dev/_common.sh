#!/usr/bin/env bash
# Funciones compartidas por los hooks D1-D5 de coordinacion-desarrollo. No se ejecuta directo.
set -u
RONDA="${1:?uso: $0 <carpeta-de-ronda> [...]}"
[ -d "$RONDA" ] || { echo "ERROR: no existe la carpeta de ronda: $RONDA"; exit 2; }
CONTROL="$RONDA/control"; mkdir -p "$CONTROL"
FALLOS=0
fallo() { echo "  FALLO: $*"; FALLOS=$((FALLOS+1)); }
ok()    { echo "  ok: $*"; }
cierre() { if [ "$FALLOS" -eq 0 ]; then echo "$1: APROBADO"; exit 0; else echo "$1: FALLADO ($FALLOS)"; exit 1; fi; }
