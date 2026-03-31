# prompt

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

ORM operations for Prompt records

**pgvector embedding fields:** `embedding`
High-dimensional vector columns for semantic similarity search. Query via the Unified Search API pgvector adapter using cosine, L2, or inner-product distance.

## Usage

```typescript
db.prompt.findMany({ select: { id: true } }).execute()
db.prompt.findOne({ id: '<UUID>', select: { id: true } }).execute()
db.prompt.create({ data: { entityId: '<UUID>', name: '<String>', content: '<String>', category: '<String>', version: '<Int>', isActive: '<Boolean>', tags: '<String>', embeddingText: '<String>', embedding: '<Vector>', embeddingStale: '<Boolean>', embeddingTextBm25Score: '<Float>', embeddingVectorDistance: '<Float>', nameTrgmSimilarity: '<Float>', contentTrgmSimilarity: '<Float>', categoryTrgmSimilarity: '<Float>', embeddingTextTrgmSimilarity: '<Float>', searchScore: '<Float>' }, select: { id: true } }).execute()
db.prompt.update({ where: { id: '<UUID>' }, data: { entityId: '<UUID>' }, select: { id: true } }).execute()
db.prompt.delete({ where: { id: '<UUID>' } }).execute()
```

## Examples

### List all prompt records

```typescript
const items = await db.prompt.findMany({
  select: { id: true, entityId: true }
}).execute();
```

### Create a prompt

```typescript
const item = await db.prompt.create({
  data: { entityId: '<UUID>', name: '<String>', content: '<String>', category: '<String>', version: '<Int>', isActive: '<Boolean>', tags: '<String>', embeddingText: '<String>', embedding: '<Vector>', embeddingStale: '<Boolean>', embeddingTextBm25Score: '<Float>', embeddingVectorDistance: '<Float>', nameTrgmSimilarity: '<Float>', contentTrgmSimilarity: '<Float>', categoryTrgmSimilarity: '<Float>', embeddingTextTrgmSimilarity: '<Float>', searchScore: '<Float>' },
  select: { id: true }
}).execute();
```
