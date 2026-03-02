---
name: agent-memories
description: CRUD operations for agent memories (long-term knowledge storage)
---

# Agent Memories

Store and retrieve long-term memories for the agent.

## Table Schema

| Field | Type | Notes |
|-------|------|-------|
| `id` | uuid | Primary key |
| `entity_id` | uuid | Org scope |
| `content` | text | Memory content (required) |
| `tags` | text[] | Categorization tags |
| `embedding` | vector(768) | For semantic retrieval |
| `created_at` | timestamptz | |
| `updated_at` | timestamptz | |

## Insert Memory

```typescript
async function insertMemory(db, data: {
  entityId: string;
  content: string;
  tags?: string[];
}) {
  const embedding = await generateEmbedding(data.content);
  
  return db.memory.create({
    data: {
      entityId: data.entityId,
      content: data.content,
      tags: data.tags,
      embedding,
    },
    select: { id: true },
  }).execute();
}
```

## Search Memories

```typescript
async function searchMemories(db, query: string, limit = 10) {
  const embedding = await generateEmbedding(query);
  return db.vectorSearchMemory({ query: embedding, limit }).execute();
}
```

## Use Case: Remember Context

```typescript
// After an important interaction
await insertMemory(db, {
  entityId: orgId,
  content: 'Dan mentioned he attended the Mistral Hackathon at Wefunder with Kris Floyd on Feb 28-Mar 1 2026',
  tags: ['hackathon', 'event', 'dan', 'kris-floyd', 'wefunder'],
});

// Later retrieval
const memories = await searchMemories(db, 'hackathon wefunder');
```
