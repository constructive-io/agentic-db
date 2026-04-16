# runtimeState

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

ORM operations for RuntimeState records

**pgvector embedding fields:** `embedding`
High-dimensional vector columns for semantic similarity search. Query via the Unified Search API pgvector adapter using cosine, L2, or inner-product distance.

## Usage

```typescript
db.runtimeState.findMany({ select: { id: true } }).execute()
db.runtimeState.findOne({ id: '<UUID>', select: { id: true } }).execute()
db.runtimeState.create({ data: { name: '<String>', stateType: '<String>', status: '<String>', data: '<JSON>', parentId: '<UUID>', startedAt: '<Datetime>', endedAt: '<Datetime>', embeddingText: '<String>', embedding: '<Vector>', embeddingStale: '<Boolean>', embeddingTextBm25Score: '<Float>', embeddingVectorDistance: '<Float>', nameTrgmSimilarity: '<Float>', stateTypeTrgmSimilarity: '<Float>', statusTrgmSimilarity: '<Float>', embeddingTextTrgmSimilarity: '<Float>', searchScore: '<Float>' }, select: { id: true } }).execute()
db.runtimeState.update({ where: { id: '<UUID>' }, data: { name: '<String>' }, select: { id: true } }).execute()
db.runtimeState.delete({ where: { id: '<UUID>' } }).execute()
```

## Examples

### List all runtimeState records

```typescript
const items = await db.runtimeState.findMany({
  select: { id: true, name: true }
}).execute();
```

### Create a runtimeState

```typescript
const item = await db.runtimeState.create({
  data: { name: '<String>', stateType: '<String>', status: '<String>', data: '<JSON>', parentId: '<UUID>', startedAt: '<Datetime>', endedAt: '<Datetime>', embeddingText: '<String>', embedding: '<Vector>', embeddingStale: '<Boolean>', embeddingTextBm25Score: '<Float>', embeddingVectorDistance: '<Float>', nameTrgmSimilarity: '<Float>', stateTypeTrgmSimilarity: '<Float>', statusTrgmSimilarity: '<Float>', embeddingTextTrgmSimilarity: '<Float>', searchScore: '<Float>' },
  select: { id: true }
}).execute();
```
