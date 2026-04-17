---
name: agent-tasks
description: CRUD and filter patterns for the agent `tasks` queue via the generated ORM.
---

# Agent Tasks

A prioritized task queue attached to an agent. Every row has a required
`title`, optional `description`/`status`/`priority`/`result` and timestamps,
and an optional `agentId` FK so you can scope tasks to a specific agent.

## Imports

```typescript
import { createClient } from '@agentic-db/sdk';

const db = createClient({
  endpoint: process.env.AGENTIC_DB_GRAPHQL_URL!,
  headers: { Authorization: `Bearer ${process.env.AGENTIC_DB_TOKEN!}` },
});
```

## Create a task

```typescript
const created = await db.task
  .create({
    data: {
      agentId,                   // optional — omit for an unassigned task
      title: 'Summarize Q1 docs',
      description: 'One-paragraph summary per document, filed under /q1',
      status: 'pending',         // application-level enum (pending|in_progress|completed|blocked)
      priority: 1,               // higher = more urgent
      embeddingText: 'Summarize Q1 docs — one paragraph per document',
    },
    select: { id: true, title: true, status: true, priority: true },
  })
  .execute();
```

## List tasks for an agent, ordered by priority

```typescript
const open = await db.task
  .findMany({
    where: {
      agentId: { equalTo: agentId },
      status: { notEqualTo: 'completed' },
    },
    orderBy: ['PRIORITY_DESC', 'CREATED_AT_ASC'],
    first: 20,
    select: { id: true, title: true, status: true, priority: true },
  })
  .execute();
```

## Update a task's status / result

```typescript
await db.task
  .update({
    id: taskId,
    data: { status: 'completed', result: 'Filed 12 summaries under /q1' },
    select: { id: true, status: true, result: true },
  })
  .execute();
```

## Semantic search over tasks

Tasks expose the same unified search filters as other embedding-backed tables.
Use `where.vectorEmbedding` plus `where.fullTextSearch` to build a hybrid query.

```typescript
const hits = await db.task
  .findMany({
    where: {
      or: [
        {
          vectorEmbedding: {
            vector: await generateEmbedding('customer onboarding work'),
            metric: 'COSINE',
            distance: 2.0,
          },
        },
        { fullTextSearch: 'customer onboarding' },
      ],
    },
    first: 10,
    select: { id: true, title: true, status: true, searchScore: true },
  })
  .execute();
```

The `agentic-db search` CLI wraps this same pattern — see
`sdk/cli/src/commands/search.ts` for the reference implementation.

## Tested contracts

See `describe('Task CRUD + filters + update')` and
`describe('Pagination and ordering')` in
[`packages/integration-tests/__tests__/orm.test.ts`](../../packages/integration-tests/__tests__/orm.test.ts),
and the CLI `--tables tasks` regression test in
[`packages/cli-e2e-tests/__tests__/cli-e2e.test.ts`](../../packages/cli-e2e-tests/__tests__/cli-e2e.test.ts).
