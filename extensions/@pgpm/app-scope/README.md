# @pgpm/app-scope

<p align="center" width="100%">
  <img height="250" src="https://raw.githubusercontent.com/constructive-io/constructive/refs/heads/main/assets/outline-logo.svg" />
</p>

<p align="center" width="100%">
  <a href="https://github.com/constructive-io/pgpm-modules/actions/workflows/ci.yml">
    <img height="20" src="https://github.com/constructive-io/pgpm-modules/actions/workflows/ci.yml/badge.svg" />
  </a>
   <a href="https://github.com/constructive-io/pgpm-modules/blob/main/LICENSE"><img height="20" src="https://img.shields.io/badge/license-MIT-blue.svg"/></a>
   <a href="https://www.npmjs.com/package/@pgpm/app-scope"><img height="20" src="https://img.shields.io/github/package-json/v/constructive-io/pgpm-modules?filename=packages%2Fapp-scope%2Fpackage.json"/></a>
</p>

Portable scope-chain resolution primitive for PostgreSQL

## Overview

`@pgpm/app-scope` turns "where should I look this up?" into a single, ordered list of **scope frames**. Given an execution database, an execution scope, and (optionally) an entity, it produces the frames — most-specific first — that a nearest-wins lookup should walk. It is a general primitive: function resolution, limits, permissions, or any other scope-aware lookup can consume the same frames.

Every frame is `(scope, lookup_database_id, key_value)`:

- `scope` — the scope name (`team`, `department`, `org`, `app`, `database`, `platform`, …)
- `lookup_database_id` — the physical database whose per-scope table should be probed for that frame
- `key_value` — the scope key (entity id, or `database_id` for the synthetic `database` frame, or `NULL` for the global `app`/`platform` frames)

The module reads only the metaschema catalog tables (`@pgpm/metaschema-schema`, `@pgpm/metaschema-modules`) and builds its dynamic lookups with `format('%I')` + `EXECUTE ... USING` — **no AST/deparser runtime**, so it installs into any provisioned database whose catalog is populated.

## Features

- **Full per-database chain** — each database climbs its own `entity → … → org → app`, then falls through to the platform database's `database → org → app → platform`. The platform database is not a special case; it climbs the identical shape with `platform` as the terminal global frame.
- **Custom entities below org** — an entity scope (e.g. `team`) starts below the organization and climbs its membership tree (`team → department → org`).
- **Synthetic `database` frame** — `database` is not a real membership scope; it is hardcoded, keyed by `database_id`, and bridged to its owning org through `metaschema_public.database.owner_id`.
- **Hard contract** — a `NULL` execution scope raises; there is no implicit default.
- **Portable** — SELECT-only dynamic SQL, no AST/deparser, no core-metaschema runtime functions.

## Installation

If you have `pgpm` installed:

```bash
pgpm install @pgpm/app-scope
pgpm deploy
```

### Prerequisites

```bash
# Install pgpm CLI
npm install -g pgpm

# Start local Postgres (via Docker) and export env vars
pgpm docker start
eval "$(pgpm env)"
```

> **Tip:** Already running Postgres? Skip the Docker step and just export your `PG*` environment variables.

## Usage

### Ordered scope frames

```sql
-- team execution in a tenant database
SELECT scope, lookup_database_id, key_value
FROM app_scope.frames(:tenant_db, 'team', :team_id);
```

| Order | Database | Scope      | Key                 |
| ----: | -------- | ---------- | ------------------- |
|     0 | tenant   | team       | team_id             |
|     1 | tenant   | department | department_id       |
|     2 | tenant   | org        | org_id              |
|     3 | tenant   | app        | NULL                |
|     4 | platform | database   | platform_database_id|
|     5 | platform | org        | platform_org_id     |
|     6 | platform | app        | NULL                |
|     7 | platform | platform   | NULL                |

A consumer walks the frames top-to-bottom and takes the first hit.

### Platform database lookup

```sql
SELECT app_scope.platform_database_id();
```

This is the single sanctioned way to resolve the platform (control-plane) database id; it raises if no platform database is registered.

## API

| Function | Purpose |
|---|---|
| `app_scope.frames(database_id, execution_scope, entity_id)` | Ordered scope frames for a lookup (most-specific first) |
| `app_scope.local_frames(database_id, execution_scope, entity_id)` | One database's local chain (`entity → … → org → app`), no platform terminal |
| `app_scope.platform_database_id()` | The platform (control-plane) database id |
| `app_scope.membership_parent(database_id, scope)` | Membership type, parent scope, entity table + owner column for a scope |
| `app_scope.dyn_lookup_uuid(schema, table, column, id)` | Dynamic owner-FK SELECT used by the membership climb |

## Testing

```bash
pnpm test
```

## Dependencies

- [`@pgpm/metaschema-schema`](https://www.npmjs.com/package/@pgpm/metaschema-schema)
- [`@pgpm/metaschema-modules`](https://www.npmjs.com/package/@pgpm/metaschema-modules)
- [`@pgpm/verify`](https://www.npmjs.com/package/@pgpm/verify) (verify scripts)

## Related Tooling

* [pgpm](https://github.com/constructive-io/constructive/tree/main/pgpm/cli): **🖥️ PostgreSQL Package Manager** for modular Postgres development. Works with database workspaces, scaffolding, migrations, seeding, and installing database packages.
* [pgsql-test](https://github.com/constructive-io/constructive/tree/main/postgres/pgsql-test): **📊 Isolated testing environments** with per-test transaction rollbacks—ideal for integration tests, complex migrations, and RLS simulation.
* [supabase-test](https://github.com/constructive-io/constructive/tree/main/postgres/supabase-test): **🧪 Supabase-native test harness** preconfigured for the local Supabase stack—per-test rollbacks, JWT/role context helpers, and CI/GitHub Actions ready.
* [graphile-test](https://github.com/constructive-io/constructive/tree/main/graphile/graphile-test): **🔐 Authentication mocking** for Graphile-focused test helpers and emulating row-level security contexts.
* [pgsql-parser](https://github.com/constructive-io/pgsql-parser): **🔄 SQL conversion engine** that interprets and converts PostgreSQL syntax.
* [libpg-query-node](https://github.com/constructive-io/libpg-query-node): **🌉 Node.js bindings** for `libpg_query`, converting SQL into parse trees.
* [pg-proto-parser](https://github.com/constructive-io/pg-proto-parser): **📦 Protobuf parser** for parsing PostgreSQL Protocol Buffers definitions to generate TypeScript interfaces, utility functions, and JSON mappings for enums.

## Disclaimer

AS DESCRIBED IN THE LICENSES, THE SOFTWARE IS PROVIDED "AS IS", AT YOUR OWN RISK, AND WITHOUT WARRANTIES OF ANY KIND.

No developer or entity involved in creating this software will be liable for any claims or damages whatsoever associated with your use, inability to use, or your interaction with other users of the code, including any direct, indirect, incidental, special, exemplary, punitive or consequential damages, or loss of profits, cryptocurrencies, tokens, or anything else of value.
