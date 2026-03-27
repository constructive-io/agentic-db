---
name: deployment
description: "Deploy and manage the agentic-db stack — Docker Compose, Kubernetes with kustomize overlays, Ollama GPU/external configurations, and troubleshooting. Use when asked about deployment, k8s, Docker, Ollama setup, GPU acceleration, or infrastructure."
---

# Deployment & Infrastructure

## Decision Tree: Which Ollama Mode?

```
Are you on Mac (Apple Silicon)?
  YES → Use external-ollama (host Ollama with Metal GPU)
        Docker Compose: docker compose up -d postgres
        K8s: kubectl apply -k deploy/k8s/overlays/external-ollama
  NO →
    Do you have NVIDIA GPUs in your k8s cluster?
      YES → Use gpu-ollama overlay
            K8s: kubectl apply -k deploy/k8s/overlays/gpu-ollama
      NO →
        Do you have NVIDIA GPU on your Docker host?
          YES → Docker Compose: docker compose --profile gpu up -d
          NO → Use default (CPU)
                Docker Compose: docker compose up -d
                K8s: kubectl apply -k deploy/k8s/
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

## Kubernetes (deploy/k8s/)

Kustomize-based manifests with base + overlays structure.

### Directory layout

```
deploy/k8s/
├── kustomization.yaml          # Root entry → default overlay
├── base/                       # Shared manifests
│   ├── kustomization.yaml
│   ├── namespace.yaml          # agentic-db namespace
│   ├── configmap.yaml          # postgres-config, server-config, ollama-config
│   ├── secrets.yaml.example    # Template (secrets.yaml is gitignored)
│   ├── postgres.yaml           # StatefulSet + PVC + Service
│   ├── server-public.yaml      # Deployment + Service (public API)
│   ├── server-admin.yaml       # Deployment + Service (admin API)
│   └── ollama.yaml             # Deployment + PVC + Service
└── overlays/
    ├── default/                # base + bundled Ollama (CPU)
    ├── external-ollama/        # base + ExternalName Service → host Ollama
    └── gpu-ollama/             # base + Ollama with nvidia.com/gpu
```

### Components

- **Postgres**: StatefulSet (not Deployment) with PVC (20Gi), vector-tuned config via `-c` args
- **Constructive GraphQL server**: Two Deployments — public and admin
- **Ollama**: Deployment with PVC (10Gi) for model storage

### Server image

- Image: `ghcr.io/constructive-io/constructive:latest` (multi-arch amd64+arm64)
- Start command: `constructive server --host 0.0.0.0 --port 3000 --origin *`
- Bundles `cnc`, `constructive`, and `pgpm` CLIs

### Deploying

```bash
# 1. Create secrets from template
cp deploy/k8s/base/secrets.yaml.example deploy/k8s/base/secrets.yaml
# Edit with real credentials

# 2. Apply (pick one overlay)
kubectl apply -k deploy/k8s/                              # default (CPU Ollama)
kubectl apply -k deploy/k8s/overlays/external-ollama       # host Ollama
kubectl apply -k deploy/k8s/overlays/gpu-ollama            # GPU Ollama

# 3. Watch pods
kubectl -n agentic-db get pods -w

# 4. Verify Postgres
kubectl -n agentic-db exec -it statefulset/postgres -- pg_isready

# 5. Pull embedding model (skip for external-ollama)
kubectl -n agentic-db exec -it deploy/ollama -- ollama pull nomic-embed-text
```

### Ollama overlays in detail

#### default (CPU)
Deploys Ollama inside the cluster on CPU. Simple, works everywhere, but slow for inference.

#### external-ollama (host machine)
Creates an ExternalName Service pointing at `host.docker.internal` — routes cluster traffic to Ollama running on the host machine. **Best for Mac/Apple Silicon.**

- No Ollama pod is deployed in the cluster
- Server pods use `OLLAMA_URL: http://ollama:11434` — the `ollama` Service resolves to the host
- If `host.docker.internal` doesn't work (kind on Linux, bare-metal), edit `overlays/external-ollama/ollama-external-service.yaml` and switch to the static Endpoints approach (commented out in file) with your host IP

