# @pgpm/function-resolution

<p align="center" width="100%">
  <img height="250" src="https://raw.githubusercontent.com/constructive-io/constructive/refs/heads/main/assets/outline-logo.svg" />
</p>

<p align="center" width="100%">
  <a href="https://github.com/constructive-io/pgpm-modules/actions/workflows/ci.yml">
    <img height="20" src="https://github.com/constructive-io/pgpm-modules/actions/workflows/ci.yml/badge.svg" />
  </a>
   <a href="https://github.com/constructive-io/pgpm-modules/blob/main/LICENSE"><img height="20" src="https://img.shields.io/badge/license-MIT-blue.svg"/></a>
   <a href="https://www.npmjs.com/package/@pgpm/function-resolution"><img height="20" src="https://img.shields.io/github/package-json/v/constructive-io/pgpm-modules?filename=packages%2Ffunction-resolution%2Fpackage.json"/></a>
</p>

Portable cross-scope function-definition resolution and resolver-aware enqueue

## Overview

`@pgpm/function-resolution` resolves which **function definition** should run for a given `(execution database, scope, entity, task_identifier)` and — for the job lane — enqueues the resulting work. It is built on [`@pgpm/app-scope`](https://www.npmjs.com/package/@pgpm/app-scope): it walks the ordered scope frames that `app_scope.frames` produces, probes each frame's per-scope definitions table in order, and takes the **first hit** (nearest scope wins).

The whole closure is portable. Every dynamic lookup is a `SELECT` against a dynamically-named table built with `format('%I')` + `EXECUTE ... USING` — **no AST/deparser runtime and no core-metaschema resolver functions** — so it can be installed into any provisioned database whose metaschema catalog is populated.

## Features

- **Nearest-wins resolution** — walks `app_scope.frames` most-specific first; the first matching definition wins.
- **Resolution vs. billing separation** — the scope-key that starts the resolution walk is distinct from the billing/metering `entity_id`, end to end.
- **Resolver-aware enqueue** — `function_resolution.enqueue` resolves (or trusts a supplied) definition, stamps `(function_definition_id, definition_scope)` and the definition's queue routing, then delegates the physical insert to the low-level `app_jobs.add_job` primitive.
- **Definition-less tasks allowed** — handler/system tasks (`email:*`, `sms:*`, maintenance, …) resolve to nothing and enqueue with a `NULL` pair, routed by `task_identifier` alone.
- **Hard contract** — a `NULL` execution scope raises; there is no implicit default.
- **Layering respected** — `app_jobs` stays the generic, resolver-free queue primitive; resolution lives one layer up.

## Installation

If you have `pgpm` installed:

```bash
pgpm install @pgpm/function-resolution
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

### Resolve a definition

```sql
-- winning definition for a task across the scope chain
SELECT function_definition_id, resolved_scope
FROM function_resolution.resolve(:database_id, :scope, :entity_id, 'my:task', false);
```

### Resolver-aware enqueue

```sql
-- resolves, routes, and inserts a job in one portable call
SELECT *
FROM function_resolution.enqueue(
  task_identifier := 'my:task',
  payload := '{"hello":"world"}'::json,
  scope := 'app'
);
```

The execution database is read from `jwt_private.current_database_id()`, exactly like `app_jobs.add_job`, so the enqueued row's `database_id` and the resolution database are always the same value.

## API

| Function | Purpose |
|---|---|
| `function_resolution.resolve(...)` | Cross-scope resolver — first-hit definition across the scope chain |
| `function_resolution.resolve_invocation(...)` | Invocation-lane resolver |
| `function_resolution.probe(...)` | Probe one scope's definitions table for a task |
| `function_resolution.definitions_location(...)` | Locate the per-scope definitions table |
| `function_resolution.routing(...)` | Queue routing (queue_name/priority/max_attempts) for a definition |
| `function_resolution.enqueue(...)` | Resolver-aware enqueue entry point (delegates the insert to `app_jobs.add_job`) |

## Testing

```bash
pnpm test
```

The suite includes a portability test that deploys the full closure and asserts the AST/deparser schemas and the old `metaschema_private` resolver functions are **absent**.

## Dependencies

- [`@pgpm/app-scope`](https://www.npmjs.com/package/@pgpm/app-scope) — ordered scope frames
- [`@pgpm/database-jobs`](https://www.npmjs.com/package/@pgpm/database-jobs) — `app_jobs.add_job` queue primitive
- [`@pgpm/jwt-claims`](https://www.npmjs.com/package/@pgpm/jwt-claims) — execution-database context
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
