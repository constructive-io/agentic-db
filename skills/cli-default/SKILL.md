---
name: cli-default
description: CLI tool (agentic-db) for the default API — typed CRUD, unified search, and context/config commands for the 91 generated tables.
---

# cli-default

<!-- @constructive-io/graphql-codegen - keep the top-level shape in sync with generated commands -->

The `agentic-db` CLI wraps the generated ORM with a fluent per-table command
surface plus a small set of hand-authored top-level commands (`context`,
`config`, `auth`, `search`, `ask`, `init`, `gen`, `request-upload-url`,
`confirm-upload`, `provision-bucket`).

Per-entity commands are auto-generated from the GraphQL schema — there is one
subcommand per table in the generated ORM. See
[`sdk/cli/generated/cli/commands/`](../../sdk/cli/generated/cli/commands/) for
the authoritative list; common ones include `contact`, `company`, `note`,
`task`, `memory`, `conversation`, `message`, `agent`, `skill`, `rule`,
`project`, `goal`, `habit`, and their M:N junctions (`contact-company`,
`contact-note`, `task-project`, `goal-habit`, …).

## Usage

```bash
# Context management
agentic-db context create <name> --endpoint <url>
agentic-db context use <name>
agentic-db context list

# Authentication
agentic-db auth set-token <token>

# Config variables (provider, tty, format, …)
agentic-db config set <key> <value>
agentic-db config show

# CRUD for any generated table (e.g. contact)
agentic-db contact list --select id,firstName,lastName --json --tty false
agentic-db contact get --id <uuid> --select id,firstName --tty false
agentic-db contact create --firstName Alice --lastName Smith --select id --tty false
agentic-db contact update --id <uuid> --headline "Staff Engineer" --tty false
agentic-db contact delete --id <uuid> --tty false

# Unified search (vector + full-text) over one or more tables
agentic-db search "postgres distributed systems" \
  --tables contacts,memories,notes \
  --json --tty false

# RAG question-answering across tables
agentic-db ask "Who did I meet about the Q2 launch?" --tty false
```

## Examples

### Set up a new context and list contacts

```bash
agentic-db context create local --endpoint http://localhost:5000/graphql
agentic-db context use local
agentic-db auth set-token $AGENTIC_DB_TOKEN
agentic-db contact list --select id,firstName,lastName --json --tty false
```

### Non-interactive mode (for scripts and CI)

All commands accept `--tty false` (or `--no-tty`) to skip prompts and emit
JSON-only output suitable for piping:

```bash
agentic-db contact create \
  --firstName Frida --lastName Finch \
  --headline "CLI smoke test" \
  --select id,firstName --json --tty false
```

### Filtering and selecting fields

Filters use the same `where.<field>.<op>` flag syntax the ORM exposes:

```bash
agentic-db contact list \
  --where.email.likeInsensitive '%@example.com' \
  --select id,firstName,email \
  --json --tty false
```

## Known-good contracts

The end-to-end test suite in
[`packages/cli-e2e-tests/__tests__/cli-e2e.test.ts`](../../packages/cli-e2e-tests/__tests__/cli-e2e.test.ts)
pins the behavior of every example above — `config show`, `context list`,
`search --tables tasks`, `contact list`, `note list`, and a `contact create`
round-trip. If you add a new hand-authored top-level command, add a test in
that file so this skill and the CLI stay aligned.
