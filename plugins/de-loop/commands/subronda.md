---
description: Prepara y lanza una sub-ronda de desarrollo (sesion dedicada) segun el protocolo coordinacion-desarrollo
---

Actuá como coordinadora según el skill `coordinacion-desarrollo`.

Encargo de la sub-ronda: $ARGUMENTS

Si no viene encargo, pedilo en una línea. Después:

1. Creá la carpeta canónica de la ronda (`originales/ entregables/ soporte/ outputs/ Viejos/ control/`) donde el usuario indique o junto a las rondas existentes.
2. Escribí el prompt de arranque completo en `originales/PROMPT-ARRANQUE.md`: alcance declarado, votos verbatim que ejecuta, prohibiciones de la sección 2 del skill, contrato de cierre (`outputs/CIERRE.flag` como último acto, precondición del ledger) y canal de reporte (`outputs/PARA-COORDINADORA.md`).
3. Corré el hook D1 del plugin (`${CLAUDE_PLUGIN_ROOT}/hooks-dev/verify-dev.sh <ronda> arranque <worktree>`) y copiá su salida a `control/hooks.log`. Si falla, no lances.
4. Mostrá al usuario el comando de lanzamiento con el lanzador del proyecto (worktree aislado desde `origin/main`, en terminal). No abras la sesión vos desde la app.

No mergees, no apliques SQL, no enciendas flags. Si el encargo pide alguna de esas cosas, elevalo.
