# memory

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

ORM operations for Memory records

**pgvector embedding fields:** `embedding`
High-dimensional vector columns for semantic similarity search. Query via the Unified Search API pgvector adapter using cosine, L2, or inner-product distance.

## Usage

```typescript
db.memory.findMany({ select: { id: true } }).execute()
db.memory.findOne({ id: '<UUID>', select: { id: true } }).execute()
db.memory.create({ data: { entityId: '<UUID>', title: '<String>', content: '<String>', location: '<String>', occurredAt: '<Datetime>', mood: '<String>', tags: '<String>', embeddingText: '<String>', embedding: '<Vector>', embeddingStale: '<Boolean>', locationGeo: '<GeographyInterface>', agentId: '<UUID>', embeddingTextBm25Score: '<Float>', embeddingVectorDistance: '<Float>', titleTrgmSimilarity: '<Float>', contentTrgmSimilarity: '<Float>', locationTrgmSimilarity: '<Float>', moodTrgmSimilarity: '<Float>', embeddingTextTrgmSimilarity: '<Float>', searchScore: '<Float>' }, select: { id: true } }).execute()
db.memory.update({ where: { id: '<UUID>' }, data: { entityId: '<UUID>' }, select: { id: true } }).execute()
db.memory.delete({ where: { id: '<UUID>' } }).execute()
```

## Examples

### List all memory records

```typescript
const items = await db.memory.findMany({
  select: { id: true, entityId: true }
}).execute();
```

### Create a memory

```typescript
const item = await db.memory.create({
  data: { entityId: '<UUID>', title: '<String>', content: '<String>', location: '<String>', occurredAt: '<Datetime>', mood: '<String>', tags: '<String>', embeddingText: '<String>', embedding: '<Vector>', embeddingStale: '<Boolean>', locationGeo: '<GeographyInterface>', agentId: '<UUID>', embeddingTextBm25Score: '<Float>', embeddingVectorDistance: '<Float>', titleTrgmSimilarity: '<Float>', contentTrgmSimilarity: '<Float>', locationTrgmSimilarity: '<Float>', moodTrgmSimilarity: '<Float>', embeddingTextTrgmSimilarity: '<Float>', searchScore: '<Float>' },
  select: { id: true }
}).execute();
```
