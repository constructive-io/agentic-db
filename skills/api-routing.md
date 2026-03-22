---
name: agentic-db-api-routing
description: API routing patterns for agentic-db provision and export — header-based (cnc server) vs domain-based (constructive dev server). Covers when to use each mode and how to configure endpoints.
---

# API Routing Patterns

agentic-db communicates with the constructive platform via GraphQL. There are two routing modes depending on which server you're running.

## Header-Based Routing (cnc server, port 3000)

**Use this when:** Running the standalone cnc server (`npx cnc server`).

All endpoints go through `localhost:3000/graphql` with headers to select the target schema:

```
X-Meta-Schema: metaschema     (for platform API — provision, schema builder)
X-Schemata: <app_public_name> (for app API — data CRUD, schema export)
X-Database-Id: <database_uuid> (alternative to X-Schemata)
```

**Config (`packages/provision/src/config.ts`):**
```typescript
apiEndpoint: 'http://localhost:3000/graphql',
authEndpoint: 'http://localhost:3000/graphql',
```

**Starting cnc server:**
```bash
cd /path/to/constructive-db  # or constructive monorepo graphql/server/
eval "$(pgpm env)" && API_IS_PUBLIC=false npx cnc server --port 3000 --origin '*' --yes
```

**Key:** `API_IS_PUBLIC=false` enables header-based routing. The SDK client in `helpers.ts` automatically adds `X-Meta-Schema: metaschema` headers for provision calls.

## Domain-Based Routing (constructive dev server, port 5555)

**Use this when:** Running the full constructive monorepo dev server (`pnpm dev`).

Uses subdomains to route to different services:

```
api.localhost:5555    -> Platform API (schema builder, provision)
auth.localhost:5555   -> Auth API (sign up, sign in)
app-public-*.localhost:5555 -> App API (data CRUD)
```

**Config:**
```typescript
apiEndpoint: 'http://api.localhost:5555/graphql',
authEndpoint: 'http://auth.localhost:5555/graphql',
```

**Note:** This mode requires the full constructive monorepo running with `pnpm dev`. It provides auth modules, domain registration, and other services not available in the standalone cnc server.

## Which Mode to Use

| Scenario | Mode | Server |
|----------|------|--------|
| Local dev with cnc server | Header-based | `npx cnc server` on port 3000 |
| Local dev with constructive monorepo | Domain-based | `pnpm dev` on port 5555 |
| Fresh database (no registered domains) | Header-based | cnc server |
| CI/CD | Header-based | cnc server |

**Default:** Header-based routing (cnc server). This is simpler and doesn't require DNS/vhost configuration.

## Environment Variables

Set in `.env` at repo root and/or `packages/provision/.env`:

| Variable | Description | Example |
|----------|-------------|---------|
| `API_ENDPOINT` | Platform API URL | `http://localhost:3000/graphql` |
| `AUTH_ENDPOINT` | Auth API URL | `http://localhost:3000/graphql` |
| `APP_SCHEMATA` | App-public schema name (for export) | `agentic_db_1774141103256_app_public` |
| `DATABASE_ID` | Database UUID | `019d130c-edc8-7abe-b39e-3935c59e44fe` |
| `DATABASE_NAME` | Database name | `agentic-db-1774141103256` |
| `ACCESS_TOKEN` | Auth token from create-db | (auto-set) |

## Finding APP_SCHEMATA

After provisioning, find the correct app_public schema name:

```bash
eval "$(pgpm env)"
psql -d postgres -t -c "SELECT schema_name FROM information_schema.schemata WHERE schema_name LIKE '%app_public%' ORDER BY schema_name;"
```

**Important:** If multiple provisions were run on the same database, there will be multiple app_public schemas. Use the one matching your current database timestamp.

## Schema Export Routing

The schema export script (`sdk/schemas/scripts/export.ts`) uses header-based routing when `APP_SCHEMATA` or `DATABASE_ID` env vars are set. It sends:

```
X-Schemata: <APP_SCHEMATA>
X-Database-Id: <DATABASE_ID>
```

Uses `http.request` (not `fetch`) because Node.js `fetch` cannot override the `Host` header on IPv6 addresses.

## Troubleshooting

- **HTTP 404 on schema export**: APP_SCHEMATA not set or wrong value. Find it with the psql query above.
- **HTTP 500 "naming conflict"**: APP_SCHEMATA points to an old schema with conflicting relations. Update to the correct schema name.
- **"ECONNREFUSED" on localhost:3000**: cnc server not running. Start it with the command above.
- **Domain-based routing not working with cnc**: cnc server doesn't support domain-based routing. Use header-based routing instead.
- **Auth endpoint returning 401**: Check ACCESS_TOKEN is set (auto-populated by create-db script).
