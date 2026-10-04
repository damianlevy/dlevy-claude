# de-loop

Dos piezas:

- **`coordinacion-desarrollo`** — construir: una sola dueña de producción, sub-coordinadoras
  radiales, sub-rondas en worktrees, PR sin merge, SQL ensayado, flags apagados, hooks D1–D5
  (`hooks-dev/`).
- **`decisiones-html`** — decidir: el HTML canónico de decisiones, con semáforo, marca de
  consecuencia y votación por bloque.

Comandos: `/subronda` (prepara una sub-ronda de desarrollo), `/decisiones` (arma el HTML de
decisiones).

La investigación profunda ya no vive acá: es `dl:loop`, en el plugin `dl` de este mismo
marketplace.

## Instalación

    claude plugin marketplace add damianlevy/dlevy-claude
    claude plugin install de-loop@dlevy

## Licencia

MIT.
