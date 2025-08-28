#!/bin/bash
uv venv
source .venv/bin/activate
uv pip install -r requirements.txt
uv pip install -r requirements_api.txt
src/ct.py --version
src/ct.py --help
