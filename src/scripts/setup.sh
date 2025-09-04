#!/bin/bash
set -euo pipefail

if [ -x "$(command -v uv)" ]; then
  echo 'INFO: uv is installed'
  uv venv
  source .venv/bin/activate
  uv pip install -r requirements.txt
  uv pip install -r requirements_api.txt
else
  echo 'INFO: uv is not installed'
  virtualenv .venv
  source .venv/bin/activate
  pip3 install -r requirements.txt
fi
src/ct.py --version
src/ct.py --help
