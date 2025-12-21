# Pocketbase Docker

Simple Docker images for pocketbase.

## Usage

image: `ghcr.io/drakeapps/pocketbase`

Built for `linux/amd64,linux/arm64,linux/arm/v7,linux/ppc64le,linux/s390x`.

### Compose

Example `docker-compose` configurations are available in `docker-compose.yml`. This includes a local volume and docker volume options.

## Build

### Args

* `TARGETARCH` - Build architecture, i.e. `arm64`, `amd64`. Full list found on the [releases page](https://github.com/pocketbase/pocketbase/releases)
* `PB_VERSION` - Version of pocketbase to download.
