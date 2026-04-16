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
>
> A pgpm-installable Postgres module that gives Claude, Claude Code, Cursor, and Devin persistent memory, chat history, a skill library, a tool registry, behavioral rules, a task queue, runtime observability, and a full CRM + life-OS knowledge graph — all in one database with vector + BM25 + full-text + trigram + PostGIS search baked in.

## Talk to your database

Once deployed, you can ask your agent questions in plain English and it translates them into semantic, keyword, fuzzy, and spatial queries against the schema:

- *"What did Alice and I decide about the acquisition last month?"*
- *"Pull up every conversation where we debugged the embedding worker."*
- *"Which tasks are still open on the Mistral project?"*
- *"Find memories from hackathons near San Francisco last spring."*
- *"Remember who Kris Floyd and I met at Wefunder?"*
- *"Show me notes where I wrote about RAG architecture."*
- *"Who have I met with more than three times this quarter?"*
- *"What's the latest status on deals tagged `enterprise`?"*

The agent just reads and writes Postgres through the typed SDK, CLI, or GraphQL — no glue code, no separate vector DB, no RAG service to stand up.

## What's inside

Conversations, messages, tool calls, long-term memories, rules, skills, prompts, tasks, runtime state, and a full personal CRM / life-OS live side-by-side. Every embeddable table is auto-indexed for **semantic + keyword + fuzzy + spatial** search. A background worker keeps embeddings fresh via Ollama (or your LLM of choice). Deploy it next to your agent, wire it up through the typed SDK/CLI or the included Agent Skills, and your agent has persistent memory, chat history, a skill library, and structured knowledge of the user's world.

### 90+ tables, organized into domains

| Domain | Highlights |
|--------|------------|
| **🤖 Agent Core** | `agents` (multi-agent w/ `agent_collaborators`), `tasks` (priority queue), `rules` (semantic `trigger_concept`), `skills` (semantic `intent_trigger`), `tool_definitions` (JSON-schema tool specs), `prompts` (versioned), `agent_logs`, `expenses` |
| **💬 Runtime / Chat** | `conversations`, `messages` (role, content, `token_count`, `tool_calls`, `tool_results`), `tool_executions` (input/output/status/timings linked to message), `runtime_states`, `runtime_logs`, `runtime_metrics`, `runtime_artifacts`, `runtime_schedules` (cron), `runtime_events` (event bus), `runtime_config` |
| **🧠 Memory / Autonomy** | `memories` (episodic, spatial), `autonomy_records` (self-writing knowledge graph w/ `autonomy_record_links`), `notes` (chunked for long docs), `contact_memories` / `company_memories` cross-domain junctions |
| **🧑‍🤝‍🧑 CRM** | `contacts`, `companies`, `deals`, `events`, `venues`, `notes`, `interactions`, `touchpoints`, `tags`, image galleries, `contact_emails` / `contact_phones` / `contact_addresses` normalized children |
| **🌱 Life-OS** | `goals`, `habits`, `activity_logs`, `memories`, `trips`, `places` |
| **📂 Projects** | `projects` with cross-relations to `tasks`, `contacts`, `goals` |
| **✉️ Email & Calendar** | `email_threads`, `emails`, `email_attachments`, `calendars`, `calendar_events`, `calendar_attendees`, `provider_sync_states` (Gmail / Google Calendar-style sync) |
| **🪣 Staging** | `raw_contacts`, `raw_contact_emails`, `raw_contact_phones`, `raw_contact_urls` for messy imports |
| **🔗 Junctions** | ~25 cross-domain M:N junctions (`project_contacts`, `task_projects`, `calendar_event_contacts`, `email_notes`, `contact_memories`, `skill_tools`, …) |

## Feature deep-dive

### 🧠 Memory

- **`memories`** — long-term episodic memory with title, content, location, timestamp, mood, tags. Unified search (vector + BM25) + PostGIS spatial so the agent can ask *"what happened near here last spring?"*.
- **`autonomy_records`** — self-managed knowledge units the agent writes for itself (goals, notes-to-self, learned facts), with self-referential many-to-many links so the agent builds its own knowledge graph.
- **`notes`** — long-form knowledge with **chunked embeddings**: a single note gets split into multiple vector rows automatically so retrieval works on long documents.
- **Cross-domain memory junctions** — `contact_memories`, `company_memories` tie memories to the people/orgs they're about, so the agent can pull "everything I remember about Alice" in one query.
- **Agent-attributed memories** — every memory can carry an `agent_id` FK so multi-agent setups get isolated or shared memory.
- **Chunk-aware search** — `contacts_chunks` and `notes_chunks` let the agent retrieve the *relevant paragraph* of a long record, not the whole record.
- **Tags as first-class citizens** — `citext[]` tag columns on every memory-ish table, GIN-indexed, so filtering by `['hackathon','kris-floyd']` is fast.

