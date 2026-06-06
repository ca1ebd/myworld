#!/bin/sh
set -e

COMPOSE_URL="https://raw.githubusercontent.com/ca1ebd/myworld/main/docker-compose.yml"
DEST="$HOME/myworld"

echo "Installing myworld..."

if ! command -v docker >/dev/null 2>&1; then
  echo "Error: docker is not installed. Please install Docker first: https://docs.docker.com/get-docker/"
  exit 1
fi

mkdir -p "$DEST"
curl -fsSL "$COMPOSE_URL" -o "$DEST/docker-compose.yml"

echo ""
echo "Done! myworld installed to $DEST"
echo ""
echo "To start your environment:"
echo "  docker compose -f $DEST/docker-compose.yml run --rm myworld"
