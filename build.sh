#!/bin/bash

set -eu

IMAGE="debian:bullseye-slim"
TARGET="$(dirname "$0" | xargs realpath)"
VERSION="0.8.1"

while getopts "v:i:h" opt
do
    case "$opt" in
        v)
            VERSION="$OPTARG"
            ;;
        i)
            IMAGE="$OPTARG"
            ;;
        h)
            echo "Usage: $0 [-i image] [-v version]"
            exit 0
            ;;
        *)
            exit 1
            ;;
    esac
done

main() {
    docker run --rm --name gotypist-build-$$ \
                    --volume "$TARGET:/target" \
                    --workdir /target \
                    --env "VERSION=$VERSION" \
                    --user root "$IMAGE" \
                    sh entrypoint.sh
}

main
