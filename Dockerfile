FROM node:24-alpine@sha256:f36fed0b2129a8492535e2853c64fbdbd2d29dc1219ee3217023ca48aebd3787

WORKDIR /app
COPY package.json package-lock.json ./
RUN npm ci

COPY . .

ENTRYPOINT [ "npm", "start" ]
