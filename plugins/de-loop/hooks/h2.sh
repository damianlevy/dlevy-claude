#!/usr/bin/env bash
# H2 - AISLAMIENTO DE B. Corre inmediatamente antes de lanzar B en fase 2.
# uso: h2.sh <ronda>
# Verifica: 20-B/ no contiene nada de 20-A/ (ni por nombre ni por contenido),
# y el paquete de lanzamiento de B no menciona al Equipo A ni sus conclusiones.
source "$(dirname "$0")/_common.sh"
A="$RONDA/20-A"; B="$RONDA/20-B"
mkdir -p "$B"
# 1) archivos de A copiados a B (mismo nombre o mismo hash)
if [ -d "$A" ]; then
  while IFS= read -r fa; do
    [ -z "$fa" ] && continue
    ha=$(sha "$fa")
    while IFS= read -r fb; do
      [ -z "$fb" ] && continue
      [ "$(basename "$fa")" = "$(basename "$fb")" ] && fallo "20-B contiene un archivo con el mismo nombre que 20-A: $(basename "$fb")"
      [ "$(sha "$fb")" = "$ha" ] && fallo "20-B contiene una copia exacta de ${fa#$RONDA/}: ${fb#$RONDA/}"
    done < <(find "$B" -type f ! -name '.*')
  done < <(find "$A" -type f ! -name '.*')
fi
# 2) referencias a A dentro del paquete de B
while IFS= read -r fb; do
  [ -z "$fb" ] && continue
  if grep -qiE 'equipo A\b|informe de A\b|conclusi[oó]n de A\b|20-A/' "$fb"; then
    fallo "${fb#$RONDA/} menciona al Equipo A o a su carpeta"; fi
done < <(find "$B" -type f ! -name '.*')
# 3) el pre-registro de A no esta en la carpeta de B
[ -z "$(find "$B" -type f -path '*preregistro*A*' 2>/dev/null)" ] || fallo "20-B contiene el pre-registro de A"
[ "$FALLOS" -eq 0 ] && ok "20-B no contiene artefactos de A ($(find "$B" -type f ! -name '.*' | wc -l | tr -d ' ') archivos revisados)"
cierre H2
