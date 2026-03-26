# Kubernetes Deployment

Kubernetes manifests for deploying the agentic-db stack.

## Components

| Service | Image | Description |
|---------|-------|-------------|
| **postgres** | `constructiveio/postgres-plus:18` | PostgreSQL with pgvector + pg_search, tuned for vector workloads |
| **constructive-server-public** | `ghcr.io/constructive-io/constructive:latest` | Public GraphQL API (domain-based routing, anonymous/authenticated roles) |
| **constructive-server-admin** | `ghcr.io/constructive-io/constructive:latest` | Admin GraphQL API (header-based routing, administrator role) |
| **ollama** | `ollama/ollama:latest` | Local LLM inference for embedding generation |

## Quick Start

```bash
# Create secrets from the example template
cp deploy/k8s/secrets.yaml.example deploy/k8s/secrets.yaml
# Edit secrets.yaml with real credentials before applying

# Apply all manifests
kubectl apply -k deploy/k8s/

# Watch pods come up
kubectl -n agentic-db get pods -w

# Verify Postgres is ready
kubectl -n agentic-db exec -it statefulset/postgres -- pg_isready

# Pull the embedding model into Ollama
kubectl -n agentic-db exec -it deploy/ollama -- ollama pull nomic-embed-text
```

## Prerequisites

- A Kubernetes cluster (minikube, kind, EKS, GKE, etc.)
- `kubectl` configured to point at your cluster
- `kustomize` (built into kubectl 1.14+)

## Configuration

### Secrets

**Before deploying to a real cluster**, update `secrets.yaml` with real credentials:

```bash
# Generate a strong password
PGPASS=$(openssl rand -base64 24)

# Create the secret directly (instead of using the yaml file)
kubectl -n agentic-db create secret generic postgres-secret \
  --from-literal=POSTGRES_PASSWORD="$PGPASS" \
  --from-literal=PGPASSWORD="$PGPASS"
```

### Postgres Tuning

Postgres settings are passed as container args in `postgres.yaml`. The defaults are tuned for vector workloads:

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

Adjust sizes in `postgres.yaml` and `ollama.yaml` as needed.

## Port Forwarding (local access)

```bash
# GraphQL API (public)
kubectl -n agentic-db port-forward svc/constructive-server-public 3000:3000

# GraphQL API (admin)
kubectl -n agentic-db port-forward svc/constructive-server-admin 3001:3000

# Postgres
kubectl -n agentic-db port-forward svc/postgres 5432:5432

# Ollama
kubectl -n agentic-db port-forward svc/ollama 11434:11434
```

## Teardown

```bash
# Remove all resources (preserves PVCs by default)
kubectl delete -k deploy/k8s/

# Also delete persistent data
kubectl -n agentic-db delete pvc postgres-data ollama-data
```
