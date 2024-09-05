FROM alpine:latest
LABEL "org.opencontainers.image.source"="https://github.com/sanderv32/dns-utils"
LABEL "org.opencontainers.image.description"="Container with dns utilities"

RUN addgroup -g 1000 dns && adduser -D -u 1000 -G dns dns

RUN apk add --no-cache bind-tools curl wget
ADD entrypoint.sh /entrypoint.sh

USER dns
ENTRYPOINT ["/entrypoint.sh"]
