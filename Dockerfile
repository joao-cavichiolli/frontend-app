FROM node:carbon

ENV NODE_ENV development
RUN npm cache clean --force
RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

COPY . /usr/src/app
RUN npm cache clean --force
RUN npm i && npm run build

EXPOSE 80
ENTRYPOINT [ "npm", "start" ]
