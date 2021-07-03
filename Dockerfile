FROM asciidoctor/docker-asciidoctor


ENV CHROME_BIN /usr/bin/chromium-browser
ENV CHROMIUM_PATH /usr/bin/chromium-browser
ENV PUPPETEER_SKIP_CHROMIUM_DOWNLOAD true

RUN set -x \
    && apk update \
    && apk upgrade \
    && echo "http://dl-cdn.alpinelinux.org/alpine/edge/testing" > /etc/apk/repositories \
    && echo "http://dl-cdn.alpinelinux.org/alpine/edge/community" >> /etc/apk/repositories \
    && echo "http://dl-cdn.alpinelinux.org/alpine/edge/main" >> /etc/apk/repositories \
    && apk add --update nodejs npm \
    && apk add --no-cache g++ chromium \
    && npm install puppeteer@10.1.0 puppeteer-core@10.1.0


# Create a group and user and switch to it
RUN addgroup -S docgroup && adduser -S docuser -G docgroup \
    && chown -R docuser /documents \
    && chgrp -R docgroup /documents
USER docuser

ENV PATH=/documents/node_modules/.bin:$PATH
RUN npm install
