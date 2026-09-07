# Changelog

## 1.2.1 — 2026-09-07

- Alcance y Efectos: salvaguarda efectiva de solo lectura (laudo DEC-11). El
  pooler de Supabase ignora `default_transaction_read_only` enviado por
  `PGOPTIONS`; toda consulta de una ronda de solo lectura se envuelve de forma
  explícita en `BEGIN READ ONLY; ... ROLLBACK;`. Prohibido el canario de
  escritura para comprobarla.

## 1.2.0 — 2026-09-07

- Protocolo v8 en `skills/loop-investigacion`.
- Entorno de ejecución: modo estándar (una sesión, equipos como subagentes)
  y modo distribuido (declarado por el usuario). Paquete de lanzamiento
  cerrado por equipo. Estructura fija de carpeta de ronda.
- Hooks H1–H5 implementados como scripts bash en `hooks/`, con runner
  `verify.sh`, `test.sh` y contrato documentado. 1A los ejecuta y copia la
  salida a `control/hooks.log`; prohibido darlos por aprobados sin salida.
- Formato de etiquetado obligatorio (`[DATO D3]`, `[NORMA D1 art. 12]`, ...)
  e ids de insumo `Dn` en el campo D, para que H3 y H4 sean mecánicos.
- Fase 7: sección 8 "Paquete de auditoría"; verde exige hooks ejecutados.
- `/ronda` apunta a los hooks del plugin por defecto.

## 1.1.1

- decisiones-html: línea obligatoria de sesión generadora bajo el título.
