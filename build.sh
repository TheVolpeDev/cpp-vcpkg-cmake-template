#!/usr/bin/env bash
set -euo pipefail

preset="${1:-debug}"
preset="${preset,,}"

case "$preset" in
    debug|release)
        ;;
    *)
        echo "Usage: ./build.sh [debug|release]"
        exit 2
        ;;
esac

if [[ -z "${VCPKG_ROOT:-}" ]]; then
    echo "Error: VCPKG_ROOT is not set."
    echo
    echo "Example:"
    echo "export VCPKG_ROOT=\$HOME/Development/tools/vcpkg"
    exit 1
fi

cmake --preset "$preset"

cmake --build --preset "$preset"

ln -sfn "build/${preset^}/compile_commands.json" compile_commands.json

echo
echo "Build completed successfully."