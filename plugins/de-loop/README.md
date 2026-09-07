# Método 1A

Dos piezas que funcionan juntas o por separado:

- **`loop-investigacion`** — protocolo de investigación multi-agente con equipos
  ciegos y adversariales, pre-registro de falsación, arbitraje acotado y
  verificación determinista.
- **`decisiones-html`** — método canónico de decisiones: un HTML autosuficiente
  con semáforo, marca de consecuencia y votación por bloque.
- **`hooks/`** — los cinco chequeos deterministas del loop (H1 sellado del
  pre-registro, H2 aislamiento de B, H3 etiquetado de evidencia, H4 fuentes
  declaradas, H5 integridad del cierre) como scripts bash, con runner y test.
  Ver `hooks/README.md`.

## Cómo corre una ronda en la práctica

Modo estándar: una sola sesión de Claude Code. El agente principal es 1A y
lanza a los equipos A, B y C como subagentes con contexto propio; el
aislamiento se garantiza por contexto y por carpeta (`ronda-NN/20-A`,
`20-B`, ...) y se verifica con H2 antes de lanzar B. Modo distribuido
(terminales o máquinas separadas) solo si el usuario lo pide. La carpeta de
la ronda completa, con `control/hooks.log`, es el paquete de auditoría.

El loop entrega por el HTML. El HTML sirve para cerrar cualquier trabajo,
venga o no de una ronda.

## Tres piezas, un método

- **`loop-investigacion`** — investigar: equipos ciegos y adversariales, arbitraje, hooks H1–H5.
- **`coordinacion-desarrollo`** — construir: una sola dueña de producción, sub-coordinadoras
  radiales, sub-rondas en worktrees, PR sin merge, SQL ensayado, flags apagados, hooks D1–D5.
- **`decisiones-html`** — decidir: el HTML canónico por el que el 1A vota, común a los dos.

Comandos: `/ronda` (lanza una ronda de investigación), `/subronda` (prepara una sub-ronda de
desarrollo), `/decisiones` (arma el HTML de decisiones).

## Instalación

**Como skills personales** (una máquina):

    cp -r skills/loop-investigacion ~/.claude/skills/
    cp -r skills/decisiones-html ~/.claude/skills/

**Como plugin** (equipo u organización): publicar este repo como marketplace e
instalarlo desde Claude Code.

## Uso

    /ronda <tu planteo, con tus palabras>
    /decisiones <el trabajo a elevar>

O simplemente describir la tarea: los skills se activan solos cuando aplican.

## Versión

1.2.0 — protocolo v8: modos de ejecución explícitos, paquete de lanzamiento
por equipo, estructura fija de carpeta de ronda, contrato de cada hook y
hooks implementados como código, formato de etiquetado mecánico, sección
"Paquete de auditoría" en la entrega.

## Licencia

MIT.
