# Pocketbase Docker

Simple Docker images for pocketbase.

## Usage

image: `ghcr.io/drakeapps/pocketbase`

Built for `linux/amd64,linux/arm64,linux/arm/v7,linux/ppc64le,linux/s390x`.

### Compose

Example `docker-compose` configurations are available in `docker-compose.yml`. This includes a local volume and docker volume options.

### Superuser

To create a superuser account, `exec` into the container and run `/pb/pocketbase superuser create {USER} {PASS}`.

For example:

```shell
$  docker exec -it repo-pocketbase-1 sh
# /pb/pocketbase superuser create rusty@rustyshackleford.com hunter2!
Successfully created new superuser "rusty@rustyshackleford.com"!
```

## Build

### Args

* `TARGETARCH` - Build architecture, i.e. `arm64`, `amd64`. Full list found on the [releases page](https://github.com/pocketbase/pocketbase/releases)
* `PB_VERSION` - Version of pocketbase to download.
