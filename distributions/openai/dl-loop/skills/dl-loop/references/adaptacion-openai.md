# Adaptacion operativa de dl:loop para ChatGPT y Codex

Edicion publica 1.0.3. Basada en el protocolo v1.0 y su adaptacion de 2026-10-03. Alcance: usuarios de ChatGPT y Codex, segun las capacidades de cada entorno.

El PDF original y el texto publicado en el repositorio se conservan como referencias. Este archivo explicita las diferencias de ejecucion y prevalece sobre las instrucciones operativas incompatibles del original. Instalar, citar o revisar el paquete no ejecuta una ronda. Una skill no implementa por si sola infraestructura externa.

## 0. Capacidades del entorno

El flujo basico puede producir un encuadre y un analisis con decisiones en conversacion. Una ronda completa requiere herramientas reales de subagentes independientes. Verifica las capacidades disponibles antes de elegir talla y explica los limites. Sin esas herramientas, realiza una ronda corta declarada o prepara los paquetes para una ejecucion compatible; nunca presentes personajes simulados como equipos reales. Sin archivos o navegador, entrega el contenido util en el chat o en un archivo descargable y declara las verificaciones que no se pudieron realizar. No exige acceso arbitrario a archivos locales, credenciales, hardware ni aplicaciones para el flujo basico. La generacion de HTML, hashes, verificaciones mecanicas y pruebas de navegador se realiza solo donde existan las herramientas necesarias. Los permisos y limites del anfitrion prevalecen siempre.

## 1. Activacion, permisos y defaults

- El trigger es una solicitud del usuario de ejecutar `dl:loop` o `$dl-loop`, incluso sin objetivo. Si falta el objetivo, se hace la apertura. Una consulta sobre el protocolo, su instalacion o un archivo adjunto se trata como material de trabajo, no como instruccion de ejecutarlo.
- Las siete preguntas originales conservan sus numeros. Solo el objetivo es imprescindible para abrir una ronda. Usa contexto previo para evitar preguntas repetidas. Campos opcionales pendientes se resuelven con defaults declarados cuando corresponda.
- La prohibicion de interrumpir no elimina limites de permisos, herramientas, cuenta, datos o disco. Resuelve lo reversible y modela alternativas antes de consultar; si falta autorizacion necesaria, detente solo en esa accion y continua trabajo independiente.
- Sin indicacion sobre fuentes externas, usa las fuentes pertinentes disponibles y declara la seleccion. Si el usuario restringe el trabajo a sus insumos, respeta ese alcance. No contactes personas ni publiques consultas por cuenta propia.
- No cambies definiciones de negocio ni procesos especializados. Lee sus referencias autoritativas si aplican. Para repositorios respeta las reglas del proyecto y verifica la revision usada; si no hay acceso, informa el limite sin fingir frescura.

## 2. Correcciones del flujo original

| Codigo | Texto original | Resolucion operativa |
|---|---|---|
| B1 | La convergencia en Fase 3 manda a Fase 5, pero C solo trata desacuerdos. | Convergencia: Fase 6, 6 bis y 7. Desacuerdo residual: Fase 4, luego 5, 6, 6 bis y 7. |
| B2 | Fase 2 admite B sin aislamiento verificado; H2 lo bloquea. | Para declarar una ronda completa ciega, H2 debe verificar el aislamiento especificado. Si no se puede, registra la limitacion y adapta/aborta el componente independiente; no presentes una simulacion como A/B verificado. Entrega igual el estado y los resultados utilizables, sin verde donde dependan de ese aislamiento. |
| B3 | Se para por convergencia y no por presupuesto, pero cada fase tiene techo. | Parar por convergencia cuando ocurra antes; al alcanzar un limite efectivo o declarado, cerrar/interrumpir con resultados parciales identificados y emitir la entrega correspondiente. No exceder techos en silencio ni afirmar convergencia por agotamiento. |
| B4 | Las objeciones INFERENCIA nunca cuentan para convergencia. | Tambien bloquean convergencia los errores logicos, matematicos o metodologicos materialmente sustentados. No requieren inventar un DATO nuevo; deben explicar un efecto concreto en la conclusion. Objeciones meramente especulativas no impiden cerrar indefinidamente. |

La ronda corta no tiene A/B ni C, pero mantiene cierre, cinco revisiones y entrega. La respuesta directa no abre ronda ni hereda toda esa maquinaria. El consenso puede ser un resultado legitimo: registrar ausencia de disenso y comprobar anclaje, sin inventar objeciones para llenar un campo.

