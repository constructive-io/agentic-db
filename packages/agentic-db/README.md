# agentic-db

<p align="center" width="100%">
  <img height="250" src="https://raw.githubusercontent.com/constructive-io/constructive/refs/heads/main/assets/outline-logo.svg" />
</p>

<p align="center" width="100%">
  <a href="https://github.com/constructive-io/agentic-db/actions/workflows/integration-test.yml">
    <img height="20" src="https://github.com/constructive-io/agentic-db/actions/workflows/integration-test.yml/badge.svg" />
  </a>
  <a href="https://github.com/constructive-io/agentic-db/blob/main/LICENSE"><img height="20" src="https://img.shields.io/badge/license-MIT-blue.svg"/></a>
  <a href="https://www.npmjs.com/package/agentic-db"><img height="20" src="https://img.shields.io/npm/v/agentic-db"/></a>
</p>

> **Give your coding agent a brain.**
> One `pgpm deploy` and Claude, Claude Code, Cursor, or Devin get persistent memory, chat history, a skill library, a tool registry, rules, tasks, runtime observability, and a full CRM/life-OS knowledge graph — all inside a Postgres database.

## Talk to your database

Once deployed, you can ask your agent questions in plain English and it translates them into semantic, keyword, fuzzy, and spatial queries against the schema:

- *"What did Alice and I decide about the acquisition last month?"*
- *"Pull up every conversation where we debugged the embedding worker."*
- *"Which tasks are still open on the Q2 launch project?"*
- *"Find memories from conferences near San Francisco last spring."*
- *"Remember who I met with at the partner summit last month?"*
- *"Show me notes where I wrote about RAG architecture."*
- *"Who have I met with more than three times this quarter?"*
- *"What's the latest status on deals tagged `enterprise`?"*

No glue code, no separate vector DB, no RAG service to stand up — the agent just reads and writes Postgres through the typed SDK, CLI, or GraphQL.

## What's in the box

Conversations, messages, tool calls, long-term memories, rules, skills, prompts, tasks, runtime state, and a full personal CRM/life-OS live side-by-side. Every embeddable table is auto-indexed for **semantic + keyword + fuzzy + spatial** search, and a background worker keeps embeddings fresh via Ollama (or your LLM of choice). Deploy it next to your agent, wire it up through the typed SDK/CLI or the included Agent Skills, and your agent instantly has persistent memory, chat history, a skill library, and structured knowledge of the user's world.

## What an agent actually needs

| Need for an agent | What agentic-db ships |
|---|---|
| Long-term memory | `memories` + agent-scoped `memories` with vector + BM25 + chunked embeddings |
| Working memory / conversation state | `conversations` + `messages` + `tool_calls` + `tool_results` |
| Skills / tools registry | `skills`, `tool_definitions`, `tool_executions`, `prompts` (versioned) |
| Behavior rules | `rules` with semantic `trigger_concept` matching |
| Task queue | `tasks` with priority, status, agent assignment |
| Observability | `agent_logs`, `runtime_states`, `runtime_logs`, `runtime_metrics`, `runtime_artifacts` |
| Scheduling | `runtime_schedules` (cron) + `runtime_events` (event bus) |
| Config | `runtime_config` (with `is_secret` flag) |
| World model (people, orgs, places) | Full CRM + Life-OS + Email/Calendar |
| Retrieval | Unified search: vector (pgvector HNSW) + BM25 + tsvector + trigram + PostGIS |
| Auto-embed | Postgres triggers enqueue embedding jobs; Ollama worker processes them |

It's all in one database, with vector + BM25 + full-text + trigram + PostGIS search baked in.

## Architecture in 30 seconds

```
┌─────────────────────────────────────────────────────────┐
│            Your Agent (Claude / Claude Code /           │
│                    Cursor / Devin / …)                  │
└───────────────┬─────────────────────────┬───────────────┘
                │                         │
        writes / reads                  invokes
                │                         │
                ▼                         ▼
┌─────────────────────────────────────────────────────────┐
│            agentic-db (Postgres, one DB)                │
│                                                         │
│  conversations ──┬── messages ── tool_executions        │
│                  │                                      │
│  agents ─── tasks ─── rules ─── skills ─── prompts      │
│                                                         │
│  memories ── autonomy_records ── notes (chunked)        │
│                                                         │
│  contacts · companies · events · places · emails · …    │
│                                                         │
│  [ vector · BM25 · FTS · trigram · PostGIS, unified ]   │
└───────────────▲─────────────────────────▲───────────────┘
                │                         │
          auto-embed                   GraphQL / SDK / CLI
                │                         │
       @agentic-db/worker          @agentic-db/sdk · cli
                │
              Ollama
```

