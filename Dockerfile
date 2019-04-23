FROM node:10.14.1-alpine

ARG NODE_ENV=production
ENV NODE_ENV=${NODE_ENV}

WORKDIR /code
COPY package*.json ./
COPY bower.json ./
COPY .bowerrc ./

RUN npm install -g bower@1.8.8
RUN npm install -g gulp@3.9.1

RUN npm install --production
RUN bower install --allow-root

COPY .env.config ./
RUN npm run config

COPY . .

CMD [ "gulp", "server" ]