### 💬 Chats / Conversations

- **`conversations`** — titled, agent-scoped chat sessions with status + metadata. Indexed and semantically searchable (find that conversation from 3 weeks ago by vibe).
- **`messages`** — role (`user` / `assistant` / `tool`), content, `token_count`, `tool_calls` jsonb, `tool_results` jsonb, full metadata. Unified search means you can semantically query across every message the agent has ever seen.
- **`tool_executions`** — every tool invocation recorded: input, output, status, timings, errors, with FK back to the message that triggered it. Full audit trail of *what the agent actually did*.
- **Thread-able** — FK relations let you reconstruct conversation trees; `conversations ↔ messages ↔ tool_executions` forms a replayable event log.
- **Token accounting built in** — per-message `token_count` gives you real context-window budgeting and cost reporting.

### 🛠️ Skills & Tools

- **`skills`** — named capabilities with `intent_trigger` embedding so the agent can semantically pick the right skill for a user utterance (*"help me plan a trip"* → skill with closest `intent_trigger_embedding`).
- **`tool_definitions`** — JSON-schema-validated tool specs (works great as an OpenAI / Anthropic tools payload source of truth).
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

Every table with embeddings supports up to **five search strategies**, exposed through a single unified GraphQL API:

| Strategy | Engine | Use Case |
|----------|--------|----------|
| **Vector** | pgvector (HNSW) | Semantic similarity search via embeddings |
| **BM25** | pg_textsearch | Statistical relevance ranking |
| **Full-text** | tsvector + GIN | Classic Postgres full-text search with weighted fields |
| **Trigram** | pg_trgm | Fuzzy matching for typos and partial strings |
| **Spatial** | PostGIS | Geographic proximity queries on contacts, events, venues, places |

- **Unified Search API** per table: one query can combine vector similarity, BM25 ranking, weighted tsvector full-text, and trigram fuzzy — all exposed through the generated GraphQL SDK.
- **Auto-embedding pipeline** — Postgres triggers enqueue jobs on insert/update; the [`@agentic-db/worker`](../worker) package processes them via Ollama (`nomic-embed-text`, 768-dim). Your agent never has to remember to embed anything.
- **HNSW vector indexes** with cosine/L2/inner-product metrics.
- **Weighted FTS** — `A` / `B` / `C` weights per field so `name > headline > bio` naturally.
- **Chunked long-doc retrieval** — `contacts_chunks` and `notes_chunks` split long records into vector-searchable paragraphs.

## Quick Start

### Prerequisites

