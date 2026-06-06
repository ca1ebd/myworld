# myworld

My personal containerized environment. Ubuntu-based, with vim and [updateme](https://github.com/ca1ebd/updateme) pre-installed.

## Pull

```bash
docker pull ghcr.io/ca1ebd/myworld:latest
```

## Run

```bash
docker run -it ghcr.io/ca1ebd/myworld:latest
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
