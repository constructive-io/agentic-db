---
name: agentic-db-codegen
description: Generate type-safe SDK from a Constructive database using @constructive-io/graphql-codegen
---

# SDK Codegen

Generate a typed TypeScript ORM SDK from a provisioned Constructive database.

## Prerequisites

- Provisioned database running on Constructive platform
- `@constructive-io/graphql-codegen` installed

## Setup

```bash
pnpm add @constructive-io/graphql-codegen -D
```

## Configuration

Create `graphql-codegen.config.ts`:

```typescript
import 'dotenv/config';
import { defineConfig } from '@constructive-io/graphql-codegen';

const dbName = process.env.DATABASE_NAME || 'agentic-db';

export default defineConfig({
  endpoint: `http://app-public-${dbName}.localhost:3000/graphql`,
  output: './generated/agentic-db-sdk',
  orm: true,
  nodeHttpAdapter: true,  // Required for Node.js
  docs: {
    readme: true,
    agents: true,
    skills: true,  // Generate skill docs for each table
  },
});
```

## Generate

```bash
npx @constructive-io/graphql-codegen -c graphql-codegen.config.ts
```

Or programmatically:

```typescript
import { generate } from '@constructive-io/graphql-codegen';
import 'dotenv/config';

const dbName = process.env.DATABASE_NAME || 'agentic-db';

await generate({
  endpoint: `http://app-public-${dbName}.localhost:3000/graphql`,
  output: './generated/agentic-db-sdk',
  orm: true,
  nodeHttpAdapter: true,
  docs: {
    readme: true,
    agents: true,
    skills: true,
  },
});
```

## Generated Output

```
generated/agentic-db-sdk/
├── README.md
├── AGENTS.md
├── orm/
│   ├── index.ts          # createClient factory
│   ├── client.ts
│   ├── node-fetch.ts     # NodeHttpAdapter
│   ├── input-types.ts
│   ├── models/
│   │   ├── contact/
│   │   ├── company/
│   │   └── ...
│   └── skills/           # Per-table skill docs
│       ├── contacts.md
│       ├── companies.md
│       └── ...
└── mcp.json              # MCP tool definitions (if enabled)
```

## Using Generated SDK

```typescript
import { createClient } from '@agentic-db/codegen/generated/agentic-db-sdk/orm';
import { NodeHttpAdapter } from '@agentic-db/codegen/generated/agentic-db-sdk/orm/node-fetch';
import 'dotenv/config';

const dbName = process.env.DATABASE_NAME || 'agentic-db';
const token = process.env.ACCESS_TOKEN;

const adapter = new NodeHttpAdapter(
  `http://app-public-${dbName}.localhost:3000/graphql`,
  token ? { Authorization: `Bearer ${token}` } : {}
);

const db = createClient({ adapter });

// Query
const contacts = await db.contact.findMany({
  select: { id: true, firstName: true, lastName: true },
  first: 10,
}).execute();

// Create
const newContact = await db.contact.create({
  data: {
    firstName: 'Dan',
    lastName: 'Lynch',
    entityId: orgId,
  },
  select: { id: true },
}).execute();

// Update
await db.contact.update({
  where: { id: contactId },
  data: { headline: 'Founder' },
  select: { id: true },
}).execute();
```

## Vector Search (if pgvector enabled)

```typescript
const results = await db.vectorSearchContact({
  query: embedding,  // number[] (768-dim)
  limit: 10,
  metric: 'COSINE',
}).execute();
```

## Scalars

The codegen auto-maps `Vector` to `number[]`. If not, add to config:

```typescript
export default defineConfig({
  // ...
  scalars: {
    Vector: 'number[]',
  },
});
```

## See Also

- `skills/RULES.md` — Development rules
- `skills/provision.md` — Database provisioning
- Full codegen docs: `constructive-graphql-codegen` skill
