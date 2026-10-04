# Bites docs deployment

The production documentation runs as a dedicated `bites-docs` deployment in
the `production` GKE namespace. The pod starts the pinned Mintlify CLI with
`mint dev --port 3000`. A cluster-local service exposes it to the shared
`bites-external` Gateway through an `HTTPRoute` for `docs.bites.com`.

The wildcard `*.bites.com` certificate in the `bites-edge-map` certificate map
covers TLS for this hostname. Cloudflare forwards the public hostname to the
shared Gateway address.

Every push to `main` runs the documentation link check, builds and pushes the
container, applies the Helm release, waits for the rollout, and verifies the
route directly against the Gateway origin.

## Local validation

```bash
npm ci --ignore-scripts
npm run check
helm lint deploy/helm/bites-docs
docker build -t bites-docs:local .
docker run --rm -p 3000:3000 bites-docs:local
```

Open `http://localhost:3000/vision/camera-setup`.

## Manual GKE deployment

```bash
helm upgrade --install bites-docs deploy/helm/bites-docs \
  --namespace production \
  --set-string image.tag=<immutable-image-tag> \
  --atomic \
  --timeout 15m
```

Do not route this hostname to the main dashboard service. Keeping the docs in a
separate release isolates its large preview runtime and independent rollout.
