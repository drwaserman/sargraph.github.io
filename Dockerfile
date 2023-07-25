FROM docker.io/node:16

ENV NODE_ENV production
ENV PORT 3000

WORKDIR /usr/src/app

COPY package*.json ./
RUN npm install --production && chown -R node:node /usr/src/app
COPY . .
RUN rm -rf node:node /usr/src/app/.npm

EXPOSE 3000

CMD [ "npm", "start" ]
