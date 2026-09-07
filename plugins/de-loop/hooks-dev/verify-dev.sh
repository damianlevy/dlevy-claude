#!/usr/bin/env bash
# Runner de hooks D1-D5 de coordinacion-desarrollo. La coordinadora lo invoca y copia la salida a control/hooks.log.
# uso: verify-dev.sh <ronda> <momento> [worktree]
#   arranque <worktree> -> D1
#   turno    <worktree> -> D2 + D3 + D4   (antes de avisar "listo #N")
#   cierre              -> D5             (al escribir CIERRE.flag)
HOOKS="$(cd "$(dirname "$0")" && pwd)"
RONDA="${1:?uso: verify-dev.sh <ronda> <momento> [worktree]}"; MOMENTO="${2:?momento}"; WT="${3:-}"
LOG="$RONDA/control/hooks.log"; mkdir -p "$RONDA/control"
run() { local nombre="$1"; shift
  { echo "=== $(date '+%Y-%m-%d %H:%M:%S') $MOMENTO $nombre"; "$@"; rc=$?; echo "=== exit $rc"; exit $rc; } 2>&1 | tee -a "$LOG"
  return "${PIPESTATUS[0]}"; }
case "$MOMENTO" in
  arranque) [ -n "$WT" ] || { echo "falta worktree"; exit 2; }; run D1 "$HOOKS/d1.sh" "$RONDA" "$WT" ;;
  turno)    [ -n "$WT" ] || { echo "falta worktree"; exit 2; }
            run D2 "$HOOKS/d2.sh" "$RONDA"; r2=$?; run D3 "$HOOKS/d3.sh" "$RONDA"; r3=$?; run D4 "$HOOKS/d4.sh" "$RONDA" "$WT"; r4=$?; exit $((r2+r3+r4)) ;;
  cierre)   run D5 "$HOOKS/d5.sh" "$RONDA" ;;
  *) echo "momento invalido: $MOMENTO (arranque|turno|cierre)"; exit 2 ;;
esac
