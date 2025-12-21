# Pocketbase Docker

Warning: In active development and not complete

## Build

### Args

* `ARCH` - Build architecture, i.e. `arm64`, `amd64`. Full list found on the [releases page](https://github.com/pocketbase/pocketbase/releases)
* `PLATFORM` - Build platform, i.e. `linux`, `darwin`, `windows`. Full list found on the [releases page](https://github.com/pocketbase/pocketbase/releases)
* `PB_VERSION` - Version of pocketbase to download.

## Containers

There are 3 versions of the pocketbase container deployed based on the platform:

* `pocketbase` - `linux` in `arm64` and `amd64`
* `pocketbase-darwin` - `darwin` in `arm64` and `amd64`
* `pocketbase-windows` - `windows` in `amd64`

