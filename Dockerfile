FROM alpine:latest

# Define these arguments so they can be overridden
ARG PB_VERSION=0.34.0
ARG PLATFORM=linux
# TARGETARCH is automatically set by Docker Buildx (e.g., amd64, arm64)
ARG TARGETARCH

RUN apk add --no-cache \
    unzip \
    ca-certificates

# Download using TARGETARCH to get the correct binary for the architecture being built
ADD https://github.com/pocketbase/pocketbase/releases/download/v${PB_VERSION}/pocketbase_${PB_VERSION}_${PLATFORM}_${TARGETARCH}.zip /tmp/pb.zip
RUN unzip /tmp/pb.zip -d /pb/

# uncomment to copy the local pb_migrations dir into the image
# COPY ./pb_migrations /pb/pb_migrations

# uncomment to copy the local pb_hooks dir into the image
# COPY ./pb_hooks /pb/pb_hooks

EXPOSE 8080

CMD ["/pb/pocketbase", "serve", "--http=0.0.0.0:8080"]