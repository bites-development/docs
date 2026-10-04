# Contribute to Bites documentation

Documentation should help a customer complete a supported task without exposing
private implementation or operational details.

## Workflow

1. Create a branch from `main`.
2. Add or update MDX pages and navigation in `docs.json`.
3. Run `npm ci` when dependencies changed, then `npm run check`.
4. Preview with `npm run dev` when layout or components changed.
5. Submit a pull request with the product owner and engineering reviewer.

## Writing guidelines

- Use active voice and address the reader as “you”.
- Lead with the outcome, then give ordered actions.
- Use **bold** for UI labels and code formatting for routes, values, and commands.
- Use “workspace” for the data boundary, “member” for a workspace participant,
  and “site” for a physical Vision location.
- Document permissions, safety limits, and irreversible actions near the step.
- Use realistic placeholders; never copy a real credential into an example.

## Public content boundary

Publish supported product behavior, customer setup, public APIs, and safe
troubleshooting. Do not publish:

- passwords, access tokens, camera URLs, customer records, or environment files;
- internal security findings, incident notes, or infrastructure access details;
- provider handoff notes, private contacts, commercial terms, or test accounts;
- unlaunched roadmap items, implementation plans, release ledgers, or raw QA evidence;
- internal source-file paths unless they are necessary for an approved developer guide.

When adapting source documentation from the application repository, curate it
for the public audience instead of mirroring the entire `docs/` tree.
