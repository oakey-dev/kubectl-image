FROM alpine:3.24.4@sha256:e2944c2947c8cabdd6b23a2ebcf8094a9f3d53ca9e0340edd065237ab74c18c0

# Add this label to your Dockerfile
LABEL org.opencontainers.image.source=https://github.com/oakey-dev/kubectl-image

RUN apk update && apk add --no-cache \
    "bash=5.3.9-r1" \
    "jq=1.8.2-r0" \
    "kubectl=1.36.1-r2" \
    "openssl=3.5.9-r0" \
    "yq-go=4.53.3-r2"
