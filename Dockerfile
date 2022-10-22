FROM alpine:latest AS builder

ARG NEBULA_RELEASE=v1.6.1
ADD https://github.com/slackhq/nebula/releases/download/${NEBULA_RELEASE}/nebula-linux-amd64.tar.gz /download/
RUN mkdir /extract && tar -xzvf /download/nebula-linux-amd64.tar.gz -C /extract


FROM scratch

COPY --from=builder /extract/ /
VOLUME ["/config"]
ENTRYPOINT ["/nebula"]
CMD ["-config", "/config/config.yml"]

