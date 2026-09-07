---
name: coordinacion-desarrollo
description: "Protocolo de desarrollo de software con varias sesiones de agentes: una coordinadora general unica duena de produccion, sub-coordinadoras por tema en modelo radial, sesiones dedicadas (sub-rondas) en worktrees aislados que producen PRs sin merge y SQL ensayado, flags que nacen apagados, validacion adversarial total de lo que generan los agentes, decisiones del usuario por HTML canonico y libro de laudos, y cierre por artefacto explicito. Usar cuando el usuario diga 'lanzar sub-ronda', 'abrir sub-coordinadora', 'cola de merges', 'coordinacion de sesiones', 'protocolo de coordinadoras', o cuando haya que repartir trabajo de desarrollo entre varias sesiones sin perder control de produccion. No usar para investigacion o analisis: para eso esta loop-investigacion."
---

# Coordinación de desarrollo multi-sesión (v1)

Protocolo para que varias sesiones de agentes desarrollen software sobre un mismo repositorio y una misma producción sin pisarse y sin que nadie, salvo una, toque producción. Es agnóstico de proyecto: no supone nombres, rutas, herramientas de deploy ni base de datos. Lo específico de cada proyecto (comandos de build, gates de CI, cómo se aplican flags) va en un documento del repo que este protocolo cita y no reemplaza.

Comparte con `loop-investigacion` el método de decisiones (`decisiones-html`), las clases de evidencia y la idea de que un control que se autoevalúa no es un control. Se diferencia en lo esencial: el loop es solo lectura y produce conocimiento; esto produce código, PRs y SQL, y por eso sus reglas son de escritura.

## 1. Roles

**1A** es la persona dueña del proyecto. Solo vota. Habla exclusivamente con la coordinadora general; si le escribe directo a otra sesión, esa sesión responde "comunicalo a la coordinadora general" y le avisa a ella.

**Coordinadora general.** Una sola sesión, de larga duración. Es la única dueña de producción: mergea a `main`, verifica cada deploy, aplica SQL a producción, enciende y apaga flags, emite credenciales. Reparte el trabajo, fija el orden de la cola de merges, consolida el ledger y los HTML de decisión que llegan al 1A, y retransmite las respuestas del 1A a quien las pidió. No hace trabajo de fondo que pueda delegar.

**Sub-coordinadoras.** Una por tema, permanentes mientras el tema viva. Cada una es dueña de sus ramas y de su Libro de laudos. Lanzan sub-rondas dentro de su tema, revisan, elevan. Modelo **radial**: cada sub-coordinadora habla solo con la coordinadora general; no se escriben entre sí ni se dejan archivos en las carpetas de las otras. Lo que una necesita de otra lo pide a la general, que pregunta, obtiene y retransmite con código de consulta.

**Sesiones dedicadas (sub-rondas, SR).** Hacen una cosa y cierran. Corren en un worktree aislado creado desde `origin/main`, con prompt de arranque completo, en una terminal y no en la app de chat. Producen PRs sin merge, documentos, HTML de decisión y borradores; nunca mergean, nunca aplican SQL, nunca encienden flags, nunca envían nada en nombre del 1A.

Qué no se separa de la coordinadora general: lo que es cerebro compartido entre temas (el motor de decisión del producto, la parametría central), lo que es gobierno y finanzas, y cualquier feature transversal, hasta que el volumen justifique una sub-coordinadora propia.

## 2. Reglas duras

**Regla 1 — Una sola dueña de producción.** Solo la coordinadora general mergea (`--squash`, con los gates del repo), verifica el deploy después de **cada** merge (sha completo y estado `success`, no "mergeable"), aplica SQL (validado antes con `BEGIN … ROLLBACK`), enciende o apaga flags (con actor y motivo registrados) y emite credenciales. Excepción única y explícita: una sub-coordinadora puede aplicar **sus** SQL y encender **sus** flags cuando el 1A lo votó y la general le dio el turno ("te toca #N"); lo informa con commit y verificaciones.

**Regla 2 — Sesiones dedicadas solo en terminal.** Toda sub-ronda se lanza con el lanzador del proyecto (worktree aislado desde `origin/main`, prompt como argumento, contrato de cierre inyectado, canal por archivo). Prohibido abrir sesiones nuevas en la app de chat para ese trabajo o delegarlo por mensaje a una sesión de la app. En la app quedan solo las coordinadoras que abre el 1A.

**Regla 3 — Prohibiciones de toda sesión que no sea la general.** Nunca `--force`, nunca `--no-verify`, nunca push a `main`, nunca tocar la configuración global del agente (`CLAUDE.md`, `~/.claude/`), tareas programadas ni conectores.

