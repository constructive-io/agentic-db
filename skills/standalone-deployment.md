---
name: agentic-db-standalone-deployment
description: Deploy the Agentic DB directly as a standalone database using pgpm deploy (bypassing the Constructive platform multi-tenant provisioning). Useful for non-interactive database resets and clean rebuilds.
---

# Standalone Deployment (pgpm deploy)

While `pnpm run create-db` provisions a timestamped database inside the `constructive` platform, you can deploy the exported `agentic-db` packages directly into a clean, standalone Postgres database using `pgpm deploy`.

This is the preferred method for resetting the database locally without dealing with interactive CLI prompts or timestamped schema names.

## The Non-Interactive Deploy Command

```bash
PGHOST=localhost PGPORT=5432 PGUSER=postgres PGPASSWORD=password \
pnpm exec pgpm deploy \
  --createdb \
  --database agentic-db \
  --yes \
  --recursive \
  --package agentic-db
```

### Flags

| Flag | Purpose |
|---|---|
| `--createdb` | Creates the database if it doesn't exist. **Fails if DB already exists** — drop it first for clean rebuilds. |
| `--database agentic-db` | Explicit target database. Without this, pgpm guesses or prompts. |
| `--yes` | Bypasses all confirmation prompts. |
| `--recursive` | Deploys all dependent modules in the workspace (e.g., `agentic-db-services`). |
| `--package agentic-db` | Selects the target package. Without this, the CLI prompts "Choose a package to deploy". |

## Clean Rebuild Workflow

```bash
# 1. Drop existing database
PGPASSWORD=password psql -U postgres -h localhost -c 'DROP DATABASE IF EXISTS "agentic-db" WITH (FORCE);'

# 2. Deploy fresh
PGHOST=localhost PGPORT=5432 PGUSER=postgres PGPASSWORD=password \
pnpm exec pgpm deploy --createdb --database agentic-db --yes --recursive --package agentic-db
```

## Seeding the Golden User (Post-Deploy)

After deploying the standalone database, seed an admin user and forge an API key using the SQL backdoor (`agent-auth-sql.md`):

```sql
-- 1. Seed user
INSERT INTO agentic_db_users_public.users (id, username, display_name, type)
VALUES ('019d268c-ac74-7c84-bd45-a5a585a9f05f', 'agent', 'Agent', 1);

INSERT INTO agentic_db_emails_public.emails (owner_id, email, is_verified, is_primary)
VALUES ('019d268c-ac74-7c84-bd45-a5a585a9f05f', 'agent@example.com', TRUE, TRUE);

UPDATE agentic_db_memberships_public.app_memberships
SET is_admin = TRUE, is_owner = TRUE
WHERE actor_id = '019d268c-ac74-7c84-bd45-a5a585a9f05f';

-- 2. Set password
SELECT agentic_db_encrypted.set('019d268c-ac74-7c84-bd45-a5a585a9f05f', 'password_hash', 'agent-password', 'crypt');

-- 3. Forge 1-year API key (see agent-auth-sql.md Section 3)
```

## Discovering API Endpoints

Do **not** hardcode subdomains. Always resolve dynamically:

```sql
SELECT a.name AS api_name, d.subdomain, d.domain
FROM services_public.apis a
LEFT JOIN services_public.domains d ON d.api_id = a.id
ORDER BY a.name;
```

The `name` column tells you the purpose (`app`, `auth`, `admin`) and `subdomain.domain` gives you the exact URL to hit on port 3000.
