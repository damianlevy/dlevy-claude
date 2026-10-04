#!/usr/bin/env bash
# D2 - SQL ENSAYADO. Al pedir turno.
# uso: d2.sh <ronda>
# Cada outputs/sql/*.sql tiene un hermano <nombre>.ensayo.log con BEGIN y ROLLBACK y sin ERROR.
source "$(dirname "$0")/_common.sh"
SQLS=$(find "$RONDA/outputs/sql" -maxdepth 1 -name '*.sql' 2>/dev/null | sort)
[ -n "$SQLS" ] || { ok "la ronda no propone SQL"; cierre D2; }
while IFS= read -r f; do
  log="${f%.sql}.ensayo.log"
  if [ ! -f "$log" ]; then fallo "$(basename "$f") sin ensayo ($(basename "$log") no existe)"; continue; fi
  grep -qi 'BEGIN' "$log" || fallo "$(basename "$log") no contiene BEGIN"
  grep -qi 'ROLLBACK' "$log" || fallo "$(basename "$log") no contiene ROLLBACK"
  grep -qiE '^(ERROR|FATAL|PANIC)|SQLSTATE|psql:.*ERROR' "$log" && fallo "$(basename "$log") registra un ERROR: el ensayo fallo"
  [ "$FALLOS" -eq 0 ] && ok "$(basename "$f") ensayado"
done <<< "$SQLS"
cierre D2
