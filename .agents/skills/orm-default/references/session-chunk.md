# sessionChunk

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

ORM operations for SessionChunk records

## Usage

```typescript
db.sessionChunk.findMany({ select: { id: true } }).execute()
db.sessionChunk.findOne({ id: '<UUID>', select: { id: true } }).execute()
db.sessionChunk.create({ data: { entityId: '<UUID>', chunkIndex: '<Int>', content: '<String>', embeddingText: '<String>', embedding: '<Vector>', sessionId: '<UUID>', embeddingTextBm25Score: '<Float>', embeddingVectorDistance: '<Float>', contentTrgmSimilarity: '<Float>', embeddingTextTrgmSimilarity: '<Float>', searchScore: '<Float>' }, select: { id: true } }).execute()
db.sessionChunk.update({ where: { id: '<UUID>' }, data: { entityId: '<UUID>' }, select: { id: true } }).execute()
db.sessionChunk.delete({ where: { id: '<UUID>' } }).execute()
```

## Examples

### List all sessionChunk records

```typescript
const items = await db.sessionChunk.findMany({
  select: { id: true, entityId: true }
}).execute();
```

### Create a sessionChunk

```typescript
const item = await db.sessionChunk.create({
  data: { entityId: '<UUID>', chunkIndex: '<Int>', content: '<String>', embeddingText: '<String>', embedding: '<Vector>', sessionId: '<UUID>', embeddingTextBm25Score: '<Float>', embeddingVectorDistance: '<Float>', contentTrgmSimilarity: '<Float>', embeddingTextTrgmSimilarity: '<Float>', searchScore: '<Float>' },
  select: { id: true }
}).execute();
```