**Regla 4 — Anti lavado de permisos.** Si a una sesión le falta un permiso, un secreto o una decisión, lo dice. No le pide a otra sesión que lo haga por ella ni acepta hacerlo por otra.

**Regla 5 — Flags nacen apagados.** Toda funcionalidad nueva entra detrás de un flag en `false`. Encenderlo es una decisión del 1A ejecutada por la coordinadora general (o por la sub-coordinadora con turno). Un SQL que crea un flag encendido se rechaza (hook D3).

**Regla 6 — Un hallazgo que toca producción se declara antes de ejecutar nada.** A la coordinadora general, con hechos verificables: sha, hora, flag, fila.

**Regla 7 — Lo que está fuera del tema se eleva, no se arregla.** Una sub-coordinadora que encuentra un problema ajeno a su alcance lo escribe en su reporte a la general y sigue con lo suyo.

## 3. Ciclo de una sub-ronda

1. **Nacimiento.** La coordinadora (general o sub) crea la carpeta canónica de la ronda: `originales/` (lo que recibe), `entregables/`, `soporte/`, `outputs/`, `Viejos/`. Escribe el prompt de arranque con los votos verbatim que la ronda ejecuta y el alcance declarado. Lanza con el lanzador del proyecto. Corre el hook D1 antes de que la sesión toque nada.
2. **Trabajo.** La sesión trabaja sobre su worktree. Toda lectura de producción va en `BEGIN READ ONLY`. Todo SQL que proponga queda en `outputs/sql/` con su ensayo registrado (`BEGIN … ROLLBACK` contra la base real, salida guardada). Todo flag nuevo queda declarado en `outputs/FLAGS.md` con su valor inicial `false`.
3. **PR.** Antes de pedir turno: `git fetch`, re-merge de `origin/main` en el worktree con dependencias reales (nunca symlinks), conflictos resueltos y **declarados** (archivo, qué lado, por qué), artefactos regenerados si el proyecto lo exige (bundles, mapas de código) como último paso, lint y build en cero, gates locales del repo, push, CI completo verde. Aviso "listo #N" con sha y conflictos.
4. **Decisiones.** Lo que requiere criterio del 1A se eleva por HTML canónico (`decisiones-html`): códigos estables, semáforo, "Generado por: <sesión>". Se entrega donde el 1A vota y con copia en `soporte/`. Los votos se ejecutan solo sobre la línea directa del 1A con la sesión dueña del HTML; si el 1A vota en otra sesión, ésta releva verbatim y la dueña pide confirmación antes de ejecutar lo que toca código, cerebro o producción.
5. **Reporte.** Al cierre de cada hito: qué se hizo, PR, decisiones abiertas, qué documentación canónica se usó. Va a la coordinadora por archivo (`outputs/PARA-COORDINADORA.md`) y aviso.
6. **Cierre.** Precondición: los compromisos que dejó (decisiones laudadas, planes aprobados) están en el ledger con ejecución lanzada o entrada `NO EJECUTADO` con dueño y próximo paso. Último acto: `outputs/CIERRE.flag`. Si la sesión no terminó, el flag no existe; su ausencia es información. La carpeta pasa a "Rondas Terminadas".

## 4. Cola de merges

1. La coordinadora general fija el orden por dependencias reales, SQL y riesgo, y lo asienta en el ledger.
2. Cada sesión, en su turno, hace el paso 3 del ciclo y avisa "listo #N".
3. La general mergea, monitorea el deploy y, con producción en `success`, aplica el SQL del PR (o autoriza a la sub-coordinadora con turno) y avisa "deploy READY #N" / "te toca #N+1".
4. **Un deploy verificado por merge.** Un PR viejo puede chocar con un gate nuevo de `main` aunque sea mergeable.
5. Al final de la cola: ledger con evidencia (sha por PR, SQL aplicados, flags), backup si corresponde, smoke de producción.

Qué haría cambiar esto: que dos sesiones necesiten mergear en paralelo con frecuencia, o que la general sea cuello de botella medible (turnos de más de 30 minutos entre "listo" y merge). Entonces se evalúa un segundo carril **solo para docs**, nunca para código ni SQL.

## 5. Validación de lo que generan los agentes

El contenido producido en masa por agentes (cabeceras, catálogos, mapeos, documentación regenerada, datos derivados) se valida con verificación **total** adversarial, no muestral. El muestreo sirve para que un humano se haga una idea; el gate cubre el 100 % de las piezas. Tres anillos:

