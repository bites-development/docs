# Bites documentation project instructions

## Project

- This is the public Bites documentation site built with MDX and the Mint runtime.
- Site configuration and navigation live in `docs.json`.
- Run `npm run dev` for preview and `npm run check` for broken links.
- Reuse the existing logos, colors, components, and information architecture.

## Terminology

- Use **workspace** for the primary tenant and data boundary.
- Use **member** for someone participating in a workspace.
- Use **site** for a physical Vision location.
- Use **appliance** or **StoreBrain** for the Mac or Orin edge host.
- Use exact product names: BOOX, BitesSwitch, ProdAI, Mart, MartService,
  MartRental, and Bites Vision.

## Style

- Use active voice and second person.
- Use sentence case for headings.
- Keep pages task-oriented and state prerequisites before steps.
- Bold UI labels and format routes, commands, filenames, and values as code.
- Link to the next relevant task instead of duplicating an entire guide.
- Include workspace and permission behavior when it affects results.

## Public content boundary

Never publish secrets, real credentials, customer data, private infrastructure,
security findings, incident notes, provider handoffs, private commercial terms,
unlaunched roadmaps, release ledgers, implementation plans, or raw QA evidence.
Curate approved application documentation; do not mirror internal documentation
directories wholesale.
