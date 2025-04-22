#!/usr/bin/env bash
set -e

if [ ! -d ".venv" ]; then
    echo "No virtualenv found. Run setup.sh first."
    exit 1
fi

source .venv/bin/activate

if [ -z "$1" ]; then
    echo "Usage: ./run.sh <script.py> [args...]"
    exit 1
fi

python "$@"