- **Anillo 1 — Generación.** La sub-ronda produce con reglas de honestidad locales: ante duda no escribir (mejor faltante que alucinado); toda afirmación con evidencia `archivo:línea`.
- **Anillo 2 — Adversarial con comprobación fáctica.** Sesión independiente cuyo sesgo declarado es encontrar errores. Re-deriva cada pieza a ciegas y recién después compara: COINCIDE / DISCREPA (con evidencia refutatoria y versión correcta) / DUDOSO. Corre de verdad las suites y builds, rompe a propósito los guards para probar que muerden (mutantes), reproduce números documentados. DISCREPA se corrige; DUDOSO se quita. Itera hasta 100 % COINCIDE.
- **Anillo 3 — Sesión virgen.** Sesión nueva sin historia en el prompt (ni rondas, ni laudos, ni autores): solo la tarea y la lista de piezas. Solo lectura estricta, evidencia obligatoria por veredicto. Si encuentra algo, vuelve al anillo 2.

El dictamen fáctico reemplaza la revisión a ojo del 1A: no se le presenta para votar lo que no está en condiciones de juzgar; se le informa el resultado. Los gates que sí son suyos (mergear, aprobar alcances, decidir negocio) siguen yendo por HTML.

## 6. Registros

- **Libro de laudos** de cada sesión: fecha, verbatim del 1A, estado de ejecución.
- **Ledger de compromisos**, escrito solo por la coordinadora general, con vocabulario fijo: EJECUTADO / EN CURSO / NO EJECUTADO / SUPERSEDIDO / EXTERNO.
- **Libro de auditorías**: una fila por funcionalidad con última auditoría, ronda, veredicto (APTO / APTO_CON_OBS / HALLAZGOS_CRITICOS / NO_APTO / NUNCA_AUDITADA), si hubo modificaciones posteriores y prioridad siguiente. Toda ronda que audite una funcionalidad lo actualiza al cerrar. Se prioriza lo nunca auditado y lo modificado después de auditar; lo auditado sin cambios no se re-audita, solo se verifica su cierre.
- **Documentación canónica del repo** (el "cerebro"): lo que las sesiones leen antes de tocar código y corrigen cuando la realidad la contradice, en el mismo PR.

## 7. Hooks deterministas (D1–D5)

Como en el loop: chequeos mecánicos que corren fuera del modelo. La coordinadora los ejecuta con la terminal y copia su salida a `control/hooks.log` de la ronda. Un hook que no existe se declara pendiente; no se simula. Contratos:

- **D1 — Arranque limpio.** Antes de que la sesión toque nada: el worktree no tiene cambios sin commitear, la rama no es `main`, y `HEAD` desciende de `origin/main` recién traído. Falla si cualquiera no se cumple.
- **D2 — SQL ensayado.** Al pedir turno: cada `outputs/sql/*.sql` tiene su `.ensayo.log` hermano que contiene `BEGIN` y `ROLLBACK` y no contiene `ERROR`. Falla si falta el ensayo o el ensayo falló.
- **D3 — Flags nacen apagados.** Al pedir turno: en `outputs/sql/*.sql` no hay ningún alta de flag/setting con valor verdadero, salvo que el flag esté listado en `outputs/FLAGS-ENCENDER-AUTORIZADO.md` con el código del voto. Falla si encuentra uno.
- **D4 — PR sin merge y sin fuerza.** Al pedir turno: la rama no es `main`; si hay `gh`, el PR de la rama está `OPEN` y no `MERGED`; el reflog del worktree no registra `push --force` ni `--no-verify`. Falla si cualquiera no se cumple.
- **D5 — Cierre íntegro.** Al escribir `CIERRE.flag`: existe `outputs/PARA-COORDINADORA.md`; si en `outputs/` hay HTML de decisiones, existe el Libro de laudos con al menos una entrada de esta ronda; `CIERRE.flag` es el archivo más nuevo de `outputs/`. Falla si cualquiera no se cumple.

## 8. Prohibiciones (resumen)

- Ninguna sesión que no sea la general mergea, aplica SQL, enciende flags, emite credenciales, envía mails o mensajes en nombre del 1A.
- Ninguna sub-coordinadora habla con otra sub-coordinadora ni con el 1A.
- Ningún flag nace encendido. Ningún SQL sin ensayo. Ningún PR sin CI completo verde.
- Ningún cierre sin `CIERRE.flag`, y ningún `CIERRE.flag` con compromisos fuera del ledger.
- Ningún contenido generado en masa llega a `main` con validación muestral.
- Ningún hook se da por aprobado sin la salida de su script.
