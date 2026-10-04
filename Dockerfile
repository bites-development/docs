FROM node:22-bookworm-slim

ENV CI=1 \
    NO_COLOR=1

WORKDIR /app

COPY --chown=node:node package.json package-lock.json .npmrc ./

USER node

RUN npm ci --omit=dev --ignore-scripts \
    && npm cache clean --force

COPY --chown=node:node . .

EXPOSE 3000

CMD ["npm", "run", "dev", "--", "--port", "3000"]
