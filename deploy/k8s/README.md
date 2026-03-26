# Kubernetes Deployment

Kustomize-based Kubernetes manifests for deploying the agentic-db stack.

## Components

| Service | Image | Description |
|---------|-------|-------------|
| **postgres** | `constructiveio/postgres-plus:18` | PostgreSQL with pgvector + pg_search, tuned for vector workloads |
| **constructive-server-public** | `ghcr.io/constructive-io/constructive:latest` | Public GraphQL API (domain-based routing, anonymous/authenticated roles) |
| **constructive-server-admin** | `ghcr.io/constructive-io/constructive:latest` | Admin GraphQL API (header-based routing, administrator role) |
| **ollama** | `ollama/ollama:latest` | Local LLM inference for embedding generation |

## Ollama Overlays

Three deployment modes for Ollama, selectable via kustomize overlays:

| Overlay | When to use | Command |
|---------|-------------|---------|
| **default** | Development / no GPU available. Runs Ollama on CPU inside the cluster. | `kubectl apply -k deploy/k8s/` |
| **external-ollama** | Ollama already running on host machine with GPU acceleration (e.g. Apple Silicon, NVIDIA desktop). No Ollama pod in the cluster. | `kubectl apply -k deploy/k8s/overlays/external-ollama` |
| **gpu-ollama** | GPU-capable k8s nodes (NVIDIA device plugin installed). Runs Ollama inside the cluster with GPU scheduling. | `kubectl apply -k deploy/k8s/overlays/gpu-ollama` |

### Directory Layout

```
deploy/k8s/
├── kustomization.yaml          # Root entry (default overlay)
├── base/                       # Shared manifests (Postgres, servers, config)
│   ├── kustomization.yaml
│   ├── namespace.yaml
│   ├── configmap.yaml
│   ├── secrets.yaml.example
│   ├── postgres.yaml
│   ├── server-public.yaml
│   ├── server-admin.yaml
│   └── ollama.yaml             # Bundled Ollama Deployment + PVC + Service
└── overlays/
    ├── default/                # base + bundled Ollama (CPU)
    ├── external-ollama/        # base + ExternalName Service → host Ollama
    └── gpu-ollama/             # base + bundled Ollama with nvidia.com/gpu
```

## Quick Start

```bash
# 1. Create secrets from the example template
cp deploy/k8s/base/secrets.yaml.example deploy/k8s/base/secrets.yaml
# Edit secrets.yaml with real credentials before applying

# 2a. Default (bundled Ollama, CPU)
kubectl apply -k deploy/k8s/

# 2b. OR: Use host Ollama (already running with GPU on your machine)
kubectl apply -k deploy/k8s/overlays/external-ollama

# 2c. OR: GPU Ollama inside the cluster
kubectl apply -k deploy/k8s/overlays/gpu-ollama

# 3. Watch pods come up
kubectl -n agentic-db get pods -w

# 4. Verify Postgres is ready
kubectl -n agentic-db exec -it statefulset/postgres -- pg_isready

# 5. Pull the embedding model (skip for external-ollama)
kubectl -n agentic-db exec -it deploy/ollama -- ollama pull nomic-embed-text
```

## Prerequisites

- A Kubernetes cluster (minikube, kind, EKS, GKE, etc.)
- `kubectl` configured to point at your cluster
- `kustomize` (built into kubectl 1.14+)
- **external-ollama**: Ollama running on the host, accessible at `host.docker.internal:11434` (Docker Desktop / minikube) or a known IP
- **gpu-ollama**: [NVIDIA k8s device plugin](https://github.com/NVIDIA/k8s-device-plugin) installed on GPU nodes

## Configuration

### Secrets

**Before deploying to a real cluster**, update `base/secrets.yaml` with real credentials:

```bash
# Generate a strong password
PGPASS=$(openssl rand -base64 24)

# Create the secret directly (instead of using the yaml file)
kubectl -n agentic-db create secret generic postgres-secret \
  --from-literal=POSTGRES_PASSWORD="$PGPASS" \
  --from-literal=PGPASSWORD="$PGPASS"
```

### External Ollama

If `host.docker.internal` doesn't resolve in your cluster, edit
`overlays/external-ollama/ollama-external-service.yaml` and switch to
the static `Endpoints` approach (commented out in that file) with your
host machine's IP.

### Postgres Tuning

Postgres settings are passed as container args in `base/postgres.yaml`. The defaults are tuned for vector workloads:

| Setting | Value | Purpose |
|---------|-------|---------|
| `shared_buffers` | 512MB | Cache for table/index pages |
| `work_mem` | 64MB | Per-sort/hash memory for vector operations |
| `maintenance_work_mem` | 512MB | Used by pg_restore, VACUUM, CREATE INDEX |
| `max_wal_size` | 2GB | Reduces checkpoint frequency during bulk loads |
| `effective_cache_size` | 2GB | Query planner hint for OS cache |

### Storage

Both Postgres and Ollama use PersistentVolumeClaims:

- `postgres-data`: 20Gi (database files)
- `ollama-data`: 10Gi (downloaded models)

Adjust sizes in `base/postgres.yaml` and `base/ollama.yaml` as needed.

## Port Forwarding (local access)

```bash
# GraphQL API (public)
kubectl -n agentic-db port-forward svc/constructive-server-public 3000:3000

# GraphQL API (admin)
kubectl -n agentic-db port-forward svc/constructive-server-admin 3001:3000

# Postgres
kubectl -n agentic-db port-forward svc/postgres 5432:5432

# Ollama (skip for external-ollama overlay)
kubectl -n agentic-db port-forward svc/ollama 11434:11434
```

## Teardown

```bash
# Remove all resources (preserves PVCs by default)
kubectl delete -k deploy/k8s/

# Also delete persistent data
kubectl -n agentic-db delete pvc postgres-data ollama-data
```
