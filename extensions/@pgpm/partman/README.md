# @pgpm/partman

<p align="center" width="100%">
  <img height="250" src="https://raw.githubusercontent.com/constructive-io/constructive/refs/heads/main/assets/outline-logo.svg" />
</p>

<p align="center" width="100%">
  <a href="https://github.com/constructive-io/pgpm-modules/actions/workflows/ci.yml">
    <img height="20" src="https://github.com/constructive-io/pgpm-modules/actions/workflows/ci.yml/badge.svg" />
  </a>
   <a href="https://github.com/constructive-io/pgpm-modules/blob/main/LICENSE"><img height="20" src="https://img.shields.io/badge/license-MIT-blue.svg"/></a>
   <a href="https://www.npmjs.com/package/@pgpm/partman"><img height="20" src="https://img.shields.io/github/package-json/v/constructive-io/pgpm-modules?filename=packages%2Fpartman%2Fpackage.json"/></a>
</p>

pg_partman wrapper for pgpm — installs `pg_partman` into the `partman` schema

## Overview

`@pgpm/partman` wraps the [pg_partman](https://github.com/pgpartman/pg_partman) extension for use in pgpm-managed databases. It creates a dedicated `partman` schema and installs `pg_partman` into it, keeping partition management functions namespaced away from `public`.

## Features

- **Dedicated Schema**: Installs `pg_partman` into a `partman` schema instead of `public`
- **pgpm Integration**: Declare `pgpm-partman` in your control file `requires` to ensure partition management is available
- **Automated Partitioning**: Provides access to `partman.create_parent()`, `partman.run_maintenance()`, and other pg_partman functions

## Installation

If you have `pgpm` installed:

```bash
pgpm install @pgpm/partman
pgpm deploy
```

This is a quick way to get started. The sections below provide more detailed installation options.

### Prerequisites

```bash
# Install pgpm CLI
npm install -g pgpm

# Start local Postgres (via Docker) and export env vars
pgpm docker start
eval "$(pgpm env)"
```

> **Tip:** Already running Postgres? Skip the Docker step and just export your `PG*` environment variables.

> **Important:** Your PostgreSQL installation must include the `pg_partman` shared library. The `docker.io/constructiveio/postgres-plus:18` image includes pg_partman 5.4.3.

### Add to an Existing Package

```bash
# 1. Install the package
pgpm install @pgpm/partman

# 2. Deploy locally
pgpm deploy
```

### Add to a New Project

```bash
# 1. Create a workspace
pgpm init workspace

# 2. Create your first module
cd my-workspace
pgpm init

# 3. Install a package
cd packages/my-module
pgpm install @pgpm/partman

# 4. Deploy everything
pgpm deploy --createdb --database mydb1
```

## Usage

Once deployed, all pg_partman functions are available under the `partman` schema:

```sql
-- Create a partitioned parent table
SELECT partman.create_parent(
  p_parent_table := 'myschema.events',
  p_control := 'created_at',
  p_interval := '1 month',
  p_type := 'range'
);

-- Run maintenance (create new partitions, drop old ones)
SELECT partman.run_maintenance();

-- Check partition configuration
SELECT * FROM partman.part_config;
```

### As a pgpm Dependency

Add `pgpm-partman` to the `requires` field of any pgpm package that needs partition management:

```
requires = '...,pgpm-partman,...'
```

## PostgreSQL Extension Install Limitation

If installed directly as a PostgreSQL extension (via `CREATE EXTENSION pgpm-partman`), the compiled SQL file cannot include `CREATE EXTENSION` statements — PostgreSQL does not allow `CREATE EXTENSION` inside an extension script. In that case, `pg_partman` must be created manually before installing this extension:

```sql
CREATE SCHEMA IF NOT EXISTS partman;
CREATE EXTENSION pg_partman SCHEMA partman;
```

When deployed via pgpm, this limitation does not apply — pgpm handles the deploy scripts directly.

## Testing

```bash
pnpm test
```

## Related Tooling

* [pgpm](https://github.com/constructive-io/constructive/tree/main/pgpm/cli): PostgreSQL Package Manager for modular Postgres development
* [pgsql-test](https://github.com/constructive-io/constructive/tree/main/postgres/pgsql-test): Isolated testing environments with per-test transaction rollbacks
* [pg_partman](https://github.com/pgpartman/pg_partman): PostgreSQL Partition Manager

## Disclaimer

AS DESCRIBED IN THE LICENSES, THE SOFTWARE IS PROVIDED "AS IS", AT YOUR OWN RISK, AND WITHOUT WARRANTIES OF ANY KIND.

No developer or entity involved in creating this software will be liable for any claims or damages whatsoever associated with your use, inability to use, or your interaction with other users of the code, including any direct, indirect, incidental, special, exemplary, punitive or consequential damages, or loss of profits, cryptocurrencies, tokens, or anything else of value.
