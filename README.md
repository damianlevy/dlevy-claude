# dlevy — marketplace de métodos

Métodos de trabajo para agentes, con marketplace de Claude Code y edición de dl:loop para ChatGPT y Codex.

## dl:loop para Codex y ChatGPT

La [edición OpenAI 1.0.3](distributions/openai/dl-loop/README.md) incluye instrucciones de instalación en Codex, el protocolo y la adaptación, licencia MIT, privacidad y condiciones de uso. [Descargar ZIP 1.0.3](https://github.com/damianlevy/dlevy-claude/raw/refs/heads/main/distributions/openai/dl-loop-1.0.3.zip).

Para compartirla: https://github.com/damianlevy/dlevy-claude/tree/main/distributions/openai/dl-loop

Esta edición tiene su propio versionado; el plugin de Claude Code se instala con los comandos siguientes.

## Instalación en Claude Code

    claude plugin marketplace add damianlevy/dlevy-claude
    claude plugin install dl@dlevy

## Plugins

### dl

- **`dl:loop`** — protocolo de investigación profunda y comunicación de decisiones. Equipos
  independientes, generación ciega en paralelo, cruce adversarial, pre-registro de falsación,
  instancia arbitral acotada y entrega única para decidir. Se dispara escribiendo `dl:loop`.
- **`decisiones-html`** — el HTML canónico de decisiones (`/dl:decisiones`).
- **`coordinacion-desarrollo`** — desarrollo con varias sesiones de agentes (hooks D1–D5,
  `/dl:subronda`).

### de-loop (deprecado)

Desde dl 1.1.0 su contenido vive en `dl`. Se conserva en el repo solo por compatibilidad;
no hace falta instalarlo.

## Licencia

MIT.
