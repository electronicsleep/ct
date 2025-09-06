#!/bin/bash
# Build/Run Rust pyo3 library
set -e
UNAME=$(uname)
if [[ "$UNAME" == "Linux" ]]; then
  cargo rustc --release
  cp target/release/libcloudtools.so src/libcloudtools.so
elif [[ "$UNAME" == "Darwin" ]]; then
  cargo rustc --release -- -C link-arg=-undefined -C link-arg=dynamic_lookup
  cp target/release/libcloudtools.dylib src/libcloudtools.so
fi

echo "build ok"
python3 src/rust.py hello
echo "python3 rust.py ok"
