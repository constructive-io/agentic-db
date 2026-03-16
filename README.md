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

# Start PostgreSQL (requires Docker)
pgpm docker start

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
- Docker
- PostgreSQL client tools (`psql`)
- pgpm (`npm install -g pgpm`)

See [Prerequisites](https://constructive.io/learn/quickstart/prerequisites) for detailed setup instructions.

## Credits

**🛠 Built by the [Constructive](https://constructive.io) team — creators of modular Postgres tooling for secure, composable backends. If you like our work, contribute on [GitHub](https://github.com/constructive-io).**

## Disclaimer

AS DESCRIBED IN THE LICENSES, THE SOFTWARE IS PROVIDED "AS IS", AT YOUR OWN RISK, AND WITHOUT WARRANTIES OF ANY KIND.

No developer or entity involved in creating this software will be liable for any claims or damages whatsoever associated with your use, inability to use, or your interaction with other users of the code, including any direct, indirect, incidental, special, exemplary, punitive or consequential damages, or loss of profits, cryptocurrencies, tokens, or anything else of value.

## Data Migration & Auto-Embedding Pipeline

This repository includes a background worker and Postgres triggers for auto-generating vector embeddings whenever records are created or updated.

### Provisioning the Database
To ensure the GraphQL server and database schema align perfectly without hash suffixes or dashes, you must run the provisioning process with the following environment variables:

```bash
# Set these in your environment or .env file before provisioning
export CONSTRUCTIVE_SIMPLE_SCHEMA_NAMES="true"
export CONSTRUCTIVE_SCHEMA_USE_UNDERSCORES="true"
```

This guarantees schemas are named cleanly (e.g., `agent_db_app_public` instead of `agent-db-services-hash-app-public`).

### Migration Workflow

If you need to migrate data from an older schema into the new format, follow these steps:

1. **Backup Existing Data**
   ```bash
   pg_dump -U postgres -d agentdb --clean --if-exists > ~/DatabaseBackups/agentdb/agentdb_latest.sql
   # Commit this file to the db-backups repository via Git LFS
   ```
2. **Provision the New Schema**
   Ensure your environment variables are set (see above), then run the provision scripts.
   ```bash
   cd packages/provision
   pnpm run start
   ```
3. **Run the Data Migration Script**
   Map the old rows (e.g., floating notes/memories) into the new junction tables (`contact_notes`, `company_notes`, etc.).
4. **Start the Auto-Embedding Worker**
   Because of the Postgres triggers in `packages/agent-db-embeddings`, inserting data into the new schema automatically queues embedding jobs.
   ```bash
   cd packages/agent-db-worker
   pnpm start
   ```
   *The worker will instantly pick up the jobs and compute vector embeddings via Ollama or Claude for all migrated records!*
