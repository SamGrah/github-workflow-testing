FROM node:20-alpine3.16

COPY ./index.js ./package.json ./package-lock.json /

RUN npm ci -omit=dev

EXPOSE 3000

ENTRYPOINT [ "node", "./index.js" ]