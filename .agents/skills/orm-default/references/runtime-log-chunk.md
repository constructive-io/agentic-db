# runtimeLogChunk

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

ORM operations for RuntimeLogChunk records

## Usage

```typescript
db.runtimeLogChunk.findMany({ select: { id: true } }).execute()
db.runtimeLogChunk.findOne({ id: '<UUID>', select: { id: true } }).execute()
db.runtimeLogChunk.create({ data: { entityId: '<UUID>', chunkIndex: '<Int>', content: '<String>', embeddingText: '<String>', embedding: '<Vector>', embeddingStale: '<Boolean>', runtimeLogId: '<UUID>', embeddingTextBm25Score: '<Float>', embeddingVectorDistance: '<Float>', contentTrgmSimilarity: '<Float>', embeddingTextTrgmSimilarity: '<Float>', searchScore: '<Float>' }, select: { id: true } }).execute()
db.runtimeLogChunk.update({ where: { id: '<UUID>' }, data: { entityId: '<UUID>' }, select: { id: true } }).execute()
db.runtimeLogChunk.delete({ where: { id: '<UUID>' } }).execute()
```

## Examples

### List all runtimeLogChunk records

```typescript
const items = await db.runtimeLogChunk.findMany({
  select: { id: true, entityId: true }
}).execute();
```

### Create a runtimeLogChunk

```typescript
const item = await db.runtimeLogChunk.create({
  data: { entityId: '<UUID>', chunkIndex: '<Int>', content: '<String>', embeddingText: '<String>', embedding: '<Vector>', embeddingStale: '<Boolean>', runtimeLogId: '<UUID>', embeddingTextBm25Score: '<Float>', embeddingVectorDistance: '<Float>', contentTrgmSimilarity: '<Float>', embeddingTextTrgmSimilarity: '<Float>', searchScore: '<Float>' },
  select: { id: true }
}).execute();
```
