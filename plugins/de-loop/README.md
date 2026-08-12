# Método 1A

Dos piezas que funcionan juntas o por separado:

- **`loop-investigacion`** — protocolo de investigación multi-agente con equipos
  ciegos y adversariales, pre-registro de falsación, arbitraje acotado y
  verificación determinista.
- **`decisiones-html`** — método canónico de decisiones: un HTML autosuficiente
  con semáforo, marca de consecuencia y votación por bloque.

El loop entrega por el HTML. El HTML sirve para cerrar cualquier trabajo,
venga o no de una ronda.

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

## Licencia

MIT.