Host setup:
```bash
brew install ollama     # macOS
ollama serve            # start the server
ollama pull nomic-embed-text  # pull the model
```

#### gpu-ollama (NVIDIA in k8s)
Patches the Ollama Deployment with `nvidia.com/gpu` resource requests and GPU node tolerations. Requires [NVIDIA k8s device plugin](https://github.com/NVIDIA/k8s-device-plugin).

### Environment variables — important conventions

| Variable | Used by | Purpose |
|----------|---------|--------|
| `OLLAMA_URL` | Server/worker code | URL to reach Ollama API (e.g. `http://ollama:11434`) |
| `OLLAMA_HOST` | Ollama container | Ollama's own bind address (e.g. `0.0.0.0:11434`) |
| `API_ENABLE_SERVICES` | Server | `false` for public, `true` for admin |
| `API_IS_PUBLIC` | Server | `true` for public, `false` for admin |
| `API_ANON_ROLE` | Server | `anonymous` (public), `administrator` (admin — sensitive!) |
| `API_ROLE_NAME` | Server | `authenticated` (public), `administrator` (admin) |
| `PGHOST` | Server | Postgres hostname (k8s: `postgres`) |

**OLLAMA_URL vs OLLAMA_HOST**: The codebase uses `OLLAMA_URL` to locate Ollama from server/worker code. `OLLAMA_HOST` is Ollama's own config for its bind address. Do NOT confuse them.

### Secrets

- `deploy/k8s/base/secrets.yaml` is gitignored (path: `deploy/k8s/base/secrets.yaml`)
- `deploy/k8s/base/secrets.yaml.example` is the committed template with placeholder values
- For production, create secrets directly: `kubectl -n agentic-db create secret generic postgres-secret --from-literal=POSTGRES_PASSWORD="$PGPASS"`

### Port forwarding (local access)

```bash
kubectl -n agentic-db port-forward svc/constructive-server-public 3000:3000
kubectl -n agentic-db port-forward svc/constructive-server-admin 3001:3000
kubectl -n agentic-db port-forward svc/postgres 5432:5432
kubectl -n agentic-db port-forward svc/ollama 11434:11434   # skip for external-ollama
```

### Teardown

```bash
kubectl delete -k deploy/k8s/
kubectl -n agentic-db delete pvc postgres-data ollama-data   # delete persistent data
```

## Troubleshooting

### "No space left on device" during pg_restore / COPY
**Cause:** Docker's default `/dev/shm` is 64MB. Bulk COPY of 768-dim vector arrays needs more.
**Fix:** Use `docker-compose.yml` (has `shm_size: 2g`) or `pgpm docker start --shm-size 2g`.

### Ollama is slow on Mac
**Cause:** Running Ollama inside Docker on Mac = no Metal GPU access (Linux VM).
**Fix:** Run Ollama natively (`brew install ollama && ollama serve`), use external-ollama overlay or `docker compose up -d postgres` only.

### `host.docker.internal` not resolving in k8s
**Cause:** Only works with Docker Desktop and minikube. Not available on kind (Linux), bare-metal, or cloud clusters.
**Fix:** Edit `overlays/external-ollama/ollama-external-service.yaml`, switch to static Endpoints with your host IP.

### docker compose --profile gpu starts both Ollama services
**Cause:** Services without a `profiles` key always start. Both `ollama` and `ollama-gpu` would try to start.
**Fix:** Stop CPU ollama first (`docker compose stop ollama`), then `docker compose --profile gpu up -d`. Or target explicitly: `docker compose up -d postgres ollama-gpu`.

### Admin API exposing administrator role
**Note:** `API_ANON_ROLE: administrator` on the admin server is by design (matches docker-compose.jobs.yml). This service must NEVER be exposed outside the cluster. Consider adding a NetworkPolicy to restrict access to in-cluster callers only.
