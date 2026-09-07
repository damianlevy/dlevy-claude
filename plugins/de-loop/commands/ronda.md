---
description: Lanza una ronda del loop de investigacion compleja (v8, con hooks H1-H5)
---

Corré una ronda completa usando el skill `loop-investigacion`.

El planteo del usuario es: $ARGUMENTS

Si no viene planteo, pedíselo en una línea, con sus palabras y sin estructurar.

Hooks: salvo que el usuario declare otra ruta, usá `${CLAUDE_PLUGIN_ROOT}/hooks/verify.sh`.
Ejecutalo con la terminal en cada momento que indica el skill (fase1, pre-B,
informe, fase3, fase7) y copiá su salida textual a `control/hooks.log`. Si el
script no existe o no se puede ejecutar, declaralo como control pendiente; no
lo simules.

Después arrancá por fase 0.0 y corré la ronda entera sin detenerte, hasta
entregar el HTML de fase 7.
