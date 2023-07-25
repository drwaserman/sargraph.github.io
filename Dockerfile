FROM docker.io/node:16

ENV NODE_ENV production
ENV PORT 3000
ENV npm_config_cache /tmp/npm

WORKDIR /usr/src/app

COPY package*.json ./
RUN npm install --production
COPY . .

EXPOSE 3000

CMD [ "npm", "start" ]
