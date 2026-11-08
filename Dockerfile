FROM alpine:3.24.4@sha256:f59abe656b692d901e184be3445e084786602108599d2a51d229c0f5a48c71bf

# Add this label to your Dockerfile
LABEL org.opencontainers.image.source=https://github.com/oakey-dev/kubectl-image

RUN apk update && apk add --no-cache \
    "bash=5.3.9-r1" \
    "jq=1.8.2-r0" \
    "kubectl=1.36.1-r2" \
    "openssl=3.5.9-r0" \
    "yq-go=4.53.3-r2"
