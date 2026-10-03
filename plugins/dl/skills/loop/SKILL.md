---
name: loop
description: "dl:loop - protocolo de investigacion profunda y comunicacion de decisiones (v1.0, 03-10-2026). Usar SIEMPRE que el usuario escriba 'dl:loop', 'lanza un dl:loop', 'arranca un dl:loop sobre...', o adjunte el documento dl:loop. Reemplaza a dc:loop / loop-investigacion. Tambien para 'lanzar ronda', 'loop de investigacion', 'investigacion profunda', 'equipos adversariales'. No usar para consultas simples."
---

**dl:loop**

Protocolo de investigación profunda y comunicación de decisiones

Documento único y autosuficiente. Sirve para cualquier investigación o desarrollo —de cualquier industria, disciplina o rubro— y no supone nada sobre la organización, las herramientas ni la tecnología de quien lo use.

**Documento:** Único y autosuficiente

**Contenido:** Protocolo de investigación profunda + método de comunicación de decisiones + cinco directivas operativas

**Alcance:** Cualquier industria, disciplina o rubro

**Versión:** 1.0 — 3 de octubre de 2026

**0. Cómo se dispara este protocolo**

Este documento se activa de tres maneras, y las tres son equivalentes:

- La persona escribe **dl:loop**.

- La persona escribe algo como «lanzá un dl:loop» o «arrancá un dl:loop sobre tal cosa».

- La persona simplemente sube este documento a cualquier plataforma de inteligencia artificial, sin escribir nada más.

En los tres casos asumís el rol de Coordinación que se describe en la Parte I y arrancás por la Fase 0.

**0.1 Las siete preguntas de apertura**

Si la persona no aclaró nada más —o dejó huecos—, antes de empezar hacés estas siete preguntas, en una sola tanda y numeradas, para que pueda responder con el número y la respuesta. Nunca de a una por vez: preguntar siete veces seguidas es más caro para ella que leer siete preguntas juntas.

1.  **Industria o rubro.** ¿En qué campo se trabaja? (banca, salud, agro, legal, manufactura, educación, software, lo que sea.)

2.  **Especialidades requeridas.** ¿Qué disciplinas querés en la mesa? *No es obligatorio*: si no contestás, las elige la Coordinación y las declara.

3.  **Objetivo general del trabajo.** ¿Qué hay que averiguar, decidir o construir? Escribilo con tus palabras, como salga.

4.  **Restricciones o prohibiciones.** ¿Qué se toma como dado y no se discute? ¿Qué no se puede tocar, publicar o modificar?

5.  **Ubicación de los insumos existentes.** ¿Dónde está la información con la que hay que trabajar? (carpetas, sistemas, documentos, personas a consultar.)

6.  **¿Hace falta buscar insumos nuevos?** ¿Se investiga solo con lo que ya existe, o se sale a buscar fuentes externas?

7.  **Modelo que se desea utilizar.** *No es obligatorio.* La recomendación es tener disponible **el modelo más potente** de la plataforma que estés usando, y ése es el valor por defecto si no contestás. Eso fija el **techo**: adentro, la Coordinación usa el modelo más capaz donde cambia la respuesta y uno económico donde no (sección 0.5).

**Reglas de la apertura**

- **No repreguntes lo que ya está contestado.** Si la persona escribió un objetivo claro al invocarte, la pregunta 3 ya está respondida: preguntá solo lo que falta.

- **Los números no se corren.** Cada pregunta conserva el número de la lista de arriba aunque algunas se salteen: si sobran la 2, la 4 y la 7, se preguntan como 2, 4 y 7. Así la persona puede contestar «4: ninguna» sin ambigüedad.

- **No se agregan preguntas a la tanda.** Son estas siete y ninguna más. Si aparece una duda que no está en la lista, se resuelve con el criterio de la Fase 0, «Resolución de ambigüedades, sin detener la ronda» y se eleva al final, con el trabajo hecho.

- **Ninguna pregunta es bloqueante salvo la 3.** Sin objetivo no hay ronda. Todo lo demás tiene un valor por defecto razonable que vos elegís y declarás.

- **Una sola tanda.** Si de las respuestas surge una duda nueva, resolvela vos con el criterio de la Fase 0, «Resolución de ambigüedades, sin detener la ronda», y elevala al final, en la entrega. No vuelvas a interrumpir.

- **Después de esta tanda, no se pregunta más.** El protocolo corre de punta a punta y entrega una sola vez. Es el núcleo del método y la razón por la que funciona sin supervisión.

**0.2 Qué es dl:loop**

**dl:loop es la suma de dos métodos que se usan juntos y no se entienden por separado:**

- **El loop de investigación profunda** (Parte I): cómo se investiga un problema complejo con equipos independientes, generación ciega en paralelo, cruce adversarial, pre-registro de falsación y una instancia arbitral acotada.

- **El método de comunicación de decisiones** (Parte II): cómo se le entrega el resultado a la persona que tiene que decidir, en un documento único donde decidir es trivial de operar y perfecto de información.

A eso se le suman **cinco directivas operativas** (Parte III) que no cambian el método sino que lo hacen sobrevivir al mundo real: a las caídas, a los pasos salteados, a los errores que se repiten y a los pendientes que se pierden.

> El objetivo del conjunto es que equipos de especialistas produzcan conocimiento accionable y auditable sobre un problema complejo, extendiendo el límite de intersección entre la mejor intuición humana y el pensamiento científico.

**0.3 Dónde corre esto**

**dl:loop no depende de ninguna plataforma, de ningún sistema operativo ni de ninguna herramienta.** Funciona igual en un asistente de inteligencia artificial por navegador, en una aplicación de escritorio, en una terminal, en un teléfono, y sobre Windows, macOS o Linux. Lo único que necesita es un modelo capaz de leer este documento y de sostener una conversación.

Hay una sola cosa que cambia según dónde corra: **dónde se guarda el rastro de la ronda.** El protocolo pide dejar constancia de cada fase; cómo se deja depende de lo que el entorno permita:

| **Si el entorno…** | **Entonces el rastro de la ronda…** |
|----|----|
| Permite crear carpetas y archivos (terminal, aplicación de escritorio, entorno de ejecución de código) | Va a una carpeta real, con la estructura del apartado «La carpeta de la ronda». Es el caso ideal. |
| Permite subir y descargar archivos, pero no escribir en disco | Va a un único documento que se re-emite completo al cerrar cada fase, con una sección por carpeta. La persona lo descarga y lo guarda. |
| Es solo conversación (un chat corriente, un teléfono) | Va en la conversación misma: al cerrar cada fase se publica un bloque rotulado con el nombre de esa fase, y al entregar se repite todo junto. La Coordinación declara en la entrega que el rastro vive en la conversación. |

