FROM node:22.8.0-bookworm-slim

WORKDIR /app
COPY package.json .

ENV NODE_ENV production
ENV PORT 9999
RUN npm install

COPY . .

EXPOSE 9999

CMD ["node", "/app/server.js"]
