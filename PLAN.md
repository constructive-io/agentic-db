# Agent-OS Development Plan

**Goal:** Build a comprehensive agent-os system on top of the Constructive platform, mirroring all 81 tables from the `avengers` database and providing a typed SDK with RAG capabilities via Nomic embeddings through Ollama.

---

## 1. Architecture Overview

```
┌─────────────────────────────────────────────────────────────────┐
│                         agent-os pnpm workspace                  │
├─────────────────────────────────────────────────────────────────┤
│ packages/                                                        │
│   ├── provision/           # Scripts to create DB via SDK        │
│   ├── codegen/             # Generated SDK from provisioned DB   │
│   ├── scripts/             # Insert, search, RAG utilities       │
│   └── agent-os/            # Core module (existing placeholder)  │
├─────────────────────────────────────────────────────────────────┤
│ skills/                    # Agent skills (markdown docs)        │
│   ├── provision.md                                               │
│   ├── contacts.md                                                │
│   ├── expenses.md                                                │
│   └── ...                                                        │
└─────────────────────────────────────────────────────────────────┘
```

---

## 2. Avengers Database Analysis

### Schemas to Replicate (81 base tables across 15 schemas)

| Schema | Tables | Priority | Notes |
|--------|--------|----------|-------|
| `crm` | 31 tables | **HIGH** | Core CRM: contacts, companies, deals, events, venues, tags, etc. |
| `accounting` | 2 tables | **HIGH** | expenses, monthly_summary |
| `agent` | 22 tables | **HIGH** | skills, tasks, rules, memories, sessions, blueprints, etc. |
| `calendar` | 3 tables | MEDIUM | events, sync_state |
| `email` | 2 tables | MEDIUM | messages, ingest_watermarks |
| `kb` | 1 table | MEDIUM | documents |
| `codebase` | 3 tables | LOW | repos, files, chunks (code embeddings) |
| `code` | 3 tables | LOW | projects, chunks, bench_runs |
| `self_talk` | 1 table | LOW | scripts |
| `smart_home` | 6 tables | LOW | devices, rooms, automations, etc. |
| `outbox` | 2 tables | LOW | drafts, review_log |
| `raw` | 6 tables | LOW | raw contact imports |
| `legacy` | 1 table | LOW | documents |

### Key Tables with Embeddings (vector columns)

| Table | Embedding Column | Dimension | Purpose |
|-------|------------------|-----------|---------|
| `crm.contacts` | `embedding` | 768 | Contact search |
| `agent.skills` | `embedding` | 768? | Skill similarity |
| `agent.memories` | `embedding` | 768? | Memory retrieval |
| `kb.documents` | `embedding` | 768? | Document RAG |
| `codebase.chunks` | `embedding` | 768? | Code search |

---

## 3. Implementation Phases

### Phase 1: Database Provisioning (packages/provision)

**Goal:** Create a Constructive database mirroring avengers structure

**Steps:**
1. Create `packages/provision/` package
2. Script to sign up / authenticate against Constructive platform
3. Provision database with `modules: ['all']` for built-in auth/users/memberships
4. Create schemas: `crm`, `accounting`, `agent`, `calendar`, `email`, `kb`
5. Create tables using `secureTableProvision` with appropriate RLS:
   - Org-scoped tables: `DataEntityMembership` + `AuthzEntityMembership`
   - Shared lookups: `DataId` + `AuthzAllowAll`
6. Add vector(768) columns for tables needing embeddings
7. Create HNSW indexes for vector columns
8. Define relations (HasMany, ManyToMany junctions)

**Key files:**
- `packages/provision/src/provision-agent-os.ts` — main provisioning script
- `packages/provision/src/schemas/crm.ts` — CRM table definitions
- `packages/provision/src/schemas/agent.ts` — Agent table definitions
- `packages/provision/src/schemas/accounting.ts` — Accounting definitions

**Dependencies:**
```json
{
  "@constructive-io/node": "^0.1.0"
}
```

### Phase 2: SDK Codegen (packages/codegen)