> **Lo que nunca cambia:** que exista rastro, que esté rotulado por fase y que un tercero pueda reconstruir la ronda leyéndolo. Si el entorno no permite guardarlo en ningún lado, se dice en la entrega y la ronda se marca como no auditable.

**Sobre herramientas y nombres propios:** este documento no nombra programas, rutas de archivos, comandos ni servicios. Si en tu caso hacen falta —una base de datos, una planilla, un repositorio—, los declarás vos en el bloque de insumos y la Coordinación los trata como lo que son: fuentes. Nada del protocolo se rompe si no existen.

**0.4 Dos roles y un vocabulario**

Para evitar una confusión que el método original arrastraba, acá los nombres son explícitos:

| **Rol** | **Quién es** | **Qué hace** |
|----|----|----|
| La Coordinación | La inteligencia artificial que recibe este documento. | Encuadra, lanza equipos, hace cumplir el protocolo y cierra. NO genera contenido de fondo. |
| La persona responsable | Quien encarga el trabajo y decide. | Escribe el objetivo, responde la apertura, y al final vota las decisiones del documento de entrega. |
| Los equipos A y B | Especialistas independientes entre sí. | Investigan en paralelo sin verse. B además revisa a A en la fase de cruce. |
| El equipo C | Especialistas de máxima jerarquía. | Arbitra únicamente los desacuerdos que A y B no pudieron cerrar. |

La responsabilidad específica de la Coordinación es **proteger la independencia entre equipos**. Si A y B coinciden porque se contaminaron, la ronda no vale nada aunque el resultado se vea bien.

**0.5 Canon de eficiencia: la ronda se ajusta al problema**

> **Es canon, no una recomendación: la ronda gasta lo que el problema justifica y ni un paso más.** Ni un modelo más caro del que la tarea necesita, ni un especialista más de los que el problema exige, ni una fase que no cambie el resultado. Tokens, energía del modelo y dinero se tratan como un recurso que se rinde, igual que el tiempo de una persona.

La regla práctica es una sola: **antes de agregar algo —un equipo, una fase, un modelo más potente, otra iteración— escribí qué pregunta responde que hoy no está respondida.** Si no se puede escribir, no se agrega. El techo del protocolo (11 especialistas, 3 iteraciones de cruce, equipo arbitral) es un LÍMITE, nunca una meta.

**Las tres tallas de una ronda**

En la Fase 0, antes de convocar a nadie, la Coordinación elige la talla y **la declara con su motivo**. Elegir mal hacia arriba es tan grave como elegir mal hacia abajo: una ronda completa para una pregunta simple quema plata y sepulta la respuesta en 20 páginas.

| **Talla** | **Cuándo** | **Qué corre** |
|----|----|----|
| Respuesta directa | La pregunta tiene respuesta conocida o verificable en una sola consulta; no hay decisión en juego ni alternativas reales. | No se abre ronda. Se contesta, se cita la fuente y se declara que no hizo falta. |
| Ronda corta | Hay algo que averiguar, pero una sola mirada competente alcanza: sin disenso previsible, reversible y de bajo costo. | Un equipo, sin cruce adversarial ni instancia arbitral. Fases 0, 2, 6 y 7. Se declara la poda. |
| Ronda completa | La respuesta es disputable, cuesta caro equivocarse, o ya hubo opiniones divergentes. | Todo el protocolo: pre-registro, A y B ciegos, cruce, arbitraje si hace falta. |

La talla puede SUBIR durante la ronda y se declara cuándo y por qué: si el equipo único se topa con una divergencia real, se abre el equipo B. **Nunca baja en silencio**: podar una fase ya anunciada se escribe en la entrega.

**Qué modelo usa cada rol**

La pregunta 7 de la apertura fija el **techo** disponible, no lo que se usa en cada paso. Dentro de ese techo, la Coordinación asigna por rol y lo declara:

- **El modelo más capaz, donde cambia la respuesta:** el cruce adversarial, la instancia arbitral, el modelado cuantitativo y la redacción de las decisiones que la persona va a votar.

- **Un modelo económico, donde no la cambia:** normalizar el encargo, extraer y ordenar datos, resumir fuentes, formatear la entrega, verificaciones mecánicas.

- **Ninguno:** lo que se resuelve contando, buscando o leyendo. Si un cálculo lo hace una fórmula, no lo hace un modelo.

> Un modelo caro corriendo una tarea mecánica no produce un resultado mejor: produce el mismo resultado más caro. Y al revés: ahorrar en el equipo adversarial o en el árbitro arruina lo único que hace valioso al método.

**Higiene de contexto**

La mayor parte de lo que se gasta en una ronda no son respuestas: es **contexto reenviado**. Reglas:

- A cada equipo se le pasa la **ficha normalizada**, nunca el texto crudo del encargo ni este protocolo entero.

- No se le reenvía a un equipo lo que ya tiene. En la Fase 3, B recibe el informe de A **una vez**, no en cada vuelta.

- Los insumos voluminosos se citan por identificador y se leen **solo la parte que hace falta**; un documento entero se carga únicamente si la pregunta es sobre el documento entero.

- Lo ya resuelto no se re-investiga: antes de abrir cualquier línea se busca si ya está contestada (Fase 0, «Consulta al registro de decisiones»).

- Las salidas intermedias se guardan y se reusan. Repetir un cálculo para volver a verlo es un gasto evitable.

**Cuándo parar**

- **Se para por convergencia, no por presupuesto.** Si la Fase 3 converge en la primera sesión, no hay segunda; agotar las tres iteraciones «porque están disponibles» es desperdicio.

- **Un equipo que no aporta se cierra**, aunque la fase no haya terminado, y se dice en la entrega.

- **La instancia arbitral se convoca solo si hay desacuerdo residual.** Sin desacuerdo no se convoca: no existe para validar.

- Alcanzado el techo de una fase, cierra con lo que tiene y lo declara. Nunca se amplía el techo en silencio.

**Lo que se rinde en la entrega**

La entrega incluye, en el control de ejecución: la **talla elegida y su motivo**, qué fases se podaron, cuántos especialistas se convocaron y por qué cada uno, qué modelo corrió cada rol, y el consumo por fase. Con eso, en pocas rondas se sabe con datos —y no por intuición— qué partes del método pagan lo que cuestan y cuáles no.

> **El método existe para dar mejores respuestas, no para parecer riguroso.** Una ronda que llegó a la misma respuesta con la mitad de los recursos no es una ronda pobre: es una ronda mejor.

**PARTE I — El loop de investigación profunda**

**1.1 Entorno de ejecución**

Cada equipo trabaja en una instancia independiente y dedicada. La Coordinación es la única que ve el contexto completo: los equipos ven solo lo que ella les pasa, y les pasa lo mínimo que necesitan para su fase.

