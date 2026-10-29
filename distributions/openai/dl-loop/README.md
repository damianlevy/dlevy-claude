# dl:loop para ChatGPT y Codex

**Edición pública: 1.0.3 · Protocolo: 1.0 · Autor: Damian Levy · Licencia: MIT**

Método de investigación y comunicación de decisiones: encuadrar la pregunta, distinguir evidencia de supuestos, contrastar alternativas, registrar desacuerdos y preparar decisiones verificables. Se adapta a las herramientas disponibles. Una ronda completa requiere subagentes reales; si no existen, debe declarar sus límites y utilizar una modalidad reducida.

## Instalar en Codex

Copiá este pedido en tu Codex:

> Usá $skill-installer para instalar la skill dl-loop desde https://github.com/damianlevy/dlevy-claude/tree/main/distributions/openai/dl-loop/skills/dl-loop. Si ya tengo una skill dl-loop instalada, compará primero y pedime autorización antes de reemplazarla. No modifiques mis otras skills ni mi AGENTS.md.

Después de instalar, reiniciá Codex si la skill todavía no aparece y escribí, por ejemplo:

> $dl-loop Compará las alternativas de mi proyecto y prepará las decisiones con evidencia.

También podés descargar el [ZIP 1.0.3](https://github.com/damianlevy/dlevy-claude/raw/refs/heads/main/distributions/openai/dl-loop-1.0.3.zip), descomprimirlo y copiar la carpeta `skills/dl-loop` completa a `~/.agents/skills/dl-loop`. Conservá sus referencias, licencia y políticas. Si ya existe una instalación, comparala antes de sustituirla.

La instalación por carpeta requiere un entorno Codex con acceso al sistema de archivos. Este enlace no es un instalador universal de ChatGPT: la disponibilidad de skills en ChatGPT depende de las funciones habilitadas en la cuenta. La distribución en GitHub no implica aprobación ni presencia en el directorio de OpenAI.

## Qué incluye

- Una skill con adaptación operativa para ChatGPT y Codex y sus referencias completas.
- El protocolo Markdown con las listas numeradas desde 1 en cada bloque.
- El PDF original del protocolo 1.0, sin modificaciones.
- Manifiesto de plugin compatible, icono, licencia MIT, privacidad y condiciones de uso.

No incluye servidor MCP, hooks, credenciales, telemetría, monitoreo permanente ni ejecución automática de decisiones. Las herramientas del entorno conservan sus permisos. Instalar la skill no inicia una ronda.

## Licencia, privacidad y condiciones

- [Licencia MIT](LICENSE): permite también modificación y redistribución comercial, conservando el aviso y la licencia.
- [Política de privacidad](PRIVACY.md).
- [Condiciones de uso](TERMS.md).
- [Consultas del proyecto](https://github.com/damianlevy/dlevy-claude/issues): no publiques información privada ni credenciales.

## Versiones y procedencia

Esta es la edición OpenAI **1.0.3**; su manifiesto, skill y adaptación identifican esa misma edición. El protocolo fuente conserva el número **1.0** porque su método no cambia. La edición para Claude Code tiene su propio versionado y continúa disponible en `plugins/dl`.

La base de esta edición es el paquete OpenAI 1.0.2. El texto fuente `plugins/dl/skills/loop/SKILL.md` del repositorio tiene SHA-256 `1fd75539827cfb0c7ba8fec07ee2e710d7d9a20036b4bc35ac3cf0024c39897a`. La copia Markdown elimina el frontmatter de esa skill y corrige exclusivamente la numeración de listas. El PDF original tiene SHA-256 `7c329f78b4fd80088b9074527b57d6878c3f88823505500f4001feaa546894ed`.

Ver [cambios de la edición pública](CHANGELOG.md) y [huellas de los archivos](SHA256SUMS.txt).

## Paquete para el portal OpenAI

El ZIP usa el manifiesto de compatibilidad `.codex-plugin/plugin.json`, con `skills: ./skills/`, y declara la URL pública de condiciones de uso. Se puede cargar como revisión del paquete existente. La carga y los controles del portal no equivalen a aprobación ni publicación. La admisión de nuevos plugins compuestos solo por skills depende de OpenAI.
