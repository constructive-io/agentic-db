# agentic-db

<p align="center" width="100%">
  <img height="250" src="https://raw.githubusercontent.com/constructive-io/constructive/refs/heads/main/assets/outline-logo.svg" />
</p>

<p align="center" width="100%">
  <a href="https://github.com/pyramation-studio/agentic-db/actions/workflows/ci.yml">
    <img height="20" src="https://github.com/pyramation-studio/agentic-db/actions/workflows/ci.yml/badge.svg" />
  </a>
</p>


## Getting Started

This workspace was generated with `pgpm init workspace`. For a complete guide on developing with pgpm workspaces, see [Workspaces: Organize Postgres](https://constructive.io/learn/modular-postgres/workspaces-organize-postgres).

### Quick Start

```sh
# Install dependencies
pnpm install

# Start PostgreSQL + Ollama (requires Docker)
docker compose up -d

# Load environment variables
eval "$(pgpm env)"

# Create a module
pgpm init

# Navigate to your module and run tests
cd packages/your-module
pnpm test:watch
```

### Prerequisites

- Node.js 20+
- pnpm
- Docker (with Compose V2)
- PostgreSQL client tools (`psql`)
- pgpm (`npm install -g pgpm`)

### Docker Setup

This repo includes a `docker-compose.yml` that starts PostgreSQL and Ollama with settings tuned for large vector workloads (embeddings, bulk restores, etc.):

```sh
# Start all services
docker compose up -d

# Stop all services (data is preserved in named volumes)
docker compose down

# Stop and delete all data
docker compose down -v
```

Key Postgres settings applied by the compose file:

| Setting | Value | Purpose |
|---------|-------|---------|
| `shm_size` | 2GB | Prevents "No space left on device" during bulk COPY of vector data |
| `shared_buffers` | 512MB | More RAM for caching table/index pages |
| `work_mem` | 64MB | Per-sort/hash memory for vector operations |
| `maintenance_work_mem` | 512MB | Used by pg_restore, VACUUM, CREATE INDEX |
| `max_wal_size` | 2GB | Reduces checkpoint frequency during bulk loads |

Data is persisted in named Docker volumes (`pgdata`, `ollama_data`) so it survives `docker compose down` / `docker compose up` cycles.

> **Note:** You can still use `pgpm docker start` for a quick default container, but `docker compose up -d` is recommended for agentic-db development since it includes Ollama and tuned Postgres settings.

See [Prerequisites](https://constructive.io/learn/quickstart/prerequisites) for detailed setup instructions.

## Database Provisioning & Export Workflow

Because `agentic-db` is built on the Constructive platform, the application schema must be provisioned via the SDK against the platform database (`constructive`), and then exported into `pgpm` modules for standalone installation.

### 1. Point GraphQL Server at the Platform DB

Before running any SDK provisioning commands, the Constructive GraphQL server must be running and connected to the main `constructive` platform database (where `api.localhost` and `auth.localhost` are exposed).

```bash
# Restart your GraphQL server with:
PGDATABASE=constructive npm run dev
```

### 2. Scaffold and Provision the Database

Run the provision scripts to scaffold a new `agentic-db-<timestamp>` database and apply all the tables, relations, search indexes, and RLS policies. The script will automatically enforce clean schema naming (`constructive.simple_schema_names`) via database-level settings.

```bash
cd packages/provision

# 1. Sign up admin user and create the database via API
pnpm run create-db

# 2. Run the SDK definitions to build the schema
pnpm run provision
```

### 3. Export as a pgpm Module

Now that the database is fully provisioned, you need to export the generated SQL schema and metadata into static `pgpm` packages (`agent-db` and `agent-db-services`). This is what enables you to track schema changes in git and deploy the database anywhere.

```bash
cd ../export

# Export the generated migrations into the workspace
pnpm run export
```
*This extracts everything from the provisioned database and writes the SQL migrations into your `packages/` directory.*

## Data Migration & Auto-Embedding Pipeline

This repository includes a background worker and Postgres triggers for auto-generating vector embeddings whenever records are created or updated.

### Migration Workflow

If you need to migrate data from an older schema (`agentdb`) into the newly provisioned format, follow these steps:

1. **Backup Existing Data**
   ```bash
   pg_dump -U postgres -d agentdb --clean --if-exists > ~/DatabaseBackups/agentdb/agentdb_latest.sql
   # Commit this file to the db-backups repository via Git LFS
   ```

2. **Run the Data Migration Script**
   Map the old rows (e.g., floating notes/memories) into the new junction tables (`contact_notes`, `company_notes`, etc.).

3. **Start the Auto-Embedding Worker**
   Because of the Postgres triggers in `packages/agent-db-embeddings`, inserting data into the new schema automatically queues embedding jobs.
   ```bash
   cd packages/agent-db-worker
   pnpm run start
   ```
   *The worker will instantly pick up the jobs and compute vector embeddings via Ollama or Claude for all migrated records!*

## Credits

**🛠 Built by the [Constructive](https://constructive.io) team — creators of modular Postgres tooling for secure, composable backends. If you like our work, contribute on [GitHub](https://github.com/constructive-io).**

## Disclaimer

AS DESCRIBED IN THE LICENSES, THE SOFTWARE IS PROVIDED "AS IS", AT YOUR OWN RISK, AND WITHOUT WARRANTIES OF ANY KIND.

No developer or entity involved in creating this software will be liable for any claims or damages whatsoever associated with your use, inability to use, or your interaction with other users of the code, including any direct, indirect, incidental, special, exemplary, punitive or consequential damages, or loss of profits, cryptocurrencies, tokens, or anything else of value.
