# dlevy — marketplace de métodos

Marketplace de Claude Code con métodos de trabajo para agentes.

## Instalación

```
/plugin marketplace add <tu-usuario>/dlevy-claude
/plugin install metodo-1a@dlevy
```

## Plugins

### metodo-1a

Dos piezas que funcionan juntas o por separado:

- **`loop-investigacion`** — protocolo de investigación multi-agente. Normaliza
  un encargo escrito en lenguaje corriente, corre dos equipos ciegos en
  paralelo, los cruza de forma adversarial con criterio de convergencia
  explícito, arbitra lo irreducible, y entrega en HTML. Solo lectura por
  defecto: una ronda produce conocimiento, no efectos.

- **`decisiones-html`** — método canónico de decisiones. Un HTML autosuficiente
  con semáforo de certeza, marca de consecuencia (reversible / costoso de
  revertir / irreversible), votación por bloque y recolección de respuestas.

El loop entrega por el HTML. El HTML sirve para cerrar cualquier trabajo, venga
o no de una ronda.

## Qué hacen con tus archivos

Ambos skills son de solo lectura por defecto. El único lugar donde escriben es
la carpeta de trabajo de la ronda y sus entregables. No publican código, no
escriben en bases de datos, no envían mensajes y no tocan credenciales, salvo
autorización explícita escrita por el usuario.

## Licencia

MIT.
