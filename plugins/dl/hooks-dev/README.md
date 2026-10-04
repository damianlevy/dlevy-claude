# Hooks D1–D5 — coordinacion-desarrollo

Cinco chequeos mecanicos para sub-rondas de desarrollo, mas un runner. Bash puro, git; `gh` opcional.
La coordinadora los ejecuta con la terminal y copia la salida a `control/hooks.log` de la ronda.

    verify-dev.sh <ronda> arranque <worktree>   # D1 antes de que la sesion toque nada
    verify-dev.sh <ronda> turno    <worktree>   # D2 + D3 + D4 antes de avisar "listo #N"
    verify-dev.sh <ronda> cierre                # D5 al escribir outputs/CIERRE.flag

Codigo de salida 0 = aprobado. La coordinadora no interpreta: copia.

D1 — Arranque limpio. Arbol sin cambios, rama distinta de main, HEAD desciende de origin/main recien traido.

D2 — SQL ensayado. Cada `outputs/sql/X.sql` tiene `outputs/sql/X.ensayo.log` con BEGIN y ROLLBACK y sin ERROR.
La sesion genera el log ejecutando el ensayo contra la base real y guardando la salida.

D3 — Flags nacen apagados. Ninguna linea de `outputs/sql/*.sql` da de alta un flag/setting
(`*_habilitado`, `*_enabled`, `*flag*`, `*feature*`) con valor verdadero, salvo que el flag figure en
`outputs/FLAGS-ENCENDER-AUTORIZADO.md` con el codigo del voto del 1A.

D4 — PR sin merge y sin fuerza. Rama distinta de main; con `gh`, el PR de la rama esta OPEN (falla si MERGED);
el reflog no registra force ni no-verify; si existe `outputs/COMANDOS.log`, no contiene push --force,
--no-verify ni push a main.

D5 — Cierre integro. Existe `outputs/PARA-COORDINADORA.md`; si hay HTML en `outputs/`, existe un
`LIBRO-DE-LAUDOS*.md` con contenido; `CIERRE.flag` es el archivo mas nuevo de `outputs/`.

Prueba: `./test-dev.sh` (12 casos, limpios y que deben fallar).
