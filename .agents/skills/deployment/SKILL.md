---
name: deployment
description: "Deploy and manage the agentic-db stack — Docker Compose for local development, Ollama GPU/external configurations, and troubleshooting. Use when asked about deployment, Docker, Ollama setup, GPU acceleration, or infrastructure."
---

# Deployment & Infrastructure

## Decision Tree: Which Ollama Mode?

```
Are you on Mac (Apple Silicon)?
  YES → Use external Ollama (host Ollama with Metal GPU)
        Docker Compose: docker compose up -d postgres
  NO →
    Do you have NVIDIA GPU on your Docker host?
      YES → Docker Compose: docker compose --profile gpu up -d
      NO → Use default (CPU)
            Docker Compose: docker compose up -d
```

**Key rule: On Mac, ALWAYS prefer external Ollama.** Docker on Mac runs in a Linux VM without Metal passthrough, so containerized Ollama gets zero GPU acceleration. Native Ollama on macOS uses Metal automatically.

## Docker Compose

The `docker-compose.yml` at repo root provides the local dev stack.

### Starting services

```bash
# CPU mode (default) — Postgres + Ollama on CPU
docker compose up -d

# GPU mode (NVIDIA) — Postgres + Ollama with GPU
# IMPORTANT: stop CPU ollama first if running
docker compose stop ollama
docker compose --profile gpu up -d

# External Ollama (Mac / already running on host)
# Start only Postgres, use host-native Ollama
docker compose up -d postgres
```

### Docker Compose profiles — how they work

- `ollama` (no profile) — starts with plain `docker compose up -d`
- `ollama-gpu` (profile: gpu) — only starts with `--profile gpu`
- Both share `container_name: pgpm-ollama` to prevent simultaneous execution
- **Caveat:** `docker compose --profile gpu up -d` will attempt to start BOTH services (services without profiles always start). The shared container name causes Docker to error. Workaround: stop `ollama` first, or target services explicitly: `docker compose up -d postgres ollama-gpu`

### Key settings

- Postgres image: `docker.io/constructiveio/postgres-plus:18`
- `shm_size: 2g` — required for bulk COPY with vector embeddings (768-dim). Default Docker shm is 64MB which causes "No space left on device" errors during pg_restore
- Postgres tuning via `-c` args: `shared_buffers=512MB`, `work_mem=64MB`, `maintenance_work_mem=512MB`, `max_wal_size=2GB`, `checkpoint_completion_target=0.9`, `effective_cache_size=2GB`
- 2GB shm_size is safe for all dev machines — it's a ceiling (tmpfs max), not actual RAM allocation

### pgpm docker start

The `pgpm docker start` command (in constructive-io/constructive) supports `--shm-size` flag (default: `2g`).

## Environment variables — important conventions

| Variable | Used by | Purpose |
|----------|---------|--------|
| `OLLAMA_URL` | Server/worker code | URL to reach Ollama API (e.g. `http://localhost:11434`) |
| `OLLAMA_HOST` | Ollama container | Ollama's own bind address (e.g. `0.0.0.0:11434`) |

**OLLAMA_URL vs OLLAMA_HOST**: The codebase uses `OLLAMA_URL` to locate Ollama from server/worker code. `OLLAMA_HOST` is Ollama's own config for its bind address. Do NOT confuse them.

## Troubleshooting

### "No space left on device" during pg_restore / COPY
**Cause:** Docker's default `/dev/shm` is 64MB. Bulk COPY of 768-dim vector arrays needs more.
**Fix:** Use `docker-compose.yml` (has `shm_size: 2g`) or `pgpm docker start --shm-size 2g`.

### Ollama is slow on Mac
**Cause:** Running Ollama inside Docker on Mac = no Metal GPU access (Linux VM).
**Fix:** Run Ollama natively (`brew install ollama && ollama serve`), use `docker compose up -d postgres` only.

### docker compose --profile gpu starts both Ollama services
**Cause:** Services without a `profiles` key always start. Both `ollama` and `ollama-gpu` would try to start.
**Fix:** Stop CPU ollama first (`docker compose stop ollama`), then `docker compose --profile gpu up -d`. Or target explicitly: `docker compose up -d postgres ollama-gpu`.
