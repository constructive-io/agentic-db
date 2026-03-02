---
name: agent-tasks
description: CRUD operations for agent tasks
---

# Agent Tasks

Manage tasks for the agent system.

## Table Schema

| Field | Type | Notes |
|-------|------|-------|
| `id` | uuid | Primary key |
| `entity_id` | uuid | Org scope |
| `title` | text | Required |
| `description` | text | |
| `status` | text | ready, in_progress, done, blocked |
| `priority` | int | 0 = normal, higher = more urgent |
| `embedding` | vector(768) | For semantic search |
| `created_at` | timestamptz | |
| `updated_at` | timestamptz | |

## Insert Task

```typescript
async function insertTask(db, data: {
  entityId: string;
  title: string;
  description?: string;
  status?: string;
  priority?: number;
}) {
  const embeddingText = `${data.title} ${data.description || ''}`;
  const embedding = await generateEmbedding(embeddingText);
  
  return db.task.create({
    data: {
      entityId: data.entityId,
      title: data.title,
      description: data.description,
      status: data.status || 'ready',
      priority: data.priority || 0,
      embedding,
    },
    select: { id: true, title: true },
  }).execute();
}
```

## Search Tasks

```typescript
async function searchTasks(db, query: string, limit = 10) {
  const embedding = await generateEmbedding(query);
  return db.vectorSearchTask({ query: embedding, limit }).execute();
}
```
