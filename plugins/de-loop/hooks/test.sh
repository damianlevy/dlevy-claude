#!/usr/bin/env bash
# Prueba de los hooks contra una ronda simulada. No toca nada fuera de un directorio temporal.
set -u
H="$(cd "$(dirname "$0")" && pwd)"; T=$(mktemp -d); R="$T/ronda-01"
mkdir -p "$R"/{00-encuadre,10-preregistro/A,10-preregistro/B,20-A,20-B,30-cruce,40-desacuerdo,50-C,60-cierre,70-entrega,control}
printf '# Ficha\n## D - Insumos\n- D1 Base operaciones, corte 31/07/2026\n- D2 Com. BCRA A 7000\n' > "$R/00-encuadre/ficha.md"
echo "[SUPUESTO] Hipotesis A." > "$R/10-preregistro/A/pre.md"; echo "[SUPUESTO] Hipotesis B." > "$R/10-preregistro/B/pre.md"
printf '# Informe A\nHallazgos:\n- [DATO D1] Mora 4,1%% al 31/07/2026.\n- [NORMA D2 art. 3] Tope 48 meses.\n[INFERENCIA] Responde a la tasa.\n' > "$R/20-A/informe.md"
esperar() { # $1 = 0 (aprobado) o 1 (fallado), $2 = descripcion, resto = comando
  local esp=$1 desc=$2; shift 2; "$@" >/dev/null 2>&1; local rc=$?
  if { [ "$esp" -eq 0 ] && [ "$rc" -eq 0 ]; } || { [ "$esp" -ne 0 ] && [ "$rc" -ne 0 ]; }; then echo "PASA  $desc"; else echo "ROMPE $desc (exit $rc)"; fi; }
esperar 0 "H1 sella"                        "$H/verify.sh" "$R" fase1
esperar 0 "H2 B limpio"                     "$H/verify.sh" "$R" pre-B
esperar 0 "H3+H4 informe A correcto"        "$H/verify.sh" "$R" informe "$R/20-A/informe.md"
cp "$R/20-A/informe.md" "$R/20-B/informe.md"
esperar 1 "H2 detecta B contaminado"        "$H/verify.sh" "$R" pre-B
printf '# Informe B\nLa mora bajo.\n[DATO D9] fuente no declarada.\n[DATO] sin id.\n' > "$R/20-B/informe.md"
esperar 1 "H3+H4 detectan informe B sucio"  "$H/verify.sh" "$R" informe "$R/20-B/informe.md"
esperar 0 "H1 verifica intacto"             "$H/verify.sh" "$R" fase3
echo "editado" >> "$R/10-preregistro/B/pre.md"
esperar 1 "H1 detecta pre-registro editado" "$H/verify.sh" "$R" fase3
printf '## Decision\nx\n## Alternativas\ny\n## Evidencia\nz\n## Disenso residual\nB objeta el mix.\n## Condiciones de revision\nw\n## Confianza\nmedia\n' > "$R/60-cierre/f1.md"
printf '<h1>Decisiones</h1><h1>Supuestos de encuadre</h1><h1>Resultado</h1><p class="verde">x</p><h1>Disenso residual</h1><h1>Recorrido</h1><h1>Entregables</h1><h1>Control de ejecucion</h1><h1>Paquete de auditoria</h1>' > "$R/70-entrega/r.html"
esperar 1 "H5 detecta verde con hooks fallados" "$H/verify.sh" "$R" fase7
sed -i.bak 's/verde/amarillo/' "$R/70-entrega/r.html"
esperar 0 "H5 aprueba cierre coherente"     "$H/verify.sh" "$R" fase7
echo; echo "hooks.log en $R/control/hooks.log"
