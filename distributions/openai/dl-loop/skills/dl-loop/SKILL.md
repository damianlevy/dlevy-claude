---
name: dl-loop
description: "Ejecuta dl:loop: investigacion profunda con equipos independientes y entrega de decisiones. Activar cuando el usuario pide dl:loop o lanza una ronda; revisar, explicar o instalar el protocolo no inicia una ronda."
metadata:
  short-description: "dl:loop - investigacion y decisiones auditables"
---

# dl:loop para ChatGPT y Codex

Implementa el protocolo de Damian Levy de investigacion profunda y comunicacion de decisiones. Edicion publica OpenAI: 1.0.3. Protocolo y adaptacion base: 2026-10-03. Protocolo fuente: v1.0, 2026-10-03.

## Activacion y fuentes

Una solicitud de ejecutar `dl:loop`, la seleccion de esta skill en el menu del producto, una invocacion de `$dl-loop` en Codex, o un pedido como "lanza un dl:loop sobre..." activa este procedimiento. Una mencion en un documento, una cita, o un pedido de revisar/instalar/explicar el protocolo no lo ejecuta. Adjuntar el PDF solo no constituye autorizacion para iniciar una ronda en esta adaptacion.

Antes de coordinar una ronda, lee completos, una sola vez por ejecucion:

1. [Protocolo original](references/protocolo-original-v1.0.md): las 24 paginas, incluidas las Partes II y III y los anexos. El [PDF original](references/protocolo-original-v1.0.pdf) resuelve dudas de transcripcion o tablas.
2. [Adaptacion para ChatGPT y Codex](references/adaptacion-openai.md): resuelve contradicciones y documenta capacidades, limites y ejecucion real. Sus cambios explicitos prevalecen sobre el original para esta instalacion; lo demas conserva el original.

Respeta las instrucciones del usuario, las reglas aplicables del proyecto y los permisos efectivos. No reemplaces una metodologia de negocio ni otro proceso obligatorio invocado por el usuario con este protocolo. Cuando corresponda, consulta primero sus fuentes de verdad.

## Apertura

Recupera del pedido y del contexto las respuestas existentes. En una unica tanda, pregunta solo lo que falte, conservando estos numeros:

1. Industria o rubro.
2. Especialidades requeridas (opcional; si falta, elegir y declarar).
3. Objetivo general: que averiguar, decidir o construir (obligatorio).
4. Restricciones o prohibiciones.
5. Ubicacion de los insumos existentes.
6. Necesidad de buscar fuentes externas.
7. Modelo preferido (opcional; sujeto a disponibilidad y a la adaptacion).

Responde en el idioma del usuario; para espanol usa tildes correctas y voseo cuando corresponda. Si existe una herramienta de preguntas asincronicas, puede contener la tanda numerada en una sola pregunta de texto libre. No pidas archivos mediante una herramienta que solo recibe texto.

Sin objetivo no abras la ronda. Da oportunidad de responder los campos opcionales antes de aplicar defaults. No conviertas silencios en autorizaciones. Despues de la apertura, resuelve las ambiguedades razonables, declara supuestos y modela ramas cuando el efecto sea material. Una necesidad real de acceso, autorizacion o dato determinante puede requerir otra consulta: explicala con un codigo estable.

## Ejecucion

