# threadChunk

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

ORM operations for ThreadChunk records

## Usage

```typescript
db.threadChunk.findMany({ select: { id: true } }).execute()
db.threadChunk.findOne({ id: '<UUID>', select: { id: true } }).execute()
db.threadChunk.create({ data: { entityId: '<UUID>', chunkIndex: '<Int>', content: '<String>', embeddingText: '<String>', embedding: '<Vector>', threadId: '<UUID>', embeddingTextBm25Score: '<Float>', embeddingVectorDistance: '<Float>', contentTrgmSimilarity: '<Float>', embeddingTextTrgmSimilarity: '<Float>', searchScore: '<Float>' }, select: { id: true } }).execute()
db.threadChunk.update({ where: { id: '<UUID>' }, data: { entityId: '<UUID>' }, select: { id: true } }).execute()
db.threadChunk.delete({ where: { id: '<UUID>' } }).execute()
```

## Examples

### List all threadChunk records

```typescript
const items = await db.threadChunk.findMany({
  select: { id: true, entityId: true }
}).execute();
```

### Create a threadChunk

```typescript
const item = await db.threadChunk.create({
  data: { entityId: '<UUID>', chunkIndex: '<Int>', content: '<String>', embeddingText: '<String>', embedding: '<Vector>', threadId: '<UUID>', embeddingTextBm25Score: '<Float>', embeddingVectorDistance: '<Float>', contentTrgmSimilarity: '<Float>', embeddingTextTrgmSimilarity: '<Float>', searchScore: '<Float>' },
  select: { id: true }
}).execute();
```