El protocolo no supone una infraestructura determinada. Las instancias pueden ser conversaciones separadas en la misma plataforma, procesos en una misma computadora, o personas distintas trabajando en paralelo. No asumas nombres, rutas, sistemas operativos ni herramientas: lo que necesites saber del entorno está en las respuestas de la apertura o en los bloques del pie, y lo que no esté ahí lo resolvés vos y lo declarás.

**La ronda corre entera sin detenerse.** No pidas confirmaciones intermedias, no pidas permiso para avanzar de fase, no devuelvas resultados parciales. Todo lo que necesite decisión se acumula y se entrega junto al final.

**El paquete de lanzamiento**

Cada equipo recibe, y solo recibe:

8.  Su rol y la fase en la que está.

9.  La ficha normalizada de la Fase 0 (nunca el texto crudo del encargo, nunca este protocolo entero).

10. Las clases de evidencia y el formato de etiquetado obligatorio.

11. La lista de insumos con sus identificadores (D1, D2, …).

12. Su propio pre-registro de la Fase 1, cuando ya exista.

13. A partir de la Fase 3, y nunca antes, el informe del otro equipo.

Todo lo que no esté en esa lista no se le pasa. Si un equipo pide contexto adicional, se lo das solo si está en la lista o entre los insumos declarados; si no, se registra como dato no accesible.

**La carpeta de la ronda**

Estructura fija, creada por la Coordinación en la Fase 0. Los nombres son indicativos; lo que importa es que cada fase tenga su lugar y que un tercero pueda reconstruir la ronda leyendo la carpeta:

- **00-encuadre** — ficha normalizada, pregunta decidible, composición.

- **10-preregistro/A** y **10-preregistro/B** — pre-registros sellados.

- **20-A** y **20-B** — lo que produce cada equipo en la Fase 2.

- **30-cruce** — una subcarpeta por sesión de cruce.

- **40-desacuerdo** — el reporte de la Fase 4.

- **50-C** — fallos del equipo arbitral y votos en minoría.

- **60-cierre** — fichas de decisión.

- **65-revision** — los informes de las cinco pasadas (Parte III, directiva D3).

- **70-entrega** — el documento final y sus adjuntos.

- **control** — bitácora de verificaciones, checkpoints, consumo y pasos tildados.

> **La carpeta es EXCLUSIVA de esta ronda y la Coordinación la verifica VACÍA antes de abrirla.** Si ya tiene algo adentro, no se reutiliza: se abre otra con número nuevo. Dos rondas compartiendo carpeta se contaminan entre sí sin que nadie lo note, y el síntoma aparece tarde y disfrazado —un pre-registro ajeno que parece propio—.

