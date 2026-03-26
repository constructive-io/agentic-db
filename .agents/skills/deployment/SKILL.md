# Deployment & Infrastructure

## Docker Compose

The `docker-compose.yml` at repo root provides the local dev stack:

```bash
# Default (Postgres + CPU Ollama)
docker compose up -d

# GPU Ollama (NVIDIA only, requires NVIDIA Container Toolkit)
docker compose --profile gpu up -d

# Postgres only (use host-native Ollama)
docker compose up -d postgres
```

### Key settings
- Postgres image: `docker.io/constructiveio/postgres-plus:18`
- `shm_size: 2g` — required for bulk COPY with vector embeddings (768-dim)
- Postgres is tuned via `-c` args: `shared_buffers=512MB`, `work_mem=64MB`, `maintenance_work_mem=512MB`, `max_wal_size=2GB`
- Ollama and ollama-gpu share `container_name: pgpm-ollama` to prevent simultaneous execution

### pgpm docker start
The `pgpm docker start` command (in constructive-io/constructive) also supports `--shm-size` flag (default: `2g`).

## Kubernetes (deploy/k8s/)

Kustomize-based manifests with base + overlays structure.

### Components
- **Postgres**: StatefulSet with PVC (20Gi), vector-tuned config
- **Constructive GraphQL server**: Two Deployments — public (anonymous/authenticated) and admin (administrator role)
- **Ollama**: Deployment with PVC (10Gi) for model storage

### Server image
- Image: `ghcr.io/constructive-io/constructive:latest` (multi-arch amd64+arm64)
- Start command: `constructive server --host 0.0.0.0 --port 3000 --origin *`
- Bundles `cnc`, `constructive`, and `pgpm` CLIs

### Ollama overlays

| Overlay | Command | When to use |
|---------|---------|-------------|
| **default** | `kubectl apply -k deploy/k8s/` | Dev / no GPU |
| **external-ollama** | `kubectl apply -k deploy/k8s/overlays/external-ollama` | **Mac (Apple Silicon) — preferred!** Host Ollama with Metal GPU |
| **gpu-ollama** | `kubectl apply -k deploy/k8s/overlays/gpu-ollama` | NVIDIA GPU nodes in k8s cluster |

### Important: Mac / Apple Silicon
On Mac (especially Mac Studio, MacBook Pro M-series), **always use the external-ollama overlay**. Ollama running natively on macOS automatically uses Metal for GPU acceleration. Running Ollama inside a Docker container on Mac does NOT get GPU access — Docker on Mac runs in a Linux VM without Metal passthrough.

Setup:
1. `brew install ollama && ollama serve`
2. `ollama pull nomic-embed-text`
3. `kubectl apply -k deploy/k8s/overlays/external-ollama`

For Docker Compose on Mac: `docker compose up -d postgres` (skip Ollama container, use host-native).

### Secrets
- `secrets.yaml` is gitignored; `secrets.yaml.example` is the template
- Copy and fill before deploying: `cp deploy/k8s/base/secrets.yaml.example deploy/k8s/base/secrets.yaml`

### Environment variables
- Server pods use `OLLAMA_URL` (not `OLLAMA_HOST`) to locate Ollama — this matches the codebase convention
- `OLLAMA_HOST` is Ollama's own bind address (used inside the Ollama container)
- `API_ENABLE_SERVICES`: `false` for public server, `true` for admin server
- `API_ANON_ROLE`: `anonymous` (public), `administrator` (admin — sensitive, keep internal)

### Port forwarding
```bash
kubectl -n agentic-db port-forward svc/constructive-server-public 3000:3000
kubectl -n agentic-db port-forward svc/constructive-server-admin 3001:3000
kubectl -n agentic-db port-forward svc/postgres 5432:5432
kubectl -n agentic-db port-forward svc/ollama 11434:11434
```
