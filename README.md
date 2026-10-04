# Bites Documentation

This repository publishes the customer-facing documentation at
[docs.bites.com](https://docs.bites.com). It contains product guides, Vision
operations, integrations, and the public API reference.

## Local development

Use Node.js 22 or newer:

```bash
npm ci
npm run dev
```

The local preview normally opens at `http://localhost:3000`.

## Validate a change

```bash
npm run check
helm lint deploy/helm/bites-docs
helm template bites-docs deploy/helm/bites-docs \
  --namespace production \
  --set-string image.tag=test >/tmp/bites-docs-rendered.yaml
```

## Publishing

Changes merge into `main` through a pull request. The production workflow
builds the pinned documentation runtime image, deploys its Helm chart to the
production GKE namespace, and verifies the public route.

Only public-safe, supported behavior belongs here. See [CONTRIBUTING.md](CONTRIBUTING.md)
for the content boundary and review checklist.
