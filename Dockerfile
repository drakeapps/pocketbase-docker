FROM alpine:latest

ARG PB_VERSION=0.35.0
ARG PLATFORM=linux
# Docker automatically sets these
ARG TARGETARCH
ARG TARGETVARIANT

RUN apk add --no-cache \
    unzip \
    ca-certificates

# Logic to map Docker's architecture names to PocketBase's filenames
# 1. If TARGETARCH is "arm", we assume "armv7" (PocketBase naming)
# 2. For everything else (amd64, arm64, ppc64le, s390x), we use the TARGETARCH directly.
RUN set -ex; \
    if [ "$TARGETARCH" = "arm" ]; then \
        PB_ARCH="armv7"; \
    else \
        PB_ARCH="$TARGETARCH"; \
    fi && \
    wget -O /tmp/pb.zip https://github.com/pocketbase/pocketbase/releases/download/v${PB_VERSION}/pocketbase_${PB_VERSION}_${PLATFORM}_${PB_ARCH}.zip

RUN unzip /tmp/pb.zip -d /pb/

EXPOSE 8080

CMD ["/pb/pocketbase", "serve", "--http=0.0.0.0:8080"]