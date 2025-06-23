#!/bin/bash

# install_seismic_repo.sh
# Script to automate installation of the Seismic Resilience Plug-in

set -e

REPO_URL="https://github.com/ChimieleCode/preslam-ops-multicare.git"
REPO_DIR="preslam-ops-multicare.git"

echo "Cloning repository..."
git clone "$REPO_URL"

cd "$REPO_DIR"

echo "Creating Python virtual environment (.venv)..."
python3 -m venv .venv

echo "Activating virtual environment..."
source .venv/bin/activate

echo "Installing Python dependencies..."
pip install --upgrade pip
pip install -r requirements.txt

echo "Installation complete."
echo "To activate the virtual environment in the future, run:"
echo "  source $PWD/.venv/bin/activate"
