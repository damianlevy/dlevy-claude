---
name: decisiones-html
description: "Genera un documento HTML autosuficiente de decisiones con semaforo, votacion por bloque y recoleccion de respuestas, para elevar decisiones al dueno del proyecto. Usar al cerrar cualquier trabajo, ronda de analisis o investigacion que tenga varias decisiones, hallazgos a confirmar u opciones de camino; cuando el usuario diga 'armame el HTML de decisiones', 'elevame esto para decidir', 'metodo canonico', 'documento de votacion'; y como entrega final de una ronda del skill loop-investigacion. No usar para una unica pregunta trivial: para eso alcanza el chat, con el mismo estandar de contenido."
---

# Método canónico de decisiones por HTML

Método de comunicación entre una sesión coordinadora (y sus equipos) y la persona dueña del proyecto, para toda decisión, opinión o cierre de tema.

Reemplaza a la pregunta suelta en el chat: en lugar de contestar preguntas una por una, la persona recibe **un** documento HTML autosuficiente que abre en el navegador, con los temas numerados, cada uno con todo el contexto necesario para decidir sin tener que preguntar qué significa, y con botones de votación y cajas de texto para opinar.

El objetivo es doble: que decidir sea **trivial de operar** (clics y notas) y **perfecto de información** (nada implícito, nada que obligue a confiar a ciegas o a abrir otro documento para entender).

## Prerrequisito duro

**Agotar la investigación antes de preguntar.** Buscar en los archivos del proyecto, en lo ya conversado, en las fuentes disponibles. A la persona llega **solo lo irreducible**: lo que de verdad requiere su criterio, su gusto o su contexto. Lo que el equipo pudo resolver solo se informa como bloque verde.

Está prohibido usar el HTML para delegar trabajo de investigación que la coordinadora podía hacer.

## Nombre de la persona

El documento se dirige a alguien por su nombre. Si no lo sabés, preguntalo una sola vez al empezar y usalo en todo el documento. No dejes marcadores de posición sin reemplazar.

---

## Estructura de cada bloque

Un bloque = una decisión. Cada uno lleva un código corto y estable (DEC-1, DEC-2… o por tema: A1, B2…). **El código nunca cambia entre versiones**: DEC-3 es DEC-3 para siempre, así se puede responder "DEC-3: dale" sin repetir de qué se trata.

Cada bloque contiene, en este orden, siempre:

### 1. El problema / la situación

Explicado de manera autosuficiente: qué está pasando, dónde, desde cuándo, a quién afecta, y por qué requiere decisión. Lenguaje claro, cero jerga sin explicar, cero referencias que obliguen a abrir otro documento.

### 2. Los argumentos, en dos planos rotulados

- **Opinión / razonamiento del equipo** — lo que la coordinadora piensa y por qué.
- **Evidencia observada** — datos concretos, números verificados, casos reales, fuentes consultadas.

Cada pieza de evidencia lleva su clase: **NORMA** (texto normativo con artículo), **DATO** (verificable, con fuente y fecha de corte), **INFERENCIA** (conclusión del equipo, no verificada), **SUPUESTO** (asumido sin verificar). Si un argumento es teórico, se dice que es teórico. **Jamás se disfraza una opinión de evidencia.**

### 3. Las opciones posibles

Enumeradas (A, B, C…), cada una con pros y contras explícitos. En los bloques rojos son obligatorias al menos **dos**; en los amarillos, bienvenidas cuando existen alternativas reales.

### 4. La sugerencia

La recomendación concreta y **única** a la que llegó la coordinadora, con el porqué en una o dos frases. Nunca un bloque sin inclinación declarada: presentar opciones sin recomendar es tirarle el trabajo a la persona.

### 5. Qué me haría cambiar de opinión

Una línea que declara qué evidencia o qué hecho llevaría a la coordinadora a recomendar otra cosa. Es el reverso de la sugerencia: sin esto, la recomendación no es falsable y la persona no tiene con qué evaluarla. Si no se puede escribir, la recomendación probablemente no está fundada.

### 6. Costo de no decidir

