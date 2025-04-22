#!/usr/bin/env bash
set -e

chmod +x setup.sh choose_python.sh run.sh
chmod +x .git/hooks/pre-commit

echo "Running setup.sh..."
./setup.sh

echo "Pre-commit hook configured."
echo "Direnv config (.envrc) ready. Run: direnv allow"

echo "Done."
