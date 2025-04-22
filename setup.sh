#!/usr/bin/env bash
set -e

if command -v pyenv &>/dev/null; then
    eval "$(pyenv init -)"
fi

VENV_DIR=".venv"

if [ ! -d "$VENV_DIR" ]; then
    echo "Creating virtualenv in $VENV_DIR"
    python -m venv "$VENV_DIR"
fi

source "$VENV_DIR/bin/activate"
pip install --upgrade pip
pip install flake8

if ! grep -q "alias norminette=" ~/.bashrc; then
    echo "alias norminette='flake8'" >> ~/.bashrc
    echo "Alias 'norminette' added to ~/.bashrc"
fi