**Goal:** Generate typed TypeScript SDK from the provisioned database

**Steps:**
1. Create `packages/codegen/` package
2. Script to run `@constructive-io/graphql-codegen` against the new DB
3. Generate ORM client with `nodeHttpAdapter: true`
4. Generate skills docs with `docs: { skills: true }`
5. Output to `packages/codegen/generated/`

**Key files:**
- `packages/codegen/src/generate.ts` — codegen script
- `packages/codegen/generated/agent-os-sdk/` — generated SDK output

**Usage in other packages:**
```json
{
  "dependencies": {
    "@agent-os/codegen": "workspace:*"
  }
}
```

```typescript
import { createClient } from '@agent-os/codegen/generated/agent-os-sdk/orm';
```

### Phase 3: Utility Scripts (packages/scripts)

**Goal:** Provide insert, search, and RAG utilities

#### 3.1 Embedding Generation (Ollama + nomic-embed-text)

```typescript
// packages/scripts/src/embeddings.ts
import Ollama from 'ollama';

const ollama = new Ollama();

export async function generateEmbedding(text: string): Promise<number[]> {
  const response = await ollama.embeddings({
    model: 'nomic-embed-text',
    prompt: text,
  });
  return response.embedding; // 768-dim vector
}

export async function generateEmbeddings(texts: string[]): Promise<number[][]> {
  return Promise.all(texts.map(t => generateEmbedding(t)));
}
```

#### 3.2 Insert Scripts

```typescript
// packages/scripts/src/insert/contacts.ts
import { createClient } from '@agent-os/codegen/generated/agent-os-sdk/orm';
import { generateEmbedding } from '../embeddings';

export async function insertContact(db: ReturnType<typeof createClient>, data: {
  firstName: string;
  lastName: string;
  email?: string;
  entityId: string;
}) {
  const embeddingText = `${data.firstName} ${data.lastName} ${data.email || ''}`;
  const embedding = await generateEmbedding(embeddingText);
  
  return db.contact.create({
    data: {
      ...data,
      embedding,
    },
    select: { id: true, firstName: true, lastName: true },
  }).execute();
}
```

#### 3.3 Search Scripts

```typescript
// packages/scripts/src/search/contacts.ts
export async function searchContacts(
  db: ReturnType<typeof createClient>,
  query: string,
  limit = 10
) {
  const queryEmbedding = await generateEmbedding(query);
  
  // Using vectorSearch if available via PgVectorPlugin
  return db.vectorSearchContact({
    query: queryEmbedding,
    limit,
    metric: 'COSINE',
  }).execute();
}
```

#### 3.4 RAG Pipeline

```typescript
// packages/scripts/src/rag/pipeline.ts
import { searchContacts } from '../search/contacts';
import { searchDocuments } from '../search/documents';

export async function ragQuery(
  db: ReturnType<typeof createClient>,
  query: string,
  collections: ('contacts' | 'documents' | 'memories')[] = ['contacts', 'documents']
) {
  const results = await Promise.all([
    collections.includes('contacts') ? searchContacts(db, query, 5) : [],
    collections.includes('documents') ? searchDocuments(db, query, 5) : [],
    // ... more collections
  ]);
  
  return {
    contacts: results[0],
    documents: results[1],
    // Format for LLM context
    context: formatContext(results),
  };
}

function formatContext(results: any[]): string {
  // Format search results as context for LLM
  return results
    .flat()
    .map(r => `[${r.distance.toFixed(3)}] ${JSON.stringify(r)}`)
    .join('\n');
}
```

**Key files:**
- `packages/scripts/src/embeddings.ts` — Ollama embedding generation
- `packages/scripts/src/insert/*.ts` — Insert scripts per table
- `packages/scripts/src/search/*.ts` — Search scripts per collection
- `packages/scripts/src/rag/pipeline.ts` — RAG orchestration

**Dependencies:**
```json
{
  "ollama": "^0.5.0",
  "@agent-os/codegen": "workspace:*"
}
```

### Phase 4: Skills Directory (skills/)

**Goal:** Provide agent-readable skills for each operation