Qué pasa si esto queda sin resolver, y hasta cuándo se puede esperar sin costo. **"No decidir" siempre es una opción disponible**, y hay que decir cuánto cuesta. Sin este campo todo parece igual de urgente y la persona no puede priorizar.

### 7. La votación

Botones **APROBAR / APROBAR CON CONDICIÓN / REVISAR / RECHAZAR**. Las últimas tres despliegan una caja de texto para opinar, corregir, pedir más análisis o proponer una idea propia. El estado elegido queda visible en el bloque.

*Aprobar con condición* existe porque es la respuesta ejecutiva más frecuente ("dale, pero solo si X") y sin ella ese sí se pierde dentro de un "revisar".

---

## Los dos ejes: semáforo y consecuencia

Son independientes y ambos tienen que estar. El color dice **cuánta certeza hay**; la marca de consecuencia dice **cuánto duele equivocarse**. Un tema puede ser de altísima certeza y a la vez irreversible: eso no se aprueba de un clic.

### Semáforo — el color es un mensaje, no decoración

**VERDE — confirmación prácticamente simple.**
Mensaje implícito: *"Estoy segura de que esto es lo que hay que hacer. Te lo informo y, si querés, sumás alguna mejora."* Temas resueltos con certeza, o ya decididos y que solo se transparentan. Se aprueba en un clic; la caja de texto sirve para mejoras opcionales.

**AMARILLO — recomendación firme que pide una mirada.**
Mensaje implícito: *"Fue un tema trabajado y hubo alternativas reales. Tenemos alto nivel de seguridad de que lo recomendado es lo mejor, pero tu mirada puede detectar algo que no vemos."* Se muestran las opciones consideradas y por qué ganó la recomendada.

**ROJO — tema complejo; la opinión de la persona es necesaria.**
Mensaje implícito: *"Estamos seguros de nuestra recomendación — si no lo estuviéramos, seguiríamos investigando antes de traerla. Pero este es de los temas más difíciles que tratamos: hubo idas y vueltas, opiniones divergentes, varias iteraciones. No podemos descartar que estemos cometiendo un error que no vemos, y por eso necesitamos tu opinión, aunque sea para mandarnos a investigar otro camino."* Siempre con al menos dos opciones con pros y contras, la inclinación declarada, y el relato honesto de dónde se trabó el debate.

**Regla de coherencia:** el color lo fija la **historia real** del tema — cuánto se discutió, cuánta divergencia hubo —, no las ganas de cerrar. Pintar de verde un tema discutido es falsificar el mensaje.

### Marca de consecuencia

Independiente del color, cada bloque lleva una de estas:

- **REVERSIBLE** — si sale mal, se deshace sin costo relevante.
- **COSTOSO DE REVERTIR** — se puede deshacer, pero cuesta plata, tiempo o relaciones. Decir cuánto.
- **IRREVERSIBLE** — no se vuelve atrás. Compromete dinero, reputación, datos o vínculos de forma definitiva.

Un bloque **verde + irreversible** es legítimo, pero el documento tiene que mostrarlo de modo que no se apruebe por inercia: la marca va junto al color, no escondida en el texto.

---

## El circuito tiene varias rondas

El HTML no es un formulario de una sola pasada: es un **canal**. En las cajas de texto la persona puede pedir un análisis extra ("mostrame cómo queda por mes"), pedir información adicional, o proponer una hipótesis propia ("¿y si lo resolvemos con X?").

Cuando eso pasa, la coordinadora **no cierra el tema**: ejecuta lo pedido y devuelve una nueva versión del documento (v2, v3…) donde:

- los códigos de bloque **se mantienen estables**;
- los bloques ya aprobados quedan marcados como cerrados (visibles, no re-votables);
- los bloques respondidos incorporan la respuesta al pedido — nuevo análisis, nueva evidencia, evaluación de la hipótesis propuesta — y se re-presentan a votación;
- **los bloques aprobados en la versión anterior muestran su estado de ejecución**: hecho, en curso, o bloqueado y por qué.

Ese último punto cierra el ciclo. Sin él, el método registra decisiones pero nunca confirma que lo decidido efectivamente pasó, que es donde se pierde el valor de haber decidido bien.

