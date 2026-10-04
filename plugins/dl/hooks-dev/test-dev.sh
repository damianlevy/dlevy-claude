#!/usr/bin/env bash
# Prueba de los hooks D1-D5 contra una ronda y un repo simulados en un directorio temporal.
set -u
H="$(cd "$(dirname "$0")" && pwd)"; T=$(mktemp -d); R="$T/ronda-dev"; REMOTO="$T/remoto.git"; WT="$T/wt"
mkdir -p "$R"/{originales,entregables,soporte,outputs/sql,Viejos,control}
git init -q --bare "$REMOTO"; git clone -q "$REMOTO" "$WT" 2>/dev/null
git -C "$WT" -c user.name=t -c user.email=t@t commit -q --allow-empty -m base; git -C "$WT" branch -M main; git -C "$WT" push -q origin main 2>/dev/null
git -C "$WT" checkout -q -b sr/prueba
esperar() { local esp=$1 desc=$2; shift 2; "$@" >/dev/null 2>&1; local rc=$?
  if { [ "$esp" -eq 0 ] && [ "$rc" -eq 0 ]; } || { [ "$esp" -ne 0 ] && [ "$rc" -ne 0 ]; }; then echo "PASA  $desc"; else echo "ROMPE $desc (exit $rc)"; fi; }
esperar 0 "D1 arranque limpio"                  "$H/verify-dev.sh" "$R" arranque "$WT"
echo x > "$WT/sucio.txt"
esperar 1 "D1 detecta arbol sucio"              "$H/verify-dev.sh" "$R" arranque "$WT"
rm "$WT/sucio.txt"; git -C "$WT" checkout -q main
esperar 1 "D1 detecta sesion parada en main"    "$H/verify-dev.sh" "$R" arranque "$WT"
git -C "$WT" checkout -q sr/prueba
printf "insert into app_settings(clave,valor) values ('nueva_funcion_habilitado','false');\n" > "$R/outputs/sql/01-flag.sql"
printf "BEGIN;\n... 1 fila\nROLLBACK;\n" > "$R/outputs/sql/01-flag.ensayo.log"
esperar 0 "D2+D3+D4 turno correcto"             "$H/verify-dev.sh" "$R" turno "$WT"
printf "insert into app_settings(clave,valor) values ('otra_habilitado','true');\n" > "$R/outputs/sql/02-on.sql"
esperar 1 "D2 detecta SQL sin ensayo"           "$H/d2.sh" "$R"
printf "BEGIN;\nERROR: relation no existe\nROLLBACK;\n" > "$R/outputs/sql/02-on.ensayo.log"
esperar 1 "D2 detecta ensayo con ERROR"         "$H/d2.sh" "$R"
printf "BEGIN;\nROLLBACK;\n" > "$R/outputs/sql/02-on.ensayo.log"
esperar 1 "D3 detecta flag que nace encendido"  "$H/d3.sh" "$R"
echo "otra_habilitado — voto DEC-3 del 1A" > "$R/outputs/FLAGS-ENCENDER-AUTORIZADO.md"
esperar 0 "D3 acepta flag autorizado por voto"  "$H/d3.sh" "$R"
echo "git push --force origin sr/prueba" > "$R/outputs/COMANDOS.log"
esperar 1 "D4 detecta push --force registrado"  "$H/d4.sh" "$R" "$WT"
rm "$R/outputs/COMANDOS.log"
touch "$R/outputs/CIERRE.flag"
esperar 1 "D5 detecta cierre sin reporte"       "$H/verify-dev.sh" "$R" cierre
echo "reporte" > "$R/outputs/PARA-COORDINADORA.md"; sleep 1; echo "<html>DEC-1</html>" > "$R/outputs/decisiones.html"
esperar 1 "D5 detecta HTML sin Libro de laudos y flag viejo" "$H/verify-dev.sh" "$R" cierre
printf "# Libro de laudos\n- 2026-09-07 DEC-1 verbatim: aprobar. EJECUTADO\n" > "$R/soporte/LIBRO-DE-LAUDOS.md"; sleep 1; touch "$R/outputs/CIERRE.flag"
esperar 0 "D5 aprueba cierre integro"           "$H/verify-dev.sh" "$R" cierre
echo; echo "hooks.log en $R/control/hooks.log"
