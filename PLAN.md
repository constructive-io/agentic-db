# Agent-OS Development Plan

**Goal:** Build a comprehensive agentic-db system on top of the Constructive platform, mirroring all tables from the `avengers` database and providing a typed SDK with RAG capabilities via Nomic embeddings through Ollama.

---

## ⚠️ Rules

**Read `skills/RULES.md` before any development.** Key rules:
- No hardcoded URLs/secrets — use `.env`
- No raw SQL — use GraphQL/SDK only
- Use `workspace:*` for internal deps
- Use `makage` for builds
- Enable `docs.skills: true` in codegen

---

## 1. Architecture Overview

```
┌─────────────────────────────────────────────────────────────────┐
│                         agentic-db pnpm workspace                  │
├─────────────────────────────────────────────────────────────────┤
│ packages/                                                        │
│   ├── provision/           # Scripts to provision DB via SDK    │
│   ├── codegen/             # Generated SDK from database        │
│   ├── scripts/             # Insert, search, RAG utilities       │
│   └── agentic-db/            # Core module                         │
├─────────────────────────────────────────────────────────────────┤
│ skills/                    # Agent skills (markdown docs)        │
│   ├── RULES.md             # Development rules                   │
│   ├── provision.md                                               │
│   ├── codegen.md                                                 │
│   └── ...                                                        │
└─────────────────────────────────────────────────────────────────┘
```

---

## 2. SDKs

| Context | Package | Use For |
|---------|---------|---------|
| Platform ops | `@constructive-io/node` | Provisioning, auth |
| Per-database CRUD | Generated via codegen | All data operations |
| Codegen | `@constructive-io/graphql-codegen` | Generate typed SDK |

---

## 3. Implementation Phases

### Phase 1: Database Provisioning (packages/provision)

**Goal:** Create a Constructive database via SDK (no SQL!)

**Package setup:**
```json
{
  "name": "@agentic-db/provision",
  "main": "index.js",
  "module": "esm/index.js",
  "types": "index.d.ts",
  "publishConfig": { "directory": "dist" },
  "scripts": {
    "build": "makage build",
    "clean": "makage clean",
    "provision": "tsx src/provision.ts"
  },
  "dependencies": {
    "@constructive-io/node": "^0.1.0",
    "dotenv": "^16.0.0"
  },
  "devDependencies": {
    "makage": "0.1.10",
    "tsx": "^4.0.0"
  }
}
```

**Key files:**
- `src/provision.ts` — Main provisioning script
- `src/schemas/crm.ts` — CRM table definitions
- `src/schemas/agent.ts` — Agent table definitions
- `src/config.ts` — Shared config (reads from `.env`)

### Phase 2: SDK Codegen (packages/codegen)

**Goal:** Generate typed SDK from provisioned database

**Config:**
```typescript
// graphql-codegen.config.ts
import 'dotenv/config';
import { defineConfig } from '@constructive-io/graphql-codegen';

const dbName = process.env.DATABASE_NAME || 'agentic-db';

export default defineConfig({
  endpoint: `http://app-public-${dbName}.localhost:3000/graphql`,
  output: './generated/agentic-db-sdk',
  orm: true,
  nodeHttpAdapter: true,
  docs: {
    readme: true,
    agents: true,
    skills: true,  // Always enable!
  },
  scalars: {
    Vector: 'number[]',
  },
});
```

### Phase 3: Utility Scripts (packages/scripts)

**Goal:** Insert, search, and RAG utilities using generated SDK

**Dependencies:**
```json
{
  "dependencies": {
    "@agentic-db/codegen": "workspace:*",
    "ollama": "^0.5.0",
    "dotenv": "^16.0.0"
  }
}
```

**Usage:**
```typescript
// src/insert/contacts.ts
import { createClient } from '@agentic-db/codegen/generated/agentic-db-sdk/orm';
import { NodeHttpAdapter } from '@agentic-db/codegen/generated/agentic-db-sdk/orm/node-fetch';
import { generateEmbedding } from '../embeddings';
import { config, getAuthHeaders } from '../config';

const adapter = new NodeHttpAdapter(config.appEndpoint, getAuthHeaders());
const db = createClient({ adapter });

export async function insertContact(data: { ... }) {
  const embedding = await generateEmbedding(`${data.firstName} ${data.lastName}`);
  
  return db.contact.create({
    data: { ...data, embedding },
    select: { id: true },
  }).execute();
}
```

### Phase 4: Skills Documentation (skills/)

Already created. Continue adding skills as we build.

---

## 4. Package Structure

```
agentic-db/
├── PLAN.md
├── .env.example
├── .gitignore
├── package.json
├── pnpm-workspace.yaml
├── packages/
│   ├── provision/
│   │   ├── package.json
│   │   ├── tsconfig.json
│   │   └── src/
│   │       ├── provision.ts
│   │       ├── config.ts
│   │       └── schemas/
│   ├── codegen/
│   │   ├── package.json
│   │   ├── graphql-codegen.config.ts
│   │   └── generated/
│   │       └── agentic-db-sdk/
│   ├── scripts/
│   │   ├── package.json
│   │   └── src/
│   │       ├── config.ts
│   │       ├── embeddings.ts
│   │       ├── insert/
│   │       ├── search/
│   │       └── rag/
│   └── agentic-db/
└── skills/
    ├── RULES.md
    ├── README.md
    └── ...
```

---

## 5. Commands

```bash
# Install
pnpm install

# Provision database
pnpm --filter @agentic-db/provision run provision

# Generate SDK
pnpm --filter @agentic-db/codegen run generate

# Build all
pnpm build
```

---

## 6. Environment

Copy `.env.example` to `.env` and fill in values.

Required:
- Constructive server at `api.localhost:3000` / `auth.localhost:3000`
- Ollama with `nomic-embed-text` model
- Docker for Postgres

---

## 7. TODO

- [ ] **Discuss sub-agents with Dan**
- [ ] Create packages/provision
- [ ] Create packages/codegen
- [ ] Create packages/scripts
- [ ] Run provisioning
- [ ] Run codegen
- [ ] Test CRUD operations
- [ ] Test RAG pipeline

---

*Created: 2026-03-01*
*Author: Constructivio 🐘*
