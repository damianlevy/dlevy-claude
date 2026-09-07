# DC:LOOP hooks H1–H5

Cinco chequeos mecanicos que corren fuera del modelo, mas un runner. Son los
hooks que el protocolo v8 declara en Control de ejecucion. Bash puro, sin
dependencias: funcionan en macOS y Linux.

## Instalacion

Copiar la carpeta `hooks/` a un lugar fijo, por ejemplo dentro del plugin:

    cp -r hooks ~/.claude/de-loop/hooks
    chmod +x ~/.claude/de-loop/hooks/*.sh

Y declarar la ruta al pie del prompt, en RESTRICCIONES Y SALVAGUARDAS:

    Hooks: ~/.claude/de-loop/hooks/verify.sh

Si no se declara, 1A busca `hooks/` junto a los insumos o en la carpeta de la
ronda. Si no encuentra nada, declara control pendiente y no simula.

## Como los invoca 1A

Un solo punto de entrada, `verify.sh`, que corre el hook que corresponde al
momento y agrega la salida completa a `control/hooks.log`:

    verify.sh <ronda> fase1                       # H1 sella los pre-registros
    verify.sh <ronda> pre-B                       # H2 antes de lanzar B en fase 2
    verify.sh <ronda> informe <archivo.md> [...]  # H3 + H4 sobre cada informe o sesion
    verify.sh <ronda> fase3                       # H1 verifica que nadie edito su pre-registro
    verify.sh <ronda> fase7                       # H5 antes de emitir el HTML

Codigo de salida 0 = aprobado, distinto de 0 = fallado. 1A no interpreta: copia.

## Que verifica cada uno

H1 — Sellado del pre-registro. `seal` guarda sha256 de cada archivo de
`10-preregistro/` en `control/h1.sha`. `verify` recalcula: cualquier
diferencia, archivo faltante o agregado marca la ronda CONTAMINADA.

H2 — Aislamiento de B. Antes de lanzar B: `20-B/` no contiene ningun archivo
con el mismo nombre o el mismo hash que `20-A/`, ningun archivo de B menciona
"Equipo A", "informe de A", "conclusion de A" ni la ruta `20-A/`, y no esta el
pre-registro de A.

H3 — Etiquetado de evidencia. Toda linea de contenido del informe empieza con
`[NORMA`, `[DATO`, `[INFERENCIA`, `[SUPUESTO` o `[RESTRICCION`. Se exceptuan
titulos, tablas, separadores, citas, bloques de codigo, comentarios y lineas
que terminan en `:` (introducen una lista). Una vineta cuenta como contenido:
lleva etiqueta despues del guion.

H4 — Fuentes declaradas. Toda etiqueta `[DATO ...]` y `[NORMA ...]` cita un
id `Dn`, y ese id existe en el campo D de `00-encuadre/*.md` (lineas que
empiezan con `Dn`, con o sin vineta).

H5 — Integridad del cierre. Cada ficha de `60-cierre/*.md` tiene los seis
campos (Decision, Alternativas, Evidencia, Disenso residual, Condiciones de
revision, Confianza) y la confianza es alta/media/baja. El HTML de
`70-entrega/` tiene las ocho secciones. Si `hooks.log` registra algun
PENDIENTE o FALLADO, el HTML no puede tener ningun elemento con clase o
atributo `verde`. Un disenso residual vacio no falla pero emite ALERTA.

## Formato que los hooks esperan

Etiquetas al principio de la afirmacion, fuente por id:

    [DATO D3] La mora a 90 dias fue 4,1% al 31/07/2026.
    [NORMA D1 art. 12] El plazo maximo es de 48 meses.
    [INFERENCIA] La caida de julio responde a estacionalidad.

Campo D de la ficha, un insumo por linea:

    - D1 Base de operaciones 2024-2026, corte 31/07/2026
    - D2 Comunicacion BCRA A 7000

Semaforo en el HTML: `class="verde"`, `class="amarillo"`, `class="rojo"` (o
`data-semaforo="..."`).

## Prueba rapida

    ./test.sh

Arma una ronda simulada, corre los cinco hooks en un caso limpio y en cinco
casos que deben fallar (B contaminado, informe sin etiquetas, fuente no
declarada, pre-registro editado, verde con hooks fallados) y muestra el
resultado.
