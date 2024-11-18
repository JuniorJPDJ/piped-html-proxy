FROM node:20-alpine@sha256:b1e0880c3af955867bc2f1944b49d20187beb7afa3f30173e15a97149ab7f5f1

WORKDIR /app
COPY package.json package-lock.json ./
RUN npm ci

COPY . .

ENTRYPOINT [ "npm", "start" ]