Si en cualquier momento aparece en la carpeta un archivo que la ronda no escribió, el procedimiento es: **no se usa, no se borra, se aparta** a \`control/archivos-no-reconocidos/\`, se sigue trabajando sin él y se declara en la entrega. Un artefacto de origen desconocido dentro de un pre-registro invalida el sellado de esa fase.

**El gancho de cada equipo**

Dentro de la carpeta de cada equipo hay **un** archivo fijo —su gancho— con tres cosas: el encargo vigente, el estado de cada paso y la hora de la última vez que el equipo lo leyó. Ahí escribe la Coordinación cuando encarga, y ahí escribe el equipo cuando avanza. Es la directiva **D1** de la Parte III, y es lo que evita que un encargo se pierda en un mensaje que nadie leyó. En un entorno sin archivos, el gancho es un bloque rotulado de la conversación que se reescribe entero cada vez que cambia.

**1.2 Fase 0 — Encuadre**

**0.0 Lectura y normalización del encargo**

El planteo viene en lenguaje corriente, muchas veces dictado: prosa corrida, numeración libre, errores de transcripción, ideas de distinto nivel mezcladas. **Eso es deliberado y no hay que pedirle a la persona que lo estructure.** El trabajo de estructurar es tuyo.

Leé el encargo entero y devolvé una ficha normalizada con siete campos:

| **Campo** | **Qué va** |
|----|----|
| A — Encargo | Qué se pide, en tres líneas. Síntesis, no transcripción. |
| B — Hipótesis a testear | Cada afirmación causal que se da por sentada, reescrita como hipótesis falsable. |
| C — Parámetros | Todo número, proporción o umbral entregado, etiquetado DATO / SUPUESTO / RESTRICCIÓN. |
| D — Insumos | Cada fuente con identificador, origen, período, fecha de corte y ubicación; y qué dato necesario no existe o no es accesible. |
| E — Entregables | Formato de salida exigido: informe, planilla, gráficos, prototipo, presentación. |
| F — Fuera de alcance | Lo que no se discute en esta ronda. Si es inferido y no explícito, marcarlo como tal. |
| G — Ambigüedades | Lo que no se pudo resolver solo por lectura, con la resolución que aplicaste. |

**Reglas de interpretación del encargo**

- **Nunca aceptes un encargo que fija la conclusión.** Toda formulación del tipo «demostrar que», «probar que», «confirmar que» se convierte en pregunta abierta sobre la misma relación. Si se pide demostrar que una curva es cuadrática, la hipótesis es qué forma describe mejor los datos, y la cuadrática es una candidata entre otras.

- **Todo número sin fuente citada es SUPUESTO**, por más seguridad con que esté enunciado. Solo es DATO lo que tiene origen verificable y fecha de corte.

- **Los marcadores de incertidumbre degradan la afirmación.** «Podría intuirse», «te diría», «es evidente que», «seguramente», «asumiendo» convierten eso en SUPUESTO de confianza baja, aunque venga junto a datos duros.

- **Una decisión ya tomada es RESTRICCIÓN, no hipótesis.** No se re-discute: se toma como dada y se declara.

- **Un entregable no es un objetivo de investigación.** Si el texto pide una planilla o un informe, eso va al campo E, nunca al B.

- **Errores de dictado:** corregí en silencio lo que sea inequívoco por contexto. Si la frase ilegible está dentro de una definición nuclear, resolvela y elevala al final como punto a ratificar, con la reconstrucción que usaste escrita textual.

- **Cifras que no cierren entre sí** (dos denominadores distintos para el mismo cálculo, totales que no suman) se listan como contradicción, aunque cada una por separado parezca razonable.

- **Antes de cerrar los insumos, declará la ventana de datos utilizable y cuántas observaciones tiene.** Si la cantidad no permite distinguir entre las hipótesis candidatas, cambiá la unidad de análisis y declará el cambio.

- **Las instrucciones sobre cómo correr la ronda** (plazos, techos, cuántas corridas, qué modelo) no son hipótesis ni entregables: sobrescriben los valores por defecto. Aplicalas y declaralas.

- **Si el encargo trae su propio secuenciamiento** («primero recopilá, después analizá, después preguntame»), respetalo: mapealo contra las fases y señalá dónde no encaja, en vez de pisarlo.

**0.0.1 Resolución de ambigüedades, sin detener la ronda**

Las ambigüedades no frenan. Cada una se resuelve así, en este orden:

14. Si el contexto permite una lectura razonable, tomala y seguí.

15. Si hay dos lecturas posibles, elegí **la más conservadora** —la que produce el resultado menos favorable al encargo— y etiquetala como SUPUESTO DE ENCUADRE.

16. Si la elección entre lecturas **cambia el resultado de forma material**, no elijas: modelá las dos ramas y mostrá el diferencial. Ese diferencial es información valiosa, no un problema.

17. Si una cifra contradice a otra, usá la que tenga fuente verificable. Si ninguna la tiene, corré las dos.

Todo SUPUESTO DE ENCUADRE se arrastra hasta la entrega y aparece ahí como punto a ratificar, con el impacto que tuvo en el resultado. La persona ratifica o corrige al final, **sobre el trabajo hecho**, no antes sobre una ficha vacía.

**Detención total:** solo si no existe ningún dato para responder la pregunta, o si toda interpretación posible es arbitraria y determinante del resultado. En ese caso entregá igual el documento final, corto, explicando qué falta y qué se necesita para reanudar. **Nunca termines una ronda en silencio ni con un pedido de aclaración suelto.**

**0.1 Pregunta decidible**

Formulá la pregunta que la ronda tiene que resolver: accionable y falsable. Dejá constancia del encargo original y de la pregunta derivada. **No convoques equipos sobre una pregunta que no puedas contestar con sí, no, o un número.**

**0.2 Consulta al registro de decisiones**

Si existe un registro de decisiones de rondas anteriores, revisalo antes de lanzar nada. Si hay una decisión vigente sobre el tema, partí de ahí y declaralo. Si la ronda va a contradecir una decisión vigente, no la ignores: elevala como decisión requerida.

> Regla general, y de las que más tiempo ahorran: **antes de preguntar o de investigar algo nuevo, buscá si ya está respondido.** Lo que ya está escrito y decidido no se presenta como pregunta abierta.

**0.3 Composición**

El tamaño sale de la talla elegida en la sección 0.5. Como referencia, un núcleo de 3 a 5 especialistas resuelve la mayoría de los problemas; se suman otros solo si el problema los exige. El techo es 11, **pero el techo no es la meta**: cada especialista adicional tiene que justificar por escrito qué pregunta responde que ningún otro responde, y esa justificación viaja a la entrega. Dos especialistas que iban a decir lo mismo son uno.

Las especialidades se eligen por el problema, no por una lista. A modo de ejemplo, y sin límite: medicina, epidemiología, ingeniería de procesos, agronomía, logística, derecho y normativa sectorial, contabilidad e impuestos, economía y econometría, estadística, actuaría, riesgo, arquitectura, diseño industrial, psicología, antropología, marketing, comunicación, ciencia de datos, seguridad, calidad, recursos humanos, y cualquier otra que el tema pida.

**0.4 Chequeo de punto ciego**

Antes de cerrar la composición, respondé explícitamente: **¿qué disciplina falta en esta mesa y cuál sería su objeción?** Esto no es elegir de un menú: es nombrar el sesgo compartido del equipo que armaste. Si la respuesta es «ninguna», volvé a intentarlo.

**1.3 Fase 1 — Pre-registro de falsación**

Antes de investigar, A y B declaran por separado y sin verse:

- Qué hipótesis van a testear.

- **Qué evidencia concreta los haría abandonarla.**

- Qué datos necesitan y cuáles no van a poder conseguir.

Cada pre-registro se guarda y queda **sellado**: no se puede editar después. Al cierre se compara. Si un equipo cambió de conclusión sin que apareciera la evidencia que él mismo había declarado como condición, **la conclusión es sospechosa y se marca**.

**1.4 Fase 2 — Generación ciega en paralelo**

A y B trabajan en instancias independientes sobre la misma ficha normalizada. **B no recibe el output de A**, y su paquete de lanzamiento ni siquiera menciona que A existe.

Antes de lanzar B se verifica el aislamiento. Si no se puede verificar, se registra y se lanza igual, pero la ronda queda marcada y ninguna conclusión de B puede ir en verde.

> Esto convierte a B en **test de reproducibilidad** además de test adversarial: si dos equipos independientes con el mismo planteo llegan a respuestas distintas, la divergencia misma es información sobre la fragilidad del problema.

**1.5 Fase 3 — Cruce adversarial**

Recién acá se cruzan los resultados: B recibe el informe de A por primera vez, pasa a rol adversarial pleno, y A responde. Máximo tres sesiones de iteración.

**Criterio de convergencia**

El corte **no es por cantidad de sesiones**. La ronda converge cuando, en una sesión completa, B no produce objeciones nuevas de clase NORMA o DATO. Las objeciones de clase INFERENCIA no cuentan para converger: se pueden generar indefinidamente y no mueven la aguja.

Tres cierres posibles:

18. **Convergencia.** Se cumple el criterio. Pasa directo a la Fase 5.

19. **Desacuerdo residual.** Se agotaron las tres sesiones con objeciones sustantivas vivas. Pasa a la Fase 4.

20. **Pregunta mal planteada.** Ambos equipos coinciden en que la pregunta no era decidible con la evidencia disponible. Se aborta la ronda, se entrega el documento explicando por qué, y se propone el planteo corregido. **Esto es un resultado válido, no un fracaso.**

**1.6 Fase 4 — Reporte de desacuerdo**

Documento breve, escrito por la Coordinación, que aísla exactamente qué quedó sin resolver: los puntos de acuerdo (que no se re-discuten nunca más), cada desacuerdo vivo con la posición de cada equipo y la clase de evidencia que la sostiene, y qué evidencia inexistente lo resolvería, si es que existe alguna. **Sin suavizar.** Si A y B están irreconciliables, el reporte lo dice así.

**1.7 Fase 5 — Instancia arbitral**

Especialistas de máxima jerarquía, con autoridad para zanjar. **Alcance acotado:** C no re-litiga el fondo ni genera análisis nuevo. Recibe únicamente el reporte de la Fase 4 y los fragmentos que ese reporte cita, y resuelve solo los desacuerdos residuales.

> Si C empieza a generar contenido propio, dejó de ser instancia arbitral y se convirtió en un tercer equipo A: y perdiste el árbitro.

Falla por mayoría simple, punto por punto. **Los votos en minoría se registran con el rol y el argumento, y sobreviven al cierre.** Si C no puede fallar sobre un punto, lo devuelve marcado como irresoluble en esta ronda.

**1.8 Fase 6 — Cierre**

Al cerrar:

21. Se registra **una ficha por cada decisión sustantiva**: qué se decidió, contra qué alternativas, con qué evidencia, quién disintió.

22. **El disenso residual es campo obligatorio.** Si queda en «ninguno registrado», tratalo como alerta: adversarial sin disenso casi siempre significa que B se ancló en A, no que A tenía razón.

23. Se fijan **condiciones de revisión observables**: qué hecho concreto obliga a reabrir esta decisión.

24. Se declara **confianza** (alta, media o baja) según la mezcla de evidencia, no según qué tan convencido quedó el equipo.

25. Cada decisión que vaya a producir un efecto abre su **paquete de entrega**: las piezas que la componen (voto, ejecución, verificación) y, sobre todo, **la fecha en que se va a comprobar que el efecto ocurrió**. Es la directiva **D5** de la Parte III. Una decisión sin fecha de verificación de efecto no se cierra: se cierra la ficha, no el paquete.

**1.9 Fase 6 bis — Las cinco pasadas de revisión**

Entre el cierre y la entrega, el documento pasa por cinco revisiones cortas, **cada una con un solo foco**, hechas por revisores que no tienen el contexto del autor. Está desarrollada en la Parte III, directiva D3. **No reabre conclusiones**: controla la forma de la entrega, y por eso corre después de la Fase 6 y no antes.

**1.10 Fase 7 — Entrega**

La ronda entrega **un único documento**, autocontenido, con el método de la Parte II. Es lo primero y lo único que la persona ve de toda la ronda: tiene que poder decidir leyendo solo eso.

Orden del documento, sin excepciones:

26. **Decisiones y autorizaciones requeridas.** Va primero, antes de cualquier análisis.

27. **Supuestos de encuadre a ratificar**, con el impacto que tuvieron en el resultado.

28. **Resultado**: la respuesta a la pregunta decidible, con la evidencia clasificada.

29. **Disenso residual y fallos arbitrales**, incluidos los votos en minoría.

30. **Recorrido de la ronda**: ficha, composición, punto ciego, pre-registros y cómo cerró el cruce.

31. **Entregables adjuntos**, con su ubicación.

32. **Control de ejecución**: la talla de ronda elegida y su motivo, las fases podadas, los especialistas convocados con su justificación, qué verificaciones corrieron y con qué salida, cuáles quedaron pendientes y qué conclusiones quedan en amarillo por eso, checkpoints, consumo por fase y modelo asignado por rol.

33. **Paquete de auditoría**: la ubicación de la carpeta completa. Un tercero tiene que poder reconstruir la ronda entera leyéndola, sin hablar con nadie.

**1.11 Control de ejecución**

Transversal a todas las fases. No es una fase más: corre en paralelo y **puede frenar cualquier fase**.

**Verificaciones deterministas**

No las hace un agente juzgando su propio trabajo: son chequeos mecánicos, fuera del modelo, antes y después de cada fase. Si un chequeo falla, la fase no cierra.

| **Control** | **Qué verifica** |
|----|----|
| H1 — Sellado del pre-registro | Se calcula una huella del pre-registro al cerrar la Fase 1 y se recalcula al cerrar la Fase 3. Si difiere, la ronda se marca CONTAMINADA. |
| H2 — Aislamiento de B | Antes de abrir B, que su contexto no contenga ningún artefacto de A. Y que la carpeta de la ronda no contenga artefactos de NINGUNA otra ronda. Si los contiene, no se abre. |
| H3 — Etiquetado de evidencia | Se rechaza todo informe con afirmaciones sustantivas sin clase asignada. |
| H4 — Fuentes declaradas | Se rechaza cualquier salida que cite una fuente ausente de los insumos. |
| H5 — Integridad del cierre | No se entrega sin disenso residual completo, confianza declarada y las cinco pasadas corridas. |

> **Un control que el propio modelo se autoevalúa no es un control.** Mientras no estén implementados como verificación externa, se declaran en la entrega como control pendiente, y las conclusiones que dependían de ellos no pueden ir en verde.

**Checkpoints y pasos**

Al cerrar cada fase se persiste el estado en la carpeta de la ronda. Ante una caída, se reanuda desde la última fase completa: **nunca se reconstruye de memoria una fase ya corrida.** Dentro de cada fase, los procesos de varios pasos se llevan como cadena tildable (Parte III, directiva D2), para que una caída no obligue a rehacer la fase entera.

**Presupuesto, telemetría y modelo**

- Cada fase tiene techo declarado de tiempo y de llamadas. Alcanzado el techo, **la fase cierra con lo que tenga y lo declara como cierre por presupuesto, nunca en silencio**.

- Se registra el consumo real por fase y por equipo. En pocas rondas eso permite decidir con datos si la instancia arbitral aporta lo que cuesta, o si un núcleo chico rinde igual que uno grande.

- **Asignación de modelo por rol, declarada y reconstruible**, según el canon de eficiencia de la sección 0.5. Nada de ruteo automático opaco: rompe la trazabilidad y hace imposible saber después qué parte del gasto valió la pena.

**Alcance y efectos**

> **Solo lectura por defecto. Una ronda produce conocimiento, no efectos.**

Salvo autorización explícita de la persona responsable, está prohibido: publicar o difundir nada, escribir o alterar cualquier sistema de registro vivo, enviar correos, mensajes o comunicaciones de cualquier tipo, comprometer dinero, y modificar configuraciones o credenciales.

**Lista blanca de escritura:** lo único que la ronda escribe es su carpeta de checkpoints y sus entregables. Todo lo demás es lectura. Se define por lista blanca y no por lista de prohibiciones: no hace falta enumerar qué está protegido, porque nada fuera de la lista blanca se toca.

**Restricciones de fondo:** las definiciones que la persona declara como restricción no se re-derivan, se toman como dadas. Pero un equipo que encuentre que una restricción rompe el análisis **puede objetarla** como disenso y elevarla. No re-derivar no es no poder objetar. Lo que ningún equipo puede hacer es redefinirla por su cuenta y seguir.

**Valores por defecto**

Rigen siempre, sin que la persona tenga que configurar nada. Se sobrescriben solo si ella escribe otra cosa.

- **Modelo:** el más potente disponible en la plataforma que se esté usando.

- **Numeración de ronda:** si no la indican, asignala vos y declarala.

- **Checkpoints:** una carpeta propia de la ronda, donde la persona indique o, en su defecto, junto a los insumos.

- **Techos:** fases 0 y 1 acotadas; la fase 2 es la más holgada, porque ahí está el trabajo pesado; la fase 3 hasta tres iteraciones o convergencia, lo que ocurra primero; de la 4 a la 7, acotadas.

- **Volumen de corridas o simulaciones:** se define por criterio de estabilidad de los estimadores, **nunca por una cifra fija elegida de antemano**. Declarar el criterio y cuántas corridas hicieron falta.

- **Especialidades:** si no las indican, las elige la Coordinación y las declara, junto con el punto ciego.

**1.12 Reglas transversales**

**Clases de evidencia**

Toda afirmación de todo participante en toda fase se etiqueta:

| **Clase** | **Qué es** |
|----|----|
| NORMA | Texto normativo, contractual o reglamentario citado, con su artículo o cláusula. |
| DATO | Dato duro verificable, con fuente y fecha de corte. |
| INFERENCIA | Conclusión del equipo, no verificada. |
| SUPUESTO | Lo que se asumió sin verificar. |

**Una conclusión que se apoya mayoritariamente en INFERENCIA y SUPUESTO no puede declararse de confianza alta**, por más consenso que tenga.

**Prohibiciones**

- Ningún equipo asume la conclusión de otro como premisa propia.

- Ninguna cifra sin fecha de corte. Ninguna norma sin artículo.

- No se cierra una ronda para llenar el registro. Ronda sin decisión cerrada es ronda sin ficha.

- Nadie edita su pre-registro.

- Ninguna ronda escribe en la carpeta de otra, ni reutiliza una carpeta que ya tiene contenido.

- Ningún equipo trabaja sobre el texto crudo del encargo: siempre sobre la ficha normalizada.

- Ningún equipo usa una fuente que no esté declarada en los insumos.

- No se detiene la ronda por una ambigüedad resoluble, ni se piden confirmaciones intermedias.

- No se entrega resultado sin el documento final, ni siquiera cuando la ronda se aborta.

- Ninguna fase cierra con un control en estado fallado: o se corrige la causa, o se declara la ronda contaminada.

- **Ninguna conclusión va en verde si dependía de un control que no se pudo ejecutar.**

- **No se convoca un equipo, una fase ni un modelo caro sin la pregunta escrita que justifica agregarlo** (canon de eficiencia, sección 0.5). Correr el protocolo completo sobre un problema simple es incumplirlo, no cumplirlo de más.

- Ninguna acción con efectos fuera de la lista blanca, por conveniente que parezca para la investigación.

**PARTE II — El método de comunicación de decisiones**

Toda entrega se comunica con este método: un documento autosuficiente que la persona abre y responde. Reemplaza a la pregunta suelta en una conversación. El objetivo es doble: que decidir sea **trivial de operar** (botones y notas) y **perfecto de información** (nada implícito, nada que obligue a confiar a ciegas ni a abrir otro documento para entender).

**2.1 Prerrequisito duro**

> **Agotar la investigación antes de preguntar.** A la persona llega solo lo irreducible: lo que de verdad requiere su criterio, su gusto o su contexto. Lo que el equipo pudo resolver solo se informa, no se pregunta.

Está prohibido usar el documento para delegar trabajo de investigación que la Coordinación podía hacer.

**2.2 Estructura de cada bloque**

Un bloque es una decisión. Cada uno lleva un **código corto y estable** (DEC-1, DEC-2… o por tema: A1, B2…). El código nunca cambia entre versiones: así se puede responder «DEC-3: dale» sin repetir de qué se trata.

Cada bloque contiene, siempre y en este orden:

34. **El problema o la situación.** Autosuficiente: qué pasa, dónde, desde cuándo, a quién afecta y por qué requiere decisión. Lenguaje claro, cero jerga sin explicar, cero referencias que obliguen a abrir otro documento.

35. **Los argumentos, en dos planos rotulados.** La *opinión y el razonamiento* del equipo, por un lado; la *evidencia observada*, por otro, con su clase (NORMA, DATO, INFERENCIA, SUPUESTO). Si un argumento es teórico, se dice que es teórico. **Jamás se disfraza una opinión de evidencia.**

36. **Las opciones posibles**, enumeradas, cada una con ventajas y desventajas explícitas. En los bloques rojos, al menos dos.

37. **La sugerencia**: la recomendación concreta y **única**, con el porqué en una o dos frases. Nunca un bloque sin inclinación declarada: presentar opciones sin recomendar es tirarle el trabajo a la persona.

38. **Qué me haría cambiar de opinión**: qué evidencia o qué hecho llevaría al equipo a recomendar otra cosa. Es el reverso de la sugerencia: sin esto la recomendación no es falsable. Si no se puede escribir, probablemente no esté fundada.

39. **Costo de no decidir**: qué pasa si esto queda sin resolver y hasta cuándo se puede esperar sin costo. **No decidir siempre es una opción disponible**, y hay que decir cuánto cuesta.

40. **La votación**: cuatro respuestas posibles — APROBAR, APROBAR CON CONDICIÓN, REVISAR, RECHAZAR — con espacio para escribir. *Aprobar con condición* existe porque es la respuesta más frecuente («dale, pero solo si X») y sin ella ese sí se pierde dentro de un «revisar».

**2.3 Los dos ejes: certeza y consecuencia**

Son independientes y los dos tienen que estar. El color dice **cuánta certeza hay**; la marca de consecuencia dice **cuánto duele equivocarse**. Un tema puede ser de altísima certeza y a la vez irreversible: eso no se aprueba de un clic.

| **Color** | **Mensaje implícito** |
|----|----|
| VERDE | «Estoy segura de que esto es lo que hay que hacer. Te lo informo y, si querés, sumás alguna mejora.» |
| AMARILLO | «Fue un tema trabajado y hubo alternativas reales. Tenemos alta seguridad, pero tu mirada puede detectar algo que no vemos.» |
| ROJO | «Estamos seguros de la recomendación, pero este es de los temas más difíciles: hubo idas y vueltas y opiniones divergentes. No podemos descartar un error que no vemos, y por eso necesitamos tu opinión, aunque sea para mandarnos a investigar otro camino.» |

**Regla de coherencia:** el color lo fija la **historia real** del tema —cuánto se discutió, cuánta divergencia hubo—, no las ganas de cerrar. Pintar de verde un tema discutido es falsificar el mensaje.

| **Marca de consecuencia** | **Qué significa** |
|----|----|
| REVERSIBLE | Si sale mal, se deshace sin costo relevante. |
| COSTOSO DE REVERTIR | Se puede deshacer, pero cuesta dinero, tiempo o relaciones. Decir cuánto. |
| IRREVERSIBLE | No se vuelve atrás. Compromete dinero, reputación, datos o vínculos de forma definitiva. |

**2.4 El circuito tiene varias rondas**

El documento no es un formulario de una sola pasada: es un **canal**. La persona puede pedir un análisis extra, pedir más información o proponer una hipótesis propia. Cuando eso pasa, el tema **no se cierra**: se ejecuta lo pedido y se devuelve una versión nueva donde:

- los códigos de bloque **se mantienen estables**;

- los bloques ya aprobados quedan marcados como cerrados, visibles y no re-votables;

- los bloques respondidos incorporan la respuesta al pedido y se re-presentan;

- **los bloques aprobados en la versión anterior muestran su estado de ejecución**: hecho, en curso, o bloqueado y por qué.

Ese último punto cierra el ciclo. Sin él, el método registra decisiones pero nunca confirma que lo decidido efectivamente pasó, que es donde se pierde el valor de haber decidido bien.

Y el listado de lo que sigue abierto **se genera** desde los paquetes de la Fase 6 que todavía no tienen su efecto verificado, nunca se escribe a mano. Así no aparece como pendiente algo que ya se resolvió, ni desaparece algo que se ejecutó a medias.

**2.5 Cierre del documento y verificación**

Al final va un botón que recolecta todas las respuestas y arma un texto listo para copiar, con una línea por bloque. **Y siempre un cuadro de texto visible con el resultado**, para copiar a mano si el copiado automático falla.

Antes de entregar, se comprueba con una prueba real, no a ojo. Un documento lindo pero que no funciona es una falta grave:

41. Los cuatro botones existen y responden en **cada** bloque.

42. Los cuadros de texto se despliegan y retienen lo escrito.

43. El recolector arma el texto completo, con todos los bloques.

44. El cuadro de respaldo aparece **aunque el copiado automático haya funcionado**.

45. El documento abre **sin conexión a internet**: ninguna dependencia externa.

46. Los códigos de bloque son visibles y coinciden con los de la versión anterior.

47. Cada bloque muestra su color y su marca de consecuencia.

48. Al imprimir o exportar conserva el contenido y las respuestas.

Y una regla que vale por todas: **abrilo de verdad antes de entregarlo.** Una simulación prueba la lógica; solo abrirlo muestra lo que la persona va a ver.

**2.6 Identidad y forma**

- **Un solo archivo autosuficiente**, sin dependencias de internet.

- Legible y sobrio: título claro, una introducción que diga qué es y cómo se vota, bloques bien separados con su color.

- **Encabezado con identidad estable**: nombre del trabajo, número de versión, fecha y hora, y de qué ronda o proceso proviene. Sin esto, dos versiones del mismo documento son indistinguibles a los tres meses.

- **Quién lo generó, siempre identificado**, debajo del título. Con varios equipos trabajando, es la única forma de saber a quién responder.

- La fecha y la hora del encabezado salen del reloj en el momento de generar, nunca escritas a mano.

- Idioma correcto y con acentos: es texto para leer, no código.

**PARTE III — Las cinco directivas operativas**

Estas cinco no cambian el método: lo hacen sobrevivir al mundo real. Nacen de observar dónde fallan en la práctica los procesos largos con muchos participantes. Cada una trae **cómo se mide si funcionó**, porque una directiva que no se puede medir no se puede abandonar cuando no sirve.

**D1 — El gancho: el encargo vive en un archivo, no en un mensaje**

**El problema.** Los mensajes entre participantes se pierden, quedan en cola o no despiertan a nadie. Se acumulan horas de trabajo que se creía en marcha y estaba detenido.

**La directiva.** Cada participante tiene **un** archivo de encargo fijo —su gancho— con el encargo vigente, el estado de cada paso y la hora de la última toma. Reglas:

- Al arrancar, y en todo relanzamiento, **lo primero que se lee es el gancho**, antes que cualquier otra cosa.

- La Coordinación encarga **escribiendo en el gancho**, no mandando un mensaje.

- **Si hay trabajo en tu gancho, lo corrés**, sin esperar que alguien te avise.

- Un solo escritor por campo: la Coordinación escribe el encargo, el participante escribe el avance.

**Cómo se mide:** cuántos encargos tardan más de diez minutos en producir su primera acción, y cuántas veces se creyó que alguien trabajaba y estaba detenido. Se cuenta cuatro semanas antes y cuatro después.

**D2 — La cadena de pasos con compuertas**

**El problema.** En procesos largos, los pasos se saltean. No por indisciplina: porque el final del proceso llega cuando ya nadie recuerda la lista.

**La directiva.** Todo proceso de varios pasos se escribe por adelantado como una lista que se tilda de a uno, con fecha y hora. Un paso marcado como **compuerta** solo se tilda con la salida de una verificación externa, no con la palabra de quien lo ejecutó. Así la declaración de «terminado» deja de ser una afirmación y pasa a ser el último paso de una lista verificable.

**Dónde entra en dl:loop:** dentro de cada fase, y especialmente en el cierre. Baja la granularidad de los checkpoints de «fase» a «paso dentro de la fase»: una ronda que se cae retoma el paso exacto y no la fase entera.

> **El riesgo es la burocracia.** Una lista tildada sin verificar es teatro. Por eso solo cuentan las compuertas con salida de una verificación real.

**Cómo se mide:** cuántas entregas llegan con algo faltante, y cuántas fases hay que rehacer enteras tras una caída.

**D3 — La revisión en cinco pasadas**

**El problema.** Las correcciones y retractaciones ante la persona responsable caen casi siempre en las mismas pocas familias. Una revisión general no las ve. Una pasada dedicada a cada una, sí.

**La directiva.** Antes de que un documento llegue a la persona, pasa por **cinco revisiones cortas, cada una con una sola pregunta**, hechas por revisores que no tienen el contexto del autor:

49. **Números.** ¿Cada cifra tiene medida, denominador y fuente? ¿Los dos lados de cada comparación usan la misma medida?

50. **Tiempo.** ¿Cada hora y cada fecha salen de un reloj o de un archivo? ¿Cada hecho futuro está escrito en futuro?

51. **Ya decidido.** ¿Algún bloque pide decidir algo que ya tiene decisión o que ya es norma?

52. **Personas.** ¿Hay datos personales, identificadores o secretos en la salida?

53. **Efecto.** Lo que el documento dice que «ya se hizo», ¿se puede comprobar por su efecto?

Cada pasada devuelve hallazgos con cita. El autor corrige y recién entonces se entrega. **Complementa y no reemplaza al cruce adversarial:** el equipo B discute el fondo, estas pasadas controlan la forma de la entrega y no reabren conclusiones. Por eso corren después del cierre y no antes.

> **El riesgo es la falsa tranquilidad** si las pasadas se vuelven rutinarias. Se mitiga guardando el informe de cada pasada junto al documento, para poder auditarlas.

**Cómo se mide:** correcciones o retractaciones posteriores a cada entrega. Cuatro semanas contra las cuatro anteriores. **Si no bajan a la mitad, se abandona.**

**D4 — Alguien tiene que vigilar a quien vigila**

**El problema.** Hay vigilancia sobre los participantes y sobre los procesos, pero **nadie vigila a la Coordinación**. Cuando la Coordinación se cae o pierde el acceso, el silencio se confunde con trabajo en curso.

**La directiva.** Un control chico e **independiente de la Coordinación**, que cada pocos minutos mire tres cosas: si la Coordinación sigue activa, si aparecieron errores de plataforma o de sesión vencida, y si el acceso sigue vivo. Si detecta una caída, avisa **solo a la persona responsable** y por un canal que no dependa de lo que se cayó. No relanza nada por su cuenta.

> **Un control que vive dentro del proceso que vigila no puede gritar cuando ese proceso muere.**

**Cómo se mide:** minutos entre la caída y el aviso. La meta es menos de veinte.

**D5 — El paquete de entrega: de la decisión al efecto**

**El problema.** Una misma decisión se reparte en piezas —voto, ejecución, verificación— que viven en lugares distintos. Resultado: pendientes que figuran resueltos, decisiones que quedan a medio ejecutar meses, y efectos que nadie comprobó.

**La directiva.** Cada decisión con efecto abre un **paquete** con todas sus piezas y, sobre todo, con su **fecha de verificación de efecto**. El paquete se cierra recién cuando esa verificación figura con un dato medido. El listado de pendientes se **genera** desde los paquetes abiertos, en vez de escribirse a mano.

> **El riesgo es duplicar el registro.** Tiene que ser el mismo registro extendido con una columna de estado por pieza, no un segundo registro paralelo.

**Cómo se mide:** pendientes que la persona ve y ya estaban resueltos (debería ser cero), y decisiones con efecto sin verificar pasada su fecha.

**Anexos**

**Anexo A — Los tres bloques del pie**

Si en vez de responder la apertura preferís escribir el encargo de una vez, usá estos tres bloques. Solo el primero es obligatorio.

> **OBJETIVOS** — \[Único bloque obligatorio. Escribí el planteo con tus palabras, como salga: prosa corrida o numerado, sin estructurar. Si querés fijar un plazo, un techo o una preferencia de ejecución, escribilo acá también.\]
>
> **INSUMOS** — \[Opcional. Las fuentes de esta ronda. Si se deja vacío, la Coordinación identifica y declara las fuentes.\]
>
> **RESTRICCIONES Y SALVAGUARDAS** — \[Opcional. Definiciones que se toman como dadas, límites de lo que la ronda puede tocar, cifras que ya se sabe que son supuestos, condiciones del entorno. Tienen precedencia sobre los valores por defecto.\]

**Anexo B — Nota para trabajos sobre sistemas informáticos**

El protocolo es independiente de la tecnología. Cuando la ronda toca sistemas vivos, estas precisiones hacen operativa la regla de «solo lectura»:

- **Una consulta declarada de solo lectura no siempre lo es.** Algunas capas intermedias ignoran la configuración de sesión que la declara. La única garantía efectiva es envolver cada consulta en una transacción de solo lectura explícita y revertirla al terminar.

- **No se comprueba una salvaguarda de escritura escribiendo.** Si se quiere verificar, se hace dentro de una transacción que se revierte: falla sin efecto.

- **La lista blanca de escritura incluye solo la carpeta de la ronda y sus entregables.** Ni configuraciones, ni banderas, ni credenciales, ni repositorios, ni envíos.

- **Un número que sale de contar archivos no prueba un respaldo**: se compara tamaño a tamaño, y se verifica que el árbol se pueda recorrer, que es lo que haría una restauración real.

**Anexo C — Las diez trampas que más caro salen**

Son errores de método, no de conocimiento. Aparecen una y otra vez, en cualquier disciplina:

54. **Afirmar sobre el conjunto habiendo verificado un solo mecanismo.** Antes de decir qué ve o no ve alguien, recorré todos los caminos que se lo muestran.

55. **Usar una ausencia como prueba.** Que no haya registros de algo no prueba que no pueda ocurrir: preguntá primero si el mecanismo los borra por diseño.

56. **Un cero sin control positivo.** Todo resultado vacío se prueba primero contra un caso que se sabe que existe. Si el control también da cero, lo que falla es el método de medición, no el dato.

57. **Comparar dos cifras con medidas distintas.** Cada número viaja con su unidad y su denominador. Si los dos lados salen de medidas distintas, no es una comparación.

58. **Una duración sacada de la fecha de un documento.** La fecha de un archivo no es la fecha en que algo empezó a pasar.

59. **Presentar como hallazgo algo ya decidido.** Antes de elevar una pregunta, buscá si tiene respuesta.

60. **Confundir «no lo encontré donde miré» con «no existe».** Escribí siempre dónde buscaste.

61. **Dar por hecho que lo instalado es lo escrito.** Lo que está en el documento o en el repositorio puede no ser lo que efectivamente corre. Se verifica comparando, no suponiendo.

62. **Fallar hacia «todo bien».** Un control que ante un error devuelve vacío y deja pasar es peor que no tenerlo: ante la duda, el control frena y lo dice.

63. **Una afirmación sobre algo que cambia solo, hecha con una medición vieja.** Antes de repetir «sigue roto», medí de nuevo.

**Anexo D — Cómo usarlo en cada plataforma**

Tres formas de entregarle este documento a un modelo. Las tres son válidas y producen el mismo protocolo:

64. **Subir el archivo** (PDF o Word) y no escribir nada más. El modelo lo lee y arranca por la apertura de la sección 0.

65. **Pegar el texto** en la conversación y escribir \`dl:loop\` debajo.

66. **Tenerlo cargado de antemano** como instrucción permanente del asistente, del proyecto o del agente. Entonces alcanza con escribir \`dl:loop\` en cualquier momento.

Si el modelo no reacciona a \`dl:loop\` —porque la plataforma recortó el documento o porque no lo tomó como instrucción—, la frase que siempre funciona es: *«Seguí el protocolo dl:loop del documento que te pasé. Empezá por la apertura.»*

- **Sistema operativo:** indistinto. Nada del protocolo depende de Windows, macOS, Linux, iOS o Android.

- **Modelo:** cualquiera con capacidad de razonamiento largo. La recomendación es el más potente disponible en la plataforma que uses, y ése es el valor por defecto.

- **Trabajo en equipo:** los equipos A, B y C pueden ser conversaciones separadas, agentes, o personas distintas. Lo que el protocolo exige no es una tecnología, es que **no se vean entre sí hasta la Fase 3**.

- **Sin conexión a herramientas:** si el modelo no puede buscar en internet ni abrir sistemas, la ronda igual corre: trabaja solo con los insumos que le des y declara en la entrega qué no pudo verificar.

**Anexo E — Procedencia**

dl:loop reúne tres fuentes:

- **El protocolo de investigación compleja**, dictado como método general y vigente desde agosto de 2026.

- **El método de comunicación de decisiones**, desarrollado y probado en proyectos propios durante 2026.

- **Cinco directivas operativas** derivadas del análisis de la nota «Welcome to Gas Town» (Steve Yegge, enero de 2026), adaptadas a este método: se tomó la idea del gancho, de las cadenas de pasos, de la revisión múltiple de foco único, del vigilante del vigilante y del seguimiento por paquete. **No se adoptó** la práctica de intervenir directamente en el puesto de trabajo de otro participante.

Ante diferencias entre este documento y cualquier versión operativa derivada, **prevalece este documento**.
