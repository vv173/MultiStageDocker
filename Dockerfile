FROM scratch as builder

ADD alpine-minirootfs-3.17.3-x86_64.tar.gz /

RUN apk update && \
    apk upgrade && \
    apk add --no-cache nodejs=18.14.2-r0 \
                        npm=9.1.2-r0 && \
    rm -rf /etc/apk/cache

RUN addgroup -S node && \
    adduser -S node -G node

USER node

WORKDIR /home/node/app

COPY --chown=node:node server.js ./server.js
COPY --chown=node:node package.json ./package.json

RUN npm install



FROM node:16.20.0-alpine3.17

USER node

WORKDIR /home/node/app

COPY --from=builder /home/node/app/server.js ./server.js
COPY --from=builder /home/node/app/node_modules ./node_modules

EXPOSE 3000

ENTRYPOINT ["node", "server.js"]