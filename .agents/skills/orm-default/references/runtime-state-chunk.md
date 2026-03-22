# runtimeStateChunk

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

ORM operations for RuntimeStateChunk records

## Usage

```typescript
db.runtimeStateChunk.findMany({ select: { id: true } }).execute()
db.runtimeStateChunk.findOne({ id: '<UUID>', select: { id: true } }).execute()
db.runtimeStateChunk.create({ data: { entityId: '<UUID>', chunkIndex: '<Int>', content: '<String>', embeddingText: '<String>', embedding: '<Vector>', embeddingStale: '<Boolean>', runtimeStateId: '<UUID>', embeddingTextBm25Score: '<Float>', embeddingVectorDistance: '<Float>', contentTrgmSimilarity: '<Float>', embeddingTextTrgmSimilarity: '<Float>', searchScore: '<Float>' }, select: { id: true } }).execute()
db.runtimeStateChunk.update({ where: { id: '<UUID>' }, data: { entityId: '<UUID>' }, select: { id: true } }).execute()
db.runtimeStateChunk.delete({ where: { id: '<UUID>' } }).execute()
```

## Examples

### List all runtimeStateChunk records

```typescript
const items = await db.runtimeStateChunk.findMany({
  select: { id: true, entityId: true }
}).execute();
```

### Create a runtimeStateChunk

```typescript
const item = await db.runtimeStateChunk.create({
  data: { entityId: '<UUID>', chunkIndex: '<Int>', content: '<String>', embeddingText: '<String>', embedding: '<Vector>', embeddingStale: '<Boolean>', runtimeStateId: '<UUID>', embeddingTextBm25Score: '<Float>', embeddingVectorDistance: '<Float>', contentTrgmSimilarity: '<Float>', embeddingTextTrgmSimilarity: '<Float>', searchScore: '<Float>' },
  select: { id: true }
}).execute();
```