- PostgreSQL 18+ (via [constructiveio/postgres-plus](https://hub.docker.com/r/constructiveio/postgres-plus))
- [pgpm](https://pgpm.io) (`npm install -g pgpm`)
- Node.js 20+, pnpm

### Install and Deploy

```bash
# 1. Create a workspace and install agentic-db
pgpm init workspace
cd my-app
pgpm init
cd packages/my-module
pgpm install agentic-db

# 2. Start PostgreSQL
pgpm docker start
eval "$(pgpm env)"
pgpm admin-users bootstrap --yes

# 3. Deploy agentic-db into a fresh database
pgpm deploy --createdb --database agentic-db --yes --package agentic-db
```

That's it. You now have a fully provisioned brain with all tables, search indexes, and embedding triggers.

`pgpm docker start` runs `constructiveio/postgres-plus:18` with 2 GB shared memory by default. Use `--image`, `--port`, `--shm-size` to customize.

### With Ollama (for embeddings)

The embedding triggers require an LLM to generate vectors. If you don't already have one running:

```bash
# Start PostgreSQL + Ollama (CPU)
pgpm docker start --ollama

# Or with NVIDIA GPU acceleration
pgpm docker start --ollama --gpu
```

Already have Ollama (or another LLM) running? Just use `pgpm docker start` and point `OLLAMA_URL` at your existing instance.

Alternatively, the repo includes a `docker-compose.yml` with tuned Postgres settings and Ollama:

```bash
docker compose up -d                    # CPU
docker compose --profile gpu up -d      # NVIDIA GPU
```

### Clean Rebuild

```bash
pgpm docker start --recreate
eval "$(pgpm env)"
pgpm admin-users bootstrap --yes
pgpm deploy --createdb --database agentic-db --yes --package agentic-db
```

## How pgpm Works

[pgpm](https://pgpm.io) (PostgreSQL Package Manager) treats SQL schemas like versioned packages -- similar to how npm manages JavaScript modules. Each module has:

- A `.control` file declaring metadata and dependencies
- A `pgpm.plan` file listing migrations in order
- `deploy/`, `revert/`, `verify/` directories with SQL files

When you run `pgpm deploy`, it resolves the dependency tree (this module requires 20+ extensions including pgvector, PostGIS, pg_textsearch, and the Constructive metaschema), applies migrations in order, and tracks what's been deployed.

### Module Dependencies

```
agentic-db
  requires: plpgsql, uuid-ossp, citext, pgcrypto, btree_gin, btree_gist,
            pg_textsearch, pg_trgm, postgis, hstore, vector,
            metaschema-schema, pgpm-inflection, pgpm-uuid, pgpm-utils,
            pgpm-database-jobs, pgpm-jwt-claims, pgpm-stamps,
            pgpm-base32, pgpm-totp, pgpm-types

agentic-db-services
  requires: plpgsql, metaschema-schema, metaschema-modules, services
```

## Using the SDK

Once deployed, query the database through the generated TypeScript SDK:

```typescript
import { createClient } from '@agentic-db/sdk';

const db = createClient({
  endpoint: 'http://agentic.localhost:3000/graphql',
  headers: { Authorization: `Bearer ${token}` },
});

// CRUD
const contacts = await db.contact.findMany({ first: 10 });
const contact = await db.contact.create({ input: { firstName: 'Alice', headline: 'Engineer' } });

// Vector search
const results = await db.contact.findMany({
  condition: { vectorEmbedding: { distance_lt: 0.5, vector: embedding } },
});

// Unified search (vector + BM25 + FTS + trigram combined)
const unified = await db.contact.findMany({
  condition: { searchScore: { score_gt: 0 } },
});
```

### Giving an agent memory (end-to-end)

```typescript
// 1. Remember something
await db.memory.create({
  data: {
    entityId: orgId,
    title: 'Mistral Hackathon at Wefunder',
    content: 'Dan attended with Kris Floyd on Feb 28-Mar 1 2026',
    tags: ['hackathon', 'event', 'kris-floyd', 'wefunder'],
    // embedding is auto-generated by the Postgres trigger → worker pipeline
  },
}).execute();

// 2. Retrieve it later by meaning, not exact words
const hits = await db.vectorSearchMemory({
  query: await generateEmbedding('AI hackathon with Kris'),
  limit: 5,
}).execute();
```

### Logging a conversation turn

```typescript
const conv = await db.conversation.create({
  data: { title: 'Refactoring pgpm deploy', agentId, status: 'active' },
}).execute();

await db.message.create({
  data: {
    conversationId: conv.id,
    role: 'assistant',
    content: 'I\'d suggest splitting the deploy step into a pre-flight check…',
    tokenCount: 142,
    toolCalls: [{ tool: 'read_file', args: { path: 'pgpm.plan' } }],
  },
}).execute();
```

See [`@agentic-db/sdk`](../../sdk/sdk) for the full API reference, and [`@agentic-db/cli`](../../sdk/cli) for the CLI tool.

## Testing

```bash
# Run tests for this module
pnpm test

# Watch mode
pnpm test:watch
```

Tests use `pgsql-test` and `graphile-test` to spin up ephemeral databases, deploy the schema, and run queries against it.

## Credits

Built by the [Constructive](https://constructive.io) team -- creators of modular Postgres tooling for secure, composable backends. Contribute on [GitHub](https://github.com/constructive-io).

## Disclaimer

AS DESCRIBED IN THE LICENSES, THE SOFTWARE IS PROVIDED "AS IS", AT YOUR OWN RISK, AND WITHOUT WARRANTIES OF ANY KIND.

No developer or entity involved in creating this software will be liable for any claims or damages whatsoever associated with your use, inability to use, or your interaction with other users of the code, including any direct, indirect, incidental, special, exemplary, punitive or consequential damages, or loss of profits, cryptocurrencies, tokens, or anything else of value.
