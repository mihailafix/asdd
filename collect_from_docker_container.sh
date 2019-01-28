set -ex && mkdir -p ./build/release/bin
set -ex && docker create --name koson-gui-container koson-gui-image
set -ex && docker cp koson-gui-container:/src/build/release/bin/ ./build/release/
set -ex && docker rm koson-gui-container
