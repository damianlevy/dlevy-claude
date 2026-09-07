#!/usr/bin/env bash
# Runner de hooks DC:LOOP. 1A lo invoca al cerrar cada fase y copia la salida a control/hooks.log.
# uso: verify.sh <ronda> <momento> [archivos]
#   momentos: fase1   -> H1 seal
#             pre-B   -> H2                       (antes de lanzar B en fase 2)
#             informe -> H3 + H4 sobre <archivos> (cada informe de fase 2 / sesion de fase 3)
#             fase3   -> H1 verify
#             fase7   -> H5
HOOKS="$(cd "$(dirname "$0")" && pwd)"
RONDA="${1:?uso: verify.sh <ronda> <momento> [archivos]}"; MOMENTO="${2:?momento}"; shift 2
LOG="$RONDA/control/hooks.log"; mkdir -p "$RONDA/control"
run() { local nombre="$1"; shift
  { echo "=== $(date '+%Y-%m-%d %H:%M:%S') $MOMENTO $nombre"; "$@"; rc=$?; echo "=== exit $rc"; exit $rc; } 2>&1 | tee -a "$LOG"
  return "${PIPESTATUS[0]}"; }
case "$MOMENTO" in
  fase1)   run H1 "$HOOKS/h1.sh" "$RONDA" seal ;;
  pre-B)   run H2 "$HOOKS/h2.sh" "$RONDA" ;;
  informe) run H3 "$HOOKS/h3.sh" "$RONDA" "$@"; r3=$?; run H4 "$HOOKS/h4.sh" "$RONDA" "$@"; r4=$?; exit $((r3+r4)) ;;
  fase3)   run H1 "$HOOKS/h1.sh" "$RONDA" verify ;;
  fase7)   run H5 "$HOOKS/h5.sh" "$RONDA" ;;
  *) echo "momento invalido: $MOMENTO (fase1|pre-B|informe|fase3|fase7)"; exit 2 ;;
esac