1. Elige y declara la talla: respuesta directa, ronda corta o completa. El techo de recursos no es una meta. En respuesta directa, contesta y cita; no fabriques equipos, carpetas o votaciones sin necesidad.
2. En ronda corta o completa, prepara la ficha A-G, pregunta decidible, insumos identificados y composicion. Revisa decisiones previas accesibles; no inventes un registro si no existe. Declara capacidades, limites de tiempo/llamadas y controles disponibles.
3. Si el entorno permite archivos, crea una carpeta exclusiva y vacia dentro de una ubicacion permitida. Usa la estructura del original, con `control/`, ganchos y pasos fechados, y las convenciones de trabajo y entregables del entorno. Si solo hay conversacion o archivos descargables, aplica la alternativa declarada en la adaptacion; no inventes rutas ni persistencia.
4. Para rondas completas utiliza subagentes independientes, sin heredar el historial de la coordinacion. Pasa a cada uno solo su paquete de lanzamiento y los insumos necesarios. Verifica el aislamiento antes de la investigacion ciega. No simules independencia narrando varios personajes desde la misma conversacion. Los especialistas adicionales, C y los revisores se ejecutan en tandas si hace falta.
5. Ejecuta pre-registros A/B por separado, sellalos con SHA-256 y deja evidencia del chequeo. Luego corre la generacion ciega. Conserva los pre-registros sin sobrescribirlos, incluso si cambia la hipotesis.
6. Cruza los resultados solo despues de cerrar ambos informes ciegos. Maximo tres sesiones, o el techo declarado si llega antes. Si converge, pasa al cierre. Si persiste desacuerdo, prepara su reporte y convoca C solo para esos puntos. Conserva los votos en minoria y lo irresoluble.
7. Cierra fichas con alternativas, evidencia, disenso, confianza y condiciones de revision. Abre paquetes para decisiones con efecto, con voto, ejecucion, verificacion y fecha. Una aprobacion futura o una accion propuesta nunca se registra como ejecutada.
8. Aplica las cinco revisiones de D3 con contexto independiente del autor: numeros, tiempo, ya decidido, personas y efecto. En ronda corta se mantiene esta revision; no omitirla por la abreviatura de fases del original. Corrige los hallazgos y conserva sus informes.
9. Entrega el documento unico en el orden de la Fase 7 y con las reglas completas de la Parte II. Haz controles reales de integridad y prueba el HTML en un navegador, incluidos votos, notas, recoleccion, respaldo visible e impresion. Registra fallos o comprobaciones no disponibles sin presentarlos como aprobados.

No pidas permiso para avanzar entre fases ya autorizadas. Da actualizaciones breves de progreso cuando la plataforma lo requiera; no son entregas parciales ni pedidos de decision.

## Evidencia y controles

Etiqueta afirmaciones sustantivas NORMA, DATO, INFERENCIA o SUPUESTO. Cada DATO conserva fuente, unidad/denominador cuando corresponda y fecha de corte; cada NORMA, su articulo o clausula. Registra nuevas fuentes antes de usarlas y guarda el momento en que se incorporaron. No conviertas consenso de agentes en evidencia independiente del mundo real.

Ejecuta H1-H5 segun su alcance verificable en la adaptacion. Usa scripts/herramientas para hashes, campos y referencias; no declares un control externo superado por una afirmacion del propio modelo. Lo que falte queda PENDIENTE y limita la confianza de las conclusiones dependientes. Un control FALLADO se corrige o se declara contaminacion; no se lo transforma en PENDIENTE para cerrar.

Los ganchos y checkpoints permiten retomar, pero no despiertan procesos. Lanza/reactiva los agentes con la herramienta disponible y verifica su primer avance. Sin supervisor externo activo, declara D4 no implementado; no instales servicios ni programes avisos por inferencia.

## Entrega y alcance

En las rondas, produce un HTML autocontenido, sin recursos externos, con decisiones codificadas estables, los siete componentes de cada bloque, color y consecuencia, y cuatro votos: APROBAR, APROBAR CON CONDICION, REVISAR y RECHAZAR. La UI real lleva tildes correctas. Incluye el recolector y un cuadro visible para copia manual. Declara la persistencia real de respuestas; no prometas que sobreviven a cerrar el archivo sin probarlo. Usa A4 para salidas imprimibles salvo preferencia distinta del usuario. Numera las paginas de los documentos paginados.

La ronda produce conocimiento y archivos propios. No publica, envia mensajes, escribe bases de datos ni modifica sistemas vivos, repositorios, configuraciones o credenciales sin autorizacion especifica. El HTML recoge votos: un clic no ejecuta cambios externos ni reemplaza los permisos de la plataforma.

Al terminar, borra el scratch inservible; conserva el rastro util y los entregables en el paquete de auditoria declarado. No borres ni muevas archivos ajenos encontrados accidentalmente: excluyelos y registra su ubicacion hasta contar con autorizacion.
