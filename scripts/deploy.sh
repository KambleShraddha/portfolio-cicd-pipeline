#!/usr/bin/env bash
set -euo pipefail
IMAGE=${1:-portfolio-site:latest}
echo "[deploy] would pull $IMAGE and run on port 80 (simulation)"