**Structure:**
```
skills/
├── README.md           # Index of all skills
├── provision.md        # How to provision the database
├── insert-contact.md   # Insert a contact
├── search-contacts.md  # Search contacts via embeddings
├── rag-query.md        # Run a RAG query
├── crm/
│   ├── contacts.md
│   ├── companies.md
│   ├── deals.md
│   ├── events.md
│   └── venues.md
├── agent/
│   ├── tasks.md
│   ├── skills.md
│   ├── memories.md
│   └── rules.md
└── accounting/
    └── expenses.md
```

Each skill follows the format:
```markdown
---
name: insert-contact
description: Insert a new contact into the CRM with automatic embedding generation
---

# Insert Contact

## Usage

\`\`\`typescript
import { insertContact } from '@agent-os/scripts/insert/contacts';

await insertContact(db, {
  firstName: 'John',
  lastName: 'Doe',
  email: 'john@example.com',
  entityId: '<org-uuid>',
});
\`\`\`

## Parameters
...
```

---

## 4. Package Structure

```
agent-os/
├── PLAN.md                    # This file
├── package.json               # Root workspace config
├── pnpm-workspace.yaml
├── packages/
│   ├── provision/
│   │   ├── package.json
│   │   ├── tsconfig.json
│   │   └── src/
│   │       ├── provision-agent-os.ts
│   │       ├── schemas/
│   │       │   ├── crm.ts
│   │       │   ├── agent.ts
│   │       │   ├── accounting.ts
│   │       │   ├── calendar.ts
│   │       │   └── index.ts
│   │       └── helpers.ts
│   ├── codegen/
│   │   ├── package.json
│   │   ├── tsconfig.json
│   │   ├── src/
│   │   │   └── generate.ts
│   │   └── generated/
│   │       └── agent-os-sdk/
│   │           └── ... (generated)
│   ├── scripts/
│   │   ├── package.json
│   │   ├── tsconfig.json
│   │   └── src/
│   │       ├── embeddings.ts
│   │       ├── insert/
│   │       │   ├── contacts.ts
│   │       │   ├── companies.ts
│   │       │   └── ...
│   │       ├── search/
│   │       │   ├── contacts.ts
│   │       │   ├── documents.ts
│   │       │   └── ...
│   │       └── rag/
│   │           └── pipeline.ts
│   └── agent-os/              # Existing placeholder
│       ├── package.json
│       └── ...
└── skills/
    ├── README.md
    ├── provision.md
    └── ...
```

---

## 5. Execution Order

1. **[NOW]** Create `skills/` directory and push to GitHub
2. **[Phase 1]** Create `packages/provision/` with table definitions
3. **[Phase 1]** Run provision script to create database on localhost:3000
4. **[Phase 2]** Create `packages/codegen/` and generate SDK
5. **[Phase 3]** Create `packages/scripts/` with insert/search/RAG utilities
6. **[Phase 4]** Populate `skills/` with documentation

---

## 6. Commands Reference

```bash
# From agent-os root

# Install all dependencies
pnpm install

# Provision the database (after Phase 1)
pnpm --filter @agent-os/provision run provision

# Generate SDK (after Phase 2)
pnpm --filter @agent-os/codegen run generate

# Build all packages
pnpm build

# Run tests
pnpm test
```

---

## 7. Environment Requirements

- **Constructive server** running at `api.localhost:3000` and `auth.localhost:3000`
- **Ollama** running with `nomic-embed-text` model loaded
- **Docker** for pgpm-managed Postgres
- **Node.js 20+** and **pnpm**

---

## 8. Notes

- Use `@constructive-io/node` as the SDK — it handles localhost DNS issues automatically
- All org-scoped tables use `entity_id` field with `AuthzEntityMembership` RLS
- Vector columns are `vector(768)` to match `nomic-embed-text` output dimension
- HNSW indexes should be created after initial data load for performance
- Generated SDK skills can be ingested into the `agent.skills` table for AI-assisted development

---

*Created: 2026-03-01*
*Author: Constructivio 🐘*