## Feature deep-dive

### 🧠 Memory

- **`memories`** (Life-OS) — long-term episodic memory with title, content, location, timestamp, mood, tags. Unified search (vector + BM25) + PostGIS spatial so the agent can ask *"what happened near here last spring?"*.
- **`autonomy_records`** — self-managed knowledge units the agent writes for itself (goals, notes-to-self, learned facts), with self-referential many-to-many links (`autonomy_record_links`) so the agent builds its own knowledge graph.
- **`notes`** — long-form knowledge with **chunked embeddings**: a single note gets split into multiple vector rows automatically so retrieval works on long documents.
- **Cross-domain memory junctions** — `contact_memories`, `company_memories` tie memories to the people/orgs they're about, so the agent can pull "everything I remember about Alice" in one query.
- **Agent-attributed memories** — every memory can carry an `agent_id` FK so multi-agent setups get isolated or shared memory.
- **Chunk-aware search** — `contacts_chunks` and `notes_chunks` let the agent retrieve the *relevant paragraph* of a long record, not the whole record.
- **Tags as first-class citizens** — `citext[]` tag columns on every memory-ish table, GIN-indexed, so filtering by `['hackathon','kris-floyd']` is fast.

### 💬 Chats / Conversations

- **`conversations`** — titled, agent-scoped chat sessions with status + metadata. Indexed and searchable (find that conversation from 3 weeks ago by vibe).
- **`messages`** — role (`user` / `assistant` / `tool`), content, `token_count`, `tool_calls` jsonb, `tool_results` jsonb, full metadata. Unified search means you can semantically query across every message the agent has ever seen.
- **`tool_executions`** — every tool invocation recorded: input, output, status, timings, errors, with FK back to the message that triggered it. Full audit trail of *what the agent actually did*.
- **Thread-able** — FK relations let you reconstruct conversation trees; `conversations ↔ messages ↔ tool_executions` forms a replayable event log.
- **Token accounting built in** — per-message `token_count` gives you real context-window budgeting and cost reporting.

### 🛠️ Skills & Tools

- **`skills`** — named capabilities with `intent_trigger` embedding so the agent can semantically pick the right skill for a user utterance (*"help me plan a trip"* → skill with closest `intent_trigger_embedding`).
- **`tool_definitions`** — JSON-schema-validated tool specs (works great as an OpenAI/Anthropic tools payload source of truth).
- **`skill_tools`** junction — skills compose from multiple tools.
- **`prompts`** — versioned, tagged, semantically searchable prompt library. `agent_prompts` junction lets you bind prompts to agents.
- **`rules`** — declarative trigger/action pairs (`trigger_type`, `trigger_config`, `action_type`, `action_config`) with priority + semantic `trigger_concept` matching. This is how you give the agent a behavioral policy layer.

### 🤖 Agent Runtime

- **`agents`** — named agents with `system_prompt`, `model`, `temperature`, `config`, tags. Multi-agent out of the box.
- **`agent_collaborators`** — agents can reference other agents (delegation, sub-agents).
- **`tasks`** — priority queue with status, result, started/completed timestamps, agent assignment. Doubles as a todo list the human can read.
- **`runtime_states`** — hierarchical state machine rows (`parent_id`) for long-running workflows; attach logs, metrics, artifacts.
- **`runtime_logs`** / **`runtime_metrics`** / **`runtime_artifacts`** — structured observability per run.
- **`runtime_schedules`** — cron-style scheduled jobs inside the DB.
- **`runtime_events`** — event bus table (type + payload + status) for async orchestration.
- **`runtime_config`** — key/value config with `is_secret` flag.
- **`agent_logs`** — free-form agent telemetry with context jsonb and optional task linkage.

### 🔎 Retrieval