## 3. Coordinacion y agentes reales

La invocacion de esta skill pide trabajo con subagentes cuando la talla lo requiere. Usa las herramientas de colaboracion disponibles, no chats nuevos de la barra lateral salvo pedido del usuario.

Para A/B y revisores nuevos, usa `fork_turns="none"` cuando exista ese parametro. Construye un paquete minimo con rol, fase, ficha normalizada, clases de evidencia, identificadores de insumos y salida esperada. B no recibe el informe de A ni menciones innecesarias sobre A antes del cruce. Las reglas comunes del entorno siguen aplicando; no hay aislamiento del conocimiento preentrenado ni garantia de diversidad cientifica por usar varias instancias.

Antes de Fase 2, guarda cada paquete de lanzamiento y su hash, registra que no se heredo historial ni se incluyeron artefactos de la contraparte, y verifica que la carpeta no reutiliza una ronda anterior. Define explicitamente el alcance de H2: aislamiento del contexto suministrado y control de accesos que realmente existan. Si las herramientas comparten filesystem, decláralo: una instruccion de no leer carpetas ajenas no es una barrera de permisos. Si el analisis exige esa barrera y no existe, H2 queda pendiente y se limita la ronda segun B2.

No fijes un numero permanente de slots: consulta las capacidades de la sesion. Si el limite es coordinacion + tres subagentes, escalona especialistas y revisores. Coordinar varias especialidades en una instancia no equivale a varios votos independientes. En C, una mayoria exige votos reales separados; si solo hay un arbitro, declara arbitraje individual y la desviacion.

La coordinacion encuadra, gestiona fuentes y sintetiza conclusiones trazables; no inventa analisis sustantivo atribuyendolo a equipos que no existieron. El rol de especialista es una perspectiva de trabajo de IA, no una credencial humana verificada.

El gancho es el registro durable del encargo y del avance. Escribe el encargo y, ademas, lanza o reactiva al agente con la herramienta correspondiente. No asumas que un cambio de archivo despierta una instancia. Evita escrituras concurrentes al mismo contenido usando campos o archivos separados por autor. Confirma recepcion con un primer avance observable.

## 4. Modelos, recursos y continuidad

- El modelo de la coordinacion es el de la sesion. No prometas cambiarlo automaticamente al mas potente ni modifiques configuracion global.
- Si el usuario eligio un modelo o un techo, respetalo en las instancias donde se pueda. Cuando las herramientas permitan elegir modelo de subagentes, asigna uno de los nombres realmente disponibles segun el rol y el canon de eficiencia. Declara la asignacion; no infieras costos exactos ni capacidades por el nombre comercial.
- Si no hay ruteo disponible, usa el modelo heredado y declara la limitacion. Un techo no obliga a gastar siempre el maximo.
- En Fase 0 fija limites concretos de tiempo y llamadas acordes a la tarea, no solo "acotado". Registra tiempo de reloj, llamadas observables, equipos y fases realmente corridos. Si faltan tokens/costo por fase, escribe NO DISPONIBLE y su causa; no rellenes con estimaciones presentadas como consumo medido.
- Guarda checkpoints por paso. Ante corte, inspecciona los archivos y verifica lo persistido antes de retomar. No reconstruyas resultados desde memoria ni prometas continuidad mientras la app esta cerrada.
- D4 requiere un proceso externo y un canal independiente comprobado. Esta instalacion no los crea. Sin ellos, D4 figura NO IMPLEMENTADO. Solo configura monitoreo o seguimientos cuando el usuario los pida; una fecha en D5 no es una automatizacion instalada.

## 5. Controles mecanicos y sus limites

Los comandos y validadores se ejecutan sobre la carpeta de la ronda, nunca sobre fuentes de produccion para probar si se puede escribir.

