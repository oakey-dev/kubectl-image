FROM alpine:3.24.3@sha256:be2656061b536c1883c4034790e21d0a09c5aaaf51968b89368a3c0371ea2c9a

# Add this label to your Dockerfile
LABEL org.opencontainers.image.source=https://github.com/oakey-dev/kubectl-image

RUN apk update && apk add --no-cache \
    "bash=5.3.9-r1" \
    "jq=1.8.2-r0" \
    "kubectl=1.36.1-r2" \
    "openssl=3.5.9-r0" \
    "yq-go=4.53.3-r2"
