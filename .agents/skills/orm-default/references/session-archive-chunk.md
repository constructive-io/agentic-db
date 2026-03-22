# sessionArchiveChunk

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

ORM operations for SessionArchiveChunk records

## Usage

```typescript
db.sessionArchiveChunk.findMany({ select: { id: true } }).execute()
db.sessionArchiveChunk.findOne({ id: '<UUID>', select: { id: true } }).execute()
db.sessionArchiveChunk.create({ data: { entityId: '<UUID>', chunkIndex: '<Int>', content: '<String>', embeddingText: '<String>', embedding: '<Vector>', sessionArchiveId: '<UUID>', embeddingTextBm25Score: '<Float>', embeddingVectorDistance: '<Float>', contentTrgmSimilarity: '<Float>', embeddingTextTrgmSimilarity: '<Float>', searchScore: '<Float>' }, select: { id: true } }).execute()
db.sessionArchiveChunk.update({ where: { id: '<UUID>' }, data: { entityId: '<UUID>' }, select: { id: true } }).execute()
db.sessionArchiveChunk.delete({ where: { id: '<UUID>' } }).execute()
```

## Examples

### List all sessionArchiveChunk records

```typescript
const items = await db.sessionArchiveChunk.findMany({
  select: { id: true, entityId: true }
}).execute();
```

### Create a sessionArchiveChunk

```typescript
const item = await db.sessionArchiveChunk.create({
  data: { entityId: '<UUID>', chunkIndex: '<Int>', content: '<String>', embeddingText: '<String>', embedding: '<Vector>', sessionArchiveId: '<UUID>', embeddingTextBm25Score: '<Float>', embeddingVectorDistance: '<Float>', contentTrgmSimilarity: '<Float>', embeddingTextTrgmSimilarity: '<Float>', searchScore: '<Float>' },
  select: { id: true }
}).execute();
```
