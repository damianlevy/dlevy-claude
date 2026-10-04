#!/usr/bin/env bash
# D4 - PR SIN MERGE Y SIN FUERZA. Al pedir turno.
# uso: d4.sh <ronda> <worktree>
# Rama distinta de main; si hay gh, el PR de la rama esta OPEN; el reflog no registra force ni no-verify.
source "$(dirname "$0")/_common.sh"
WT="${2:?uso: d4.sh <ronda> <worktree>}"
rama=$(git -C "$WT" rev-parse --abbrev-ref HEAD 2>/dev/null) || { fallo "$WT no es un worktree git"; cierre D4; }
[ "$rama" != "main" ] && [ "$rama" != "master" ] && ok "rama: $rama" || fallo "la sesion esta parada en $rama"
if command -v gh >/dev/null 2>&1; then
  estado=$(gh pr view "$rama" --repo "$(git -C "$WT" remote get-url origin 2>/dev/null)" --json state -q .state 2>/dev/null || gh pr view "$rama" --json state -q .state 2>/dev/null)
  case "$estado" in
    OPEN) ok "PR de $rama: OPEN" ;;
    MERGED) fallo "el PR de $rama ya esta MERGED: alguien mergeo fuera de la cola" ;;
    "") echo "  aviso: no hay PR para $rama todavia (o gh sin sesion)" ;;
    *) echo "  aviso: PR de $rama en estado $estado" ;;
  esac
else echo "  aviso: gh no disponible, estado del PR no verificado"; fi
if git -C "$WT" reflog 2>/dev/null | grep -qiE 'force|no-verify'; then fallo "el reflog registra force o no-verify"; else ok "sin force ni no-verify en el reflog"; fi
if [ -f "$RONDA/outputs/COMANDOS.log" ] && grep -qE 'push[^\n]*(--force|-f\b)|--no-verify|push[^\n]* main\b' "$RONDA/outputs/COMANDOS.log"; then fallo "COMANDOS.log registra push --force, --no-verify o push a main"; fi
cierre D4
