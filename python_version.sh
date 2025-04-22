#!/usr/bin/env bash
set -e

echo "Available Python versions:"
pyenv versions

read -p "Enter the Python version you want to use (e.g. 3.10.4): " PY_VERSION

if ! pyenv versions --bare | grep -qx "$PY_VERSION"; then
    echo "Python $PY_VERSION not installed. Installing..."
    pyenv install "$PY_VERSION"
fi

pyenv local "$PY_VERSION"
rm -rf .venv
python -m venv .venv

echo "Python $PY_VERSION selected and virtualenv rebuilt."
