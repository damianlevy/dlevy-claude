#!/usr/bin/env bash
# H5 - INTEGRIDAD DEL CIERRE. Corre antes de dar por emitida la fase 7.
# uso: h5.sh <ronda>
# Verifica: fichas de 60-cierre con campos obligatorios; HTML de 70-entrega con las 8 secciones;
# y que no haya nada en VERDE si hooks.log registra controles pendientes o fallados.
source "$(dirname "$0")/_common.sh"
CAMPOS="DECISION|ALTERNATIVAS|EVIDENCIA|DISENSO RESIDUAL|CONDICIONES DE REVISION|CONFIANZA"
fichas=$(find "$RONDA/60-cierre" -type f -name '*.md' 2>/dev/null)
[ -n "$fichas" ] || fallo "60-cierre no tiene fichas de decision"
for f in $fichas; do
  for c in $(echo "$CAMPOS" | tr '|' ' ' | sed 's/ RESIDUAL/_RESIDUAL/; s/ DE REVISION/_DE_REVISION/'); do
    c="${c//_/ }"
    grep -qiE "^#+ *$c|^\*\*$c|^$c *:" "$f" || fallo "$(basename "$f") sin campo $c"
  done
  grep -iA1 -E '^#+ *confianza|^\*\*confianza|^confianza' "$f" | grep -qiE '\b(alta|media|baja)\b' || fallo "$(basename "$f") confianza no declarada como alta/media/baja"
  if grep -iA1 -E '^#+ *disenso residual|^\*\*disenso residual|^disenso residual' "$f" | grep -qiE '^(ninguno|no registrado|n/a|-)?\s*$' ; then echo "  ALERTA: $(basename "$f") disenso residual vacio (B pudo anclarse en A)"; fi
done
html=$(find "$RONDA/70-entrega" -type f -name '*.html' 2>/dev/null | head -1)
if [ -z "$html" ]; then fallo "70-entrega no tiene HTML"; else
  for s in "DECISIONES" "SUPUESTOS DE ENCUADRE" "RESULTADO" "DISENSO RESIDUAL" "RECORRIDO" "ENTREGABLES" "CONTROL DE EJECUCION" "PAQUETE DE AUDITORIA"; do
    grep -qi "$s" "$html" || fallo "HTML sin seccion: $s"; done
  if [ -f "$CONTROL/hooks.log" ] && grep -qE 'PENDIENTE|FALLADO' "$CONTROL/hooks.log"; then
    verdes=$(grep -oiE 'class="[^"]*verde[^"]*"|data-semaforo="verde"' "$html" | wc -l | tr -d ' ')
    [ "$verdes" -eq 0 ] || fallo "hooks.log tiene controles pendientes o fallados y el HTML tiene $verdes items en VERDE"
  fi
fi
[ "$FALLOS" -eq 0 ] && ok "fichas completas, HTML con 8 secciones, semaforo coherente con hooks.log"
cierre H5