- **Unified Search API** per table: one query can combine vector similarity, BM25 ranking, weighted tsvector full-text, and trigram fuzzy — all exposed through the generated GraphQL SDK.
- **Auto-embedding pipeline** — Postgres triggers enqueue jobs on insert/update; the [`@agentic-db/worker`](packages/worker) package processes them via Ollama (`nomic-embed-text`, 768-dim). Your agent never has to remember to embed anything.
- **HNSW vector indexes** (pgvector) with cosine/L2/inner-product metrics.
- **BM25** via `pg_textsearch` — statistical relevance ranking, not just similarity.
- **Weighted FTS** — `A` / `B` / `C` weights per field so `name > headline > bio` naturally.
- **Trigram fuzzy matching** for typo-tolerant name search.
- **PostGIS spatial** on contacts, events, venues, places, memories, trips — `Point` geography columns auto-backed by a `GIST` index. Scalar filters (`bboxIntersects2D`, `isNull`) ship on every geom column today; single-table radius queries are a schema decision away.
- **Cross-table spatial relations (`@spatialRelation`)** — FK-less spatial joins exposed as named `where:` filters. The blueprint ships 5 out of the box (see [`packages/provision/src/schemas/spatial-relations.ts`](packages/provision/src/schemas/spatial-relations.ts)):
  - `memory.nearbyPlaces` — memories within N metres of any `place` (5 km default)
  - `memory.nearbyContacts` — memories within N metres of any `contact` (2 km default)
  - `trip.nearbyVenues` — trips whose `destination_geo` is within N metres of a `venue` (1 km default)
  - `event.nearbyVenues` — events within N metres of a `venue`, no FK needed (500 m default)
  - `memory.nearbyMemories` — self-join, "what else happened near this memory?" (1 km default)

  All 5 use `st_dwithin` with a per-query `distance` param, so radius is a query-time input not a schema constant. Each renders server-side as an `EXISTS (… ST_DWithin(geo_a, geo_b, $distance) …)` subquery — zero GeoJSON on the wire.
- **Chunked long-doc retrieval** on contacts and notes.

### 🌍 World model (context the agent needs to actually help you)

- **CRM**: `contacts` (with denormalized primary email/phone/location + normalized `contact_emails` / `contact_phones` / `contact_addresses` children), `companies`, `deals`, `events`, `venues`, `notes`, `interactions`, `touchpoints`, `tags`, image galleries.
- **Life-OS**: `goals`, `habits`, `activity_logs`, `memories`, `trips`, `places`.
- **Projects & expenses**: `projects`, `expenses`, with cross-relations to contacts, trips, tasks.
- **Email & Calendar**: `email_threads`, `emails`, `email_attachments`, `calendars`, `calendar_events`, `calendar_attendees`, `provider_sync_states` (for Gmail / Google Calendar-style provider sync).
- **Staging tables** (`raw_contacts`, `raw_contact_emails`, etc.) for messy import pipelines before normalizing into `contacts`.
- **~25 cross-domain M:N junctions** so your agent can answer "notes about Alice from the partner summit" without schema gymnastics.

### ⚙️ Platform / DX

- **One command to deploy**: `pgpm deploy --createdb --database agentic-db --yes --package agentic-db`.
- **[`@agentic-db/sdk`](sdk/sdk)** — Prisma-like typed ORM generated from the GraphQL schema (covers all 91 tables).
- **[`@agentic-db/cli`](sdk/cli)** — CRUD + search + admin commands for every table.
- **[`@agentic-db/rag`](packages/rag)** — hybrid search, batch embedding, multi-pass Q&A CLI tools.
- **[`@agentic-db/worker`](packages/worker)** — background embedding worker.
- **Agent Skills included** — ships with skill files (`skills/agent/memories.md`, `skills/agent/tasks.md`, `skills/rag-query.md`, etc.) that install into Claude, Claude Code, Cursor, Copilot, Windsurf, Codex, or Devin via `npx skills add constructive-io/agentic-db`. The DB *teaches your agent how to use it*.
- **Schema-as-code** — blueprints in [`packages/provision/src/schemas/*.ts`](packages/provision/src/schemas) define every table, so you fork, add a table, `pnpm run provision && pnpm run export`, and you have a new versioned pgpm module.
- **Standalone or multi-tenant** — deploy clean into its own DB, or run inside the Constructive platform with RLS / Safegres policies.
- **GraphQL API** auto-exposed via PostGraphile v5 with the Constructive search plugin (vector / BM25 / trigram / spatial unified).
- **Docker-first** — `pgpm docker start --ollama` gets you Postgres + Ollama in one command (CPU or GPU).

