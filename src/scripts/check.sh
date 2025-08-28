#!/bin/bash
set -e
flake8 src/*.py
echo "Flake8 checks passed"
pyflakes src/*.py
echo "pyflakes checks passed"
ruff check
