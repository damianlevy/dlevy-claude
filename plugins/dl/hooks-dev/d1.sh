#!/usr/bin/env bash
# D1 - ARRANQUE LIMPIO. Antes de que la sesion toque nada.
# uso: d1.sh <ronda> <worktree>
# Verifica: sin cambios sin commitear, rama distinta de main, HEAD desciende de origin/main recien traido.
source "$(dirname "$0")/_common.sh"
WT="${2:?uso: d1.sh <ronda> <worktree>}"
[ -d "$WT/.git" ] || git -C "$WT" rev-parse --git-dir >/dev/null 2>&1 || { fallo "$WT no es un worktree git"; cierre D1; }
sucio=$(git -C "$WT" status --porcelain | wc -l | tr -d ' ')
[ "$sucio" -eq 0 ] && ok "arbol limpio" || fallo "arbol sucio: $sucio archivos con cambios"
rama=$(git -C "$WT" rev-parse --abbrev-ref HEAD)
[ "$rama" != "main" ] && [ "$rama" != "master" ] && ok "rama: $rama" || fallo "la sesion esta parada en $rama"
git -C "$WT" fetch -q origin main 2>/dev/null || fallo "no se pudo hacer fetch de origin/main"
if git -C "$WT" merge-base --is-ancestor origin/main HEAD 2>/dev/null; then ok "HEAD desciende de origin/main ($(git -C "$WT" rev-parse --short origin/main))"
else fallo "HEAD no desciende de origin/main: el worktree no salio de main al dia"; fi
cierre D1
