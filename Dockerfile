FROM node:22-alpine@sha256:5539840ce9d013fa13e3b9814c9353024be7ac75aca5db6d039504a56c04ea59

WORKDIR /app
COPY package.json package-lock.json ./
RUN npm ci

COPY . .

ENTRYPOINT [ "npm", "start" ]
