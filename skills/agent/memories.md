---
name: agent-memories
description: CRUD and vector search for agent `memories` via the generated ORM.
---

# Agent Memories

Long-term episodic memory for your agent. Every row has a required `title`,
optional `content`/`location`/`occurredAt`/`mood`/`tags`, an `agentId` FK for
multi-agent isolation, and embedding columns that are auto-populated by the
`@agentic-db/worker` pipeline.

## Imports

```typescript
import { createClient } from '@agentic-db/sdk';

const db = createClient({
  endpoint: process.env.AGENTIC_DB_GRAPHQL_URL!,
  headers: { Authorization: `Bearer ${process.env.AGENTIC_DB_TOKEN!}` },
});
```

## Insert a memory

`memory.create` takes `data` (the patch) and `select` (the fields to return).
Passing `embeddingText` is enough — the DB trigger will enqueue an embedding
job that the worker fulfils. If you've already computed an embedding locally,
pass it directly as `embedding`.

```typescript
const res = await db.memory
  .create({
    data: {
      agentId, // optional — omit for a shared/user-level memory
      title: 'Q2 launch kickoff — Acme team',
      content: 'Discussed rollout plan with Alice and the Acme delivery team.',
      tags: ['launch', 'q2', 'acme'],
      embeddingText:
        'Q2 launch kickoff with Alice from Acme about the rollout plan',
    },
    select: { id: true, title: true },
  })
  .execute();
```

## Search memories by meaning (vector)

Memories are searched via the standard `where.vectorEmbedding` filter on
`memory.findMany`. Pass a 768-dim embedding (matching the
`nomic-embed-text` model in the default worker) and a COSINE distance budget.

```typescript
async function searchMemories(query: string, limit = 10) {
  const queryEmbedding = await generateEmbedding(query); // number[] length 768
  return db.memory
    .findMany({
      where: {
        vectorEmbedding: {
          vector: queryEmbedding,
          metric: 'COSINE',
          distance: 2.0, // cosine distance is 0..2; 2.0 keeps all for ranking
        },
      },
      first: limit,
      select: {
        id: true,
        title: true,
        content: true,
        tags: true,
        embeddingVectorDistance: true, // ranking score
      },
    })
    .execute();
}
```

## Hybrid search (vector + full-text)

Combine vector similarity with Postgres full-text search by OR-ing the two
filters. This is exactly what the `agentic-db search` CLI does under the hood.

```typescript
const hits = await db.memory
  .findMany({
    where: {
      or: [
        {
          vectorEmbedding: {
            vector: queryEmbedding,
            metric: 'COSINE',
            distance: 2.0,
          },
        },
        { fullTextSearch: query },
      ],
    },
    first: 10,
    select: { id: true, title: true, searchScore: true },
  })
  .execute();
```

## Update a memory

```typescript
await db.memory
  .update({
    id: memoryId,
    data: { mood: 'confident', tags: ['launch', 'q2', 'acme', 'wins'] },
    select: { id: true, mood: true, tags: true },
  })
  .execute();
```

## Tested contracts

All of the above is exercised in
[`packages/integration-tests/__tests__/orm.test.ts`](../../packages/integration-tests/__tests__/orm.test.ts)
(see `describe('Memory CRUD via ORM')`) and
[`packages/integration-tests/__tests__/rag.test.ts`](../../packages/integration-tests/__tests__/rag.test.ts)
for the real-Ollama pipeline end-to-end.
