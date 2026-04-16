# @agentic-db/provision

SDK-based provisioning tool for `agentic-db`. Uses the Constructive TypeScript SDK to define blueprints (table schemas, relations, search indexes, RLS policies) and provision them against a running Constructive platform database.

This is a **private** package -- not published to npm. It's used during development to generate the database schema that gets exported as pgpm modules.

## Usage

```bash
# 1. Create a new database via the Constructive API
pnpm run create-db

# 2. Provision all schemas (CRM, agent, life_os, projects, email_calendar, runtime, autonomy)
pnpm run provision
```

### Prerequisites

- A running Constructive GraphQL server connected to the platform database
- Environment variables set (`eval "$(pgpm env)"`)

## Schema Definitions

Blueprints are defined in `src/schemas/`:

| File | Domain | Tables |
|------|--------|--------|
| `crm.ts` | CRM | contacts, companies, deals, events, venues, notes, interactions, touchpoints, tags, + detail tables |
| `agent.ts` | Agent | agents, tasks, skills, + junction tables |
| `life_os.ts` | Life OS | goals, habits, activity_logs, memories, trips, places |
| `projects.ts` | Projects | projects, expenses |
| `email_calendar.ts` | Email & Calendar | email_accounts, email_messages, email_threads, calendars, calendar_events |
| `runtime.ts` | Runtime | conversations, messages, tool_calls |
| `autonomy.ts` | Autonomy | policies, audit_logs |
| `cross-relations.ts` | Cross-domain | M:N junctions linking tables across domains |

## Workflow

The provision step is part of the full schema development cycle:

1. **Edit blueprints** in `src/schemas/` (add tables, fields, relations, search nodes)
2. **Provision** -- `pnpm run provision` applies the blueprints against the platform DB
3. **Export** -- `cd ../export && pnpm run export` extracts the schema as pgpm SQL modules
4. **Deploy** -- `pgpm deploy` installs the exported modules into any Postgres database

## Developing

```bash
# Build
pnpm build

# Clean
pnpm clean
```