## Getting Started

End-to-end: Docker → deploy schema → run GraphQL server → use CLI → use SDK.

### Prerequisites

See [Constructive Quickstart → Prerequisites](https://constructive.io/learn/quickstart/prerequisites) for Node.js, pnpm, Docker, and `psql` setup. Then install the three CLIs you'll use below:

```bash
npm install -g pgpm
npm install -g @constructive-io/cli
npm install -g @agentic-db/cli
```

### 1. Start Postgres (Docker)

`pgpm docker start` runs `constructiveio/postgres-plus:18` (Postgres with pgvector, pg_textsearch, PostGIS, and the other extensions agentic-db uses) with 2 GB shared memory:

```bash
pgpm docker start              # Postgres
pgpm docker start --ollama     # Postgres + Ollama (CPU) for auto-embedding
pgpm docker start --ollama --gpu   # same, NVIDIA GPU
pgpm docker stop               # stop everything
```

Already have an LLM running? Just use `pgpm docker start` and point `OLLAMA_URL` at your existing instance. A tuned [`docker-compose.yml`](docker-compose.yml) is also provided if you prefer `docker compose up -d`.

### 2. Deploy the schema (pgpm)

```bash
# First time: bootstrap admin roles in the cluster
eval "$(pgpm env)"
pgpm admin-users bootstrap --yes

# Create a workspace + install the agentic-db pgpm module
pgpm init workspace
cd my-app && pgpm init && cd packages/my-module
pgpm install agentic-db

# Create the database and deploy all 91 tables + indexes + triggers
pgpm deploy --createdb --database agentic-db --yes --package agentic-db
```

See the [`agentic-db` package README](packages/agentic-db) for the full deployment guide and schema details.

### 3. Start the GraphQL server (cnc)

The CLI and SDK both talk to the database through a GraphQL endpoint, so you need a PostGraphile server pointed at the deployed DB. The [Constructive CLI](https://github.com/constructive-io/constructive/tree/main/packages/cli) (`cnc`) spins up PostGraphile with the same plugin bundle used in tests — vector search, BM25, trigram, PostGIS, meta-API — all preconfigured:

```bash
# Point it at the database you just deployed (standard PG env vars)
export PGHOST=localhost PGPORT=5432 PGUSER=postgres PGPASSWORD=password
export PGDATABASE=agentic-db

# GraphQL at http://localhost:5555/graphql
cnc server

# In another shell: open GraphiQL to poke at the schema
cnc explorer
```

See the [Constructive CLI docs](https://github.com/constructive-io/constructive/tree/main/packages/cli) for options (port, CORS origin, toggling PostGIS/meta-API, etc.).

### 4. Use the CLI

With the server running, point the `agentic-db` CLI at it and your agent has a typed CRUD + search surface over every table:

```bash
# Create a context once
agentic-db context create local --endpoint http://localhost:5555/graphql
agentic-db context use local
agentic-db auth set-token "$AGENTIC_DB_TOKEN"   # optional — anonymous also works

# Unified search (vector + BM25 + FTS + trigram) across one or more tables
agentic-db search "postgres distributed systems" \
  --tables contacts,memories,notes --json --tty false

# RAG question-answering across embedded tables
agentic-db ask "Who did I meet about the Q2 launch?" --tty false

# Typed CRUD — one subcommand per table (contact, note, task, memory, …)
agentic-db contact create --firstName Alice --lastName Smith --select id --tty false
agentic-db contact list --select id,firstName,lastName --json --tty false
agentic-db note create --title "Kickoff" --content "Discussed Q2 roadmap" --tty false
agentic-db task list --where.status.equalTo open --json --tty false
agentic-db memory create --title "Met Alice" --content "Discussed acquisition" --tty false
```

Every command supports `--tty false` (non-interactive / scripted) and `--json` (machine-readable) — which is what agents almost always want. Full command surface in the [`cli-default` skill](skills/cli-default/SKILL.md); known-good examples in the [CLI E2E tests](packages/cli-e2e-tests/__tests__/cli-e2e.test.ts).

### 5. Use the SDK (ORM)

The [`@agentic-db/sdk`](sdk/sdk) is a type-safe, Prisma-like ORM generated from the same GraphQL schema — it hits the same `cnc server` endpoint:

```bash
npm install @agentic-db/sdk
```

```typescript
import { createClient } from '@agentic-db/sdk';

const db = createClient({ endpoint: 'http://localhost:5555/graphql' });

// Typed CRUD with `select` = which fields to return
const alice = await db.contact
  .create({
    data: { firstName: 'Alice', lastName: 'Smith', headline: 'Engineer' },
    select: { id: true, firstName: true },
  })
  .execute();

// Unified search (vector + BM25 + FTS + trigram)
const results = await db.contact
  .findMany({
    where: { unifiedSearch: 'postgres distributed systems' },
    first: 10,
    select: { id: true, firstName: true, searchScore: true },
  })
  .execute();

// Unified search + cross-table PostGIS spatial filter, composed in one where:
// "Memories whose content semantically matches 'conference keynote' AND are
//  within 5 km of a place tagged as a market — return each with its
//  relevance score and stored GeoJSON point, all in one round-trip."
const ranked = await db.memory
  .findMany({
    where: {
      unifiedSearch: 'conference keynote retrieval',
      nearbyPlaces: {
        distance: 5000, // metres — columns are geography so distance is metric
        some: { category: { equalTo: 'market' } },
      },
    },
    first: 10,
    select: {
      id: true,
      title: true,
      searchScore: true,
      locationGeo: { select: { geojson: true, srid: true } },
    },
  })
  .execute();
```

The server compiles that into a single SQL statement: a `unified_search(...)` ranked CTE joined against an `EXISTS (… ST_DWithin(memory.location_geo, place.location_geo, 5000) …)` subquery. No GeoJSON goes over the wire on the spatial side, and the text-search score comes back as `searchScore`.

That exact combined shape is exercised end-to-end by an integration test: [`packages/agentic-db/__tests__/unified-spatial-combined.test.ts`](__tests__/unified-spatial-combined.test.ts). It boots a real deploy of the agentic-db pgpm package, seeds three memories and two market-category places at known coordinates, runs the same `memory.findMany({ where: { unifiedSearch, nearbyPlaces } })` call through the generated SDK, and asserts that only the positive-match memory comes back with a non-null `searchScore`.

Supporting single-axis coverage lives alongside:

- **Spatial-only** — `nearbyPlaces` / `nearbyContacts` / `nearbyVenues` / `nearbyMemories` are each exercised in [`packages/integration-tests/__tests__/orm.test.ts`](../integration-tests/__tests__/orm.test.ts) under the `RelationSpatial via ORM` describe block (all 5 relations declared in the blueprint).
- **Unified-search only** — `unifiedSearch` + `searchScore` ranking behavior is covered by [`packages/agentic-db/__tests__/rag-unified-search.test.ts`](__tests__/rag-unified-search.test.ts) against pre-baked `nomic-embed-text` fixtures (no Ollama required).

Full ORM reference in the [`orm-default` skill](../../skills/orm-default/SKILL.md).

## Packages

### Published

| Package | npm | Description |
|---------|-----|-------------|
| [`agentic-db`](packages/agentic-db) | `agentic-db` | pgpm SQL module -- the core database schema with 90+ tables and search indexes |
| [`@agentic-db/services`](packages/agentic-db-services) | `@agentic-db/services` | pgpm SQL module -- API endpoint and domain routing metadata |
| [`@agentic-db/sdk`](sdk/sdk) | `@agentic-db/sdk` | Type-safe Prisma-like ORM client generated from the GraphQL schema |
| [`@agentic-db/cli`](sdk/cli) | `@agentic-db/cli` | CLI tool for CRUD, search, and admin operations |

### Private (development only)

| Package | Description |
|---------|-------------|
| [`@agentic-db/provision`](packages/provision) | SDK-based blueprint provisioning (tables, relations, search) |
| [`@agentic-db/export`](packages/export) | pgpm export wrapper (extracts provisioned schema as SQL modules) |
| [`@agentic-db/rag`](packages/rag) | RAG CLI tools (hybrid search, batch embedding, multi-pass Q&A) |
| [`@agentic-db/worker`](packages/worker) | Background worker for auto-generating embeddings via Ollama |
| [`@agentic-db/schemas`](sdk/schemas) | GraphQL schema files (`.graphql`) used by codegen |
| [`@agentic-db/integration-tests`](packages/integration-tests) | Integration test suite (ORM, embeddings, RAG, unified search) |
| [`@agentic-db/cli-e2e-tests`](packages/cli-e2e-tests) | End-to-end CLI test suite |

## Schema Development Workflow

The schema is developed using the Constructive SDK provisioning pipeline:

1. **Edit blueprints** in [`packages/provision/src/schemas/`](packages/provision/src/schemas) -- define tables, fields, relations, search nodes
2. **Provision** -- `cd packages/provision && pnpm run provision` applies blueprints against the platform DB
3. **Export** -- `cd packages/export && pnpm run export` extracts the schema as pgpm SQL modules
4. **Deploy** -- `pgpm deploy --package agentic-db` installs into any Postgres database
5. **Regenerate codegen** -- `pnpm run generate:all` updates the SDK and CLI from the live schema

## Auto-Embedding Pipeline

Postgres triggers automatically enqueue embedding jobs when records are created or updated. The background worker processes them via Ollama:

```bash
# Start the embedding worker
cd packages/worker
pnpm run start
```

The worker generates embeddings for all tables with `SearchUnified` or `SearchVector` nodes. Contacts and notes also get chunked embeddings for long-document search.

## Testing

```bash
# Run all tests (from repo root)
pnpm test

# Run a specific test suite
cd packages/agentic-db && pnpm test        # pgpm deploy + schema tests
cd packages/integration-tests && pnpm test  # ORM, embeddings, RAG, unified search
cd packages/cli-e2e-tests && pnpm test      # CLI end-to-end
```

## AI Skills

This repo ships with [Agent Skills](https://github.com/agent-skills/agent-skills) that teach AI assistants (Claude, Claude Code, Cursor, Devin, Copilot, etc.) how to work with the SDK, CLI, and pgpm.

### Available Skills

| Skill | Description |
|-------|-------------|
| `pgpm` | Install and deploy agentic-db using pgpm |
| `cli-default` | CLI command reference for all 91 tables |
| `orm-default` | Type-safe ORM client reference for all 91 tables |
| `agent/memories` | Storing and retrieving long-term agent memories |
| `agent/tasks` | Managing agent task queues |
| `rag-query` | Multi-collection RAG query patterns |
| `embeddings` | Generating embeddings via Ollama |
| `crm/*` | CRM primitives — contacts, companies, events, venues |
| `accounting/*` | Expense tracking primitives |

### Installing Skills

Install skills into your project using [`npx skills`](https://github.com/vercel-labs/skills):

```bash
# Install all skills from this repo
npx skills add constructive-io/agentic-db

# Install a specific skill
npx skills add constructive-io/agentic-db --skill pgpm

# List available skills without installing
npx skills add constructive-io/agentic-db --list
```

This works with Claude, Claude Code, Cursor, Copilot, Windsurf, Codex, and [40+ other AI agents](https://github.com/vercel-labs/skills#available-agents). Skills are installed into the appropriate directory for your tool (`.claude/skills/`, `.cursor/skills/`, etc.).

**Devin** -- Connect the `constructive-io/agentic-db` repo to your Devin organization. Skills are indexed automatically and available in every session.

### Using Skills

Once installed, you can ask your AI assistant things like:

- *"Deploy agentic-db to a new database"* -- triggers the `pgpm` skill
- *"Remember that Alice is my co-founder at Acme"* -- triggers the `agent/memories` skill
- *"What do I know about the partner summit?"* -- triggers the `rag-query` skill
- *"Query contacts using the ORM"* -- triggers the `orm-default` skill
- *"Search for deals using the CLI"* -- triggers the `cli-default` skill

## Credits

Built by the [Constructive](https://constructive.io) team -- creators of modular Postgres tooling for secure, composable backends. Contribute on [GitHub](https://github.com/constructive-io).

## Disclaimer

AS DESCRIBED IN THE LICENSES, THE SOFTWARE IS PROVIDED "AS IS", AT YOUR OWN RISK, AND WITHOUT WARRANTIES OF ANY KIND.

No developer or entity involved in creating this software will be liable for any claims or damages whatsoever associated with your use, inability to use, or your interaction with other users of the code, including any direct, indirect, incidental, special, exemplary, punitive or consequential damages, or loss of profits, cryptocurrencies, tokens, or anything else of value.
