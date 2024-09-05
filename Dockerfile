FROM --platform=$BUILDPLATFORM alpine:latest

RUN apk add --no-cache bind-tools curl wget
ADD entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