| Control | Comprobacion real | Lo que no demuestra |
|---|---|---|
| H1 | Calcular SHA-256 de cada pre-registro al sellarlo, guardar valor/hora y recalcular al cerrar el cruce. Comparar por codigo, con fallo explicito. | Que un mismo escritor no haya alterado simultaneamente archivo y registro. El hash es deteccion de cambios respecto de una referencia conservada, no firma de tercero. |
| H2 | Inspeccionar paquetes/contexto enviado, ausencia de artefactos de otra ronda y las restricciones efectivas de acceso. Guardar evidencia del chequeo antes de la fase ciega. | Aislamiento del filesystem compartido, del preentrenamiento o de sesgos comunes si no hay mecanismo que lo garantice. |
| H3 | Usar un registro estructurado de afirmaciones con ID, texto, clase y soportes. Un validador comprueba clases y campos obligatorios, y cada afirmacion sustantiva del informe referencia su ID. | Exhaustividad o correccion semantica de las afirmaciones y su clasificacion. Eso tambien requiere revision y se declara como tal. |
| H4 | Resolver mecanicamente todos los IDs citados contra el registro de fuentes, comprobando campos de origen y corte; registrar nuevas fuentes antes de usarlas. | Veracidad o calidad de una fuente por estar en la lista. |
| H5 | Comprobar fichas, disenso, confianza, cinco informes de revision y estado de hallazgos; exigir evidencia de los checks realizados. | Que la revision sea suficiente solo porque existe un archivo. |

Un comando que fallo nunca equivale a cero hallazgos. Si un chequeo no esta implementado, marcar PENDIENTE antes de entregar y no aprobar las conclusiones que dependian de el. Registrar CONTAMINADA cuando corresponda a integridad/aislamiento fallidos. Nunca aprobar H3/H5 con un simple juicio del autor sobre su propio texto.

Esta skill contiene instrucciones para crear y ejecutar estos controles durante cada ronda; no trae un validador universal ya instalado. Los requisitos de cada control se implementan con herramientas/scripts ajustados a los archivos efectivamente generados y se comprueban con casos positivos y negativos relevantes.

## 6. Documento, votos y seguimiento

Usa las reglas de la Parte II, incluidos el orden de entrega, las siete piezas de cada decision, codigos estables, confianza y consecuencias. Adapta el idioma al usuario. Toma fechas del reloj disponible y usa su zona horaria; si no se conoce, declara la zona empleada.

Crea HTML autocontenido, sin fuentes, librerias ni recursos remotos. Verifica apertura real, botones, notas, recoleccion de todos los bloques, texto de respaldo, ausencia de dependencias de red e impresion/exportacion con respuestas visibles. Usa A4 salvo preferencia distinta del usuario y numeracion en los documentos paginados. Respeta la identidad visual que el usuario proporcione.

El color representa la historia real de discusion; expresa tambien la confianza en palabras para no confundir ambas dimensiones. Marca REVERSIBLE, COSTOSO DE REVERTIR o IRREVERSIBLE segun efecto concreto. Nunca uses verde para una conclusion dependiente de un control pendiente o fallado.

La votacion local no ejecuta acciones. Provee recoleccion en texto y mecanismo de respaldo para que la persona remita respuestas a la sesion. Un clic aislado en HTML no se considera recibido por Codex. Para persistencia entre aperturas, elige un mecanismo real, explicalo y pruebalo; no asumas que `localStorage` en `file://` funciona igual en todos los navegadores. El clipboard automatico puede fallar por permisos: el texto visible siempre debe quedar disponible. Si el anfitrion carga el clipboard, respeta los permisos y convenciones de ese entorno. No dependas de scripts personales ni de un sistema operativo concreto.

Al recibir respuestas del usuario, conserva IDs, bloquea la re-votacion de aprobados y registra estados de ejecucion reales. D5 se cierra solo con efecto medido. No prometas comprobaciones futuras automaticas sin una automatizacion autorizada y verificada. Los pendientes se derivan de los paquetes abiertos.

## 7. Archivos y alcance de esta instalacion

Escribir solo dentro de la carpeta autorizada para la ronda y sus entregables. Respeta las convenciones de archivos temporales y entregables del entorno. No reutilizar una carpeta con contenido; para retomar, debe tratarse explicitamente de la misma ronda con sus checkpoints verificados.

Si aparece un archivo desconocido, no usarlo ni borrarlo ni moverlo sin autorizacion: registrar la ubicacion y excluirlo. Esta cautela reemplaza la instruccion original de moverlo automaticamente a cuarentena. No se modifica un archivo ajeno para preservar el aislamiento de una ronda.

El paquete distribuye una skill con referencias. No modifica AGENTS.md ni instala servicios, hooks, crons, monitores, integraciones de mensajeria o cambios de modelos. No genera logs persistentes por si mismo. Los rastros de rondas son entregables declarados; limpia el scratch propio que ya no sirva al terminar.
