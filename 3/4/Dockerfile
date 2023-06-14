FROM docker:24-dind

RUN apk add --no-cache git

COPY build_and_publish.sh /usr/local/bin/build_and_publish.sh

ENTRYPOINT ["build_and_publish.sh"]