# @agentic-db/cli

<p align="center" width="100%">
  <img height="120" src="https://raw.githubusercontent.com/constructive-io/constructive/refs/heads/main/assets/outline-logo.svg" />
</p>

<p align="center" width="100%">
  <a href="https://www.npmjs.com/package/@agentic-db/cli"><img height="20" src="https://img.shields.io/npm/v/@agentic-db/cli"/></a>
</p>

Command-line tool for interacting with the `agentic-db` database via GraphQL. Provides CRUD operations, search (vector, BM25, trigram, full-text), and admin commands for all 91 tables. Generated from the live schema using [`@constructive-io/graphql-codegen`](https://github.com/constructive-io/constructive).

## Install

```bash
npm install -g @agentic-db/cli
```

## Setup

```bash
# Create a context pointing at your GraphQL endpoint
agentic-db context create local --endpoint http://agentic.localhost:3000/graphql

# Set the active context
agentic-db context use local

# Authenticate
agentic-db auth set-token <your-jwt-token>
```

## Usage

```bash
# List contacts
agentic-db contact list

# Create a contact
agentic-db contact create --firstName Alice --lastName Smith --headline Engineer

# Get a contact by ID
agentic-db contact get --id <uuid>

# Update a contact
agentic-db contact update --id <uuid> --headline "Senior Engineer"

# Delete a contact
agentic-db contact delete --id <uuid>

# Full-text search
agentic-db contact search "database engineer"

# Vector similarity search (with auto-embedding via Ollama)
EMBEDDER_PROVIDER=ollama agentic-db contact search "semantic query" --auto-embed

# BM25 keyword search
agentic-db contact list --where.bm25EmbeddingText.query "search query"

# Trigram fuzzy search
agentic-db contact list --where.trgmFirstName.value "alice" --where.trgmFirstName.threshold 0.3
```

## Commands

Every table has `list`, `find-first`, `search`, `get`, `create`, `update`, and `delete` subcommands. Infrastructure commands:

| Command | Description |
|---------|-------------|
| `context create/list/use/delete` | Manage named API contexts (kubectl-style) |
| `auth set-token/status/logout` | Manage authentication tokens per context |
| `config get/set/list/delete` | Per-context key-value configuration |

See the full generated command reference in [`generated/cli/README.md`](generated/cli/README.md).

## Regenerating

```bash
# From the repo root (requires a running Constructive GraphQL server)
pnpm run generate:all
```

## Credits

Built by the [Constructive](https://constructive.io) team. Contribute on [GitHub](https://github.com/constructive-io).

## Disclaimer

AS DESCRIBED IN THE LICENSES, THE SOFTWARE IS PROVIDED "AS IS", AT YOUR OWN RISK, AND WITHOUT WARRANTIES OF ANY KIND.

No developer or entity involved in creating this software will be liable for any claims or damages whatsoever associated with your use, inability to use, or your interaction with other users of the code, including any direct, indirect, incidental, special, exemplary, punitive or consequential damages, or loss of profits, cryptocurrencies, tokens, or anything else of value.
