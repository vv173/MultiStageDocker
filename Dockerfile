FROM scratch as builder

ADD alpine-minirootfs-3.17.3-x86_64.tar.gz /

RUN apk update && \
    apk upgrade && \
    apk add --no-cache nodejs=18.14.2-r0 \
                        npm=9.1.2-r0 && \
    rm -rf /etc/apk/cache

CMD ["/bin/sh"]