El circuito itera hasta que todos los bloques quedan aprobados o la persona define el cierre.

---

## Cierre del documento (mecánica de respuesta)

Al final del HTML va un botón que recolecta **todas** las respuestas y comentarios y arma un texto listo para copiar y pegar, con una línea por bloque:

```
RESPUESTAS <trabajo> <version> (<fecha y hora>):
DEC-1: APROBAR
DEC-2: APROBAR CON CONDICION - <nota>
DEC-3: REVISAR - <nota>
DEC-4: RECHAZAR - <nota>
```

### Lecciones técnicas obligatorias

**Portapapeles en archivos locales.** Cuando el HTML se abre como archivo local (`file://`), el navegador bloquea el portapapeles moderno (`navigator.clipboard`). El botón **debe**: (1) intentar `document.execCommand('copy')` sobre un textarea seleccionado; (2) **siempre** mostrar un panel `<textarea>` visible con el texto recolectado, para copiar a mano como último recurso; (3) jamás depender solo de `navigator.clipboard`.

**Estado de los votos.** Guardarlos en una variable de JavaScript en memoria **y** en `localStorage` (con `try/catch`, porque en `file://` puede fallar). El botón recolector lee primero la memoria y usa `localStorage` solo como respaldo, así funciona aunque el almacenamiento esté bloqueado.

---

## Verificación funcional obligatoria

Antes de decir "abrí el documento", comprobar con una prueba **real**, no a ojo. Un HTML muerto — lindo pero sin funcionar — entregado a la dueña del proyecto es una falta grave.

Checklist, todo tiene que pasar:

1. Los cuatro botones de votación existen y responden en **cada** bloque.
2. Las cajas de texto se despliegan y su contenido se retiene.
3. El botón recolector arma el texto completo, con todos los bloques votados.
4. El textarea de respaldo aparece **aunque el copiado automático haya funcionado**.
5. El archivo abre sin conexión a internet: ninguna dependencia externa.
6. Los códigos de bloque son visibles y coinciden con los de la versión anterior.
7. Cada bloque muestra su color y su marca de consecuencia.
8. Imprimir a PDF conserva el contenido y los votos emitidos.

Si hay Node disponible, simular un voto y una recolección de forma automatizada (por ejemplo con jsdom) y verificar que el texto final sale bien armado.

---

## Estética, idioma e identidad

- **Un solo archivo HTML autosuficiente**, sin dependencias de internet: si no hay conexión, igual funciona.
- Legible y sobrio: título claro, bloque de introducción que diga qué es y cómo se vota, bloques bien separados con su color, tipografía del sistema.
- **Encabezado con identidad estable**: nombre del trabajo, número de versión, fecha y hora, y de qué ronda o proceso proviene. Sin esto, dos versiones del mismo documento son indistinguibles a los tres meses.
- **Sesión generadora SIEMPRE identificada** (regla del dueño, 14-08-2026): debajo del título principal, una línea que diga QUÉ SESIÓN generó el HTML (por ejemplo: «Generado por: coordinadora dc+ (Air) — sesión Matriz Productos», o el nombre de la ronda/terminal). Sin esto, con varias sesiones activas es confuso saber a quién responder ni dónde pegar las respuestas.
- Español correcto con tildes: es texto para leer, no código.
- Códigos de bloque siempre visibles.
- Guardar donde la persona lo encuentre (por ejemplo, el Escritorio) con nombre claro: `DECISIONES-<trabajo>-<version>-<fecha>.html`, y abrirlo en el navegador.

## Alcance

Aplica a **todo** cierre de trabajo, ronda de análisis o definición que se eleva a la persona dueña del proyecto, no solo a "preguntas".

El mismo estándar — problema autosuficiente, argumentos en dos planos, opciones, sugerencia única, qué haría cambiar de opinión, costo de no decidir, semáforo honesto y marca de consecuencia — rige **también** para cómo se presentan decisiones en el chat cuando el volumen no justifica un HTML: una o dos decisiones simples, mismo formato, en texto.

---

*Metodología desarrollada y probada en proyectos propios (2026), en versión generalista: sirve para cualquier proyecto y cualquier dueño o dueña de proyecto.*
