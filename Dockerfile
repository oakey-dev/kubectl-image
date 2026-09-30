FROM alpine:3.24.2

# Add this label to your Dockerfile
LABEL org.opencontainers.image.source=https://github.com/oakey-dev/kubectl-image

# renovate: datasource=repology depName=alpine_3_24/bash versioning=loose
ENV BASH_VERSION="5.3.9-r1"
# renovate: datasource=repology depName=alpine_3_24/jq versioning=loose
ENV JQ_VERSION="1.8.2-r0"
# renovate: datasource=repology depName=alpine_3_24/kubectl versioning=loose
ENV KUBECTL_VERSION="1.36.1-r1"
# renovate: datasource=repology depName=alpine_3_24/openssl versioning=loose
ENV OPENSSL_VERSION="3.5.9-r0"
# renovate: datasource=repology depName=alpine_3_24/yq-go versioning=loose
ENV YQ_GO_VERSION="4.53.3-r1"

RUN apk update && apk add --no-cache \
    "bash=${BASH_VERSION}" \
    "jq=${JQ_VERSION}" \
    "kubectl=${KUBECTL_VERSION}" \
    "openssl=${OPENSSL_VERSION}" \
    "yq-go=${YQ_GO_VERSION}"
