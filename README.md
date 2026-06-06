# myworld

My personal containerized environment. Ubuntu-based, with vim and [updateme](https://github.com/ca1ebd/updateme) pre-installed.

## Quick Install

Run this one-liner to download the Compose file and get instructions:

```bash
curl -fsSL https://raw.githubusercontent.com/ca1ebd/myworld/main/install.sh | sh
```

This downloads `docker-compose.yml` to `~/myworld/` and prints the command to launch the container.

## Manual Setup

### Pull

```bash
docker pull ghcr.io/ca1ebd/myworld:latest
```

### Run (Docker Compose)

```bash
docker compose run --rm myworld
```

### Run (plain Docker)

```bash
docker run -it --rm ghcr.io/ca1ebd/myworld:latest
```

## What's inside

| Tool | Purpose |
|------|---------|
| vim | Text editor |
| updateme | Daily terminal briefing: weather, headlines, and market data |
| python3 | Runtime for updateme |
| curl, git | General utilities |

## CI/CD

Every push to `main` builds and publishes a new image to [ghcr.io/ca1ebd/myworld](https://github.com/ca1ebd/myworld/pkgs/container/myworld).

Tags produced:
- `latest` — tracks the `main` branch
- `sha-<commit>` — pinned per-commit tag
