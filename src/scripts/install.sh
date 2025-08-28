#!/bin/bash
uv venv
source .venv/bin/activate
uv pip uninstall ct
uv pip install -r requirements.txt
uv pip install -r requirements_api.txt
uv pip install .
ct --version
ct --help
