# eventChunk

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

ORM operations for EventChunk records

## Usage

```typescript
db.eventChunk.findMany({ select: { id: true } }).execute()
db.eventChunk.findOne({ id: '<UUID>', select: { id: true } }).execute()
db.eventChunk.create({ data: { entityId: '<UUID>', chunkIndex: '<Int>', content: '<String>', embeddingText: '<String>', embedding: '<Vector>', eventId: '<UUID>', embeddingTextBm25Score: '<Float>', embeddingVectorDistance: '<Float>', contentTrgmSimilarity: '<Float>', embeddingTextTrgmSimilarity: '<Float>', searchScore: '<Float>' }, select: { id: true } }).execute()
db.eventChunk.update({ where: { id: '<UUID>' }, data: { entityId: '<UUID>' }, select: { id: true } }).execute()
db.eventChunk.delete({ where: { id: '<UUID>' } }).execute()
```

## Examples

### List all eventChunk records

```typescript
const items = await db.eventChunk.findMany({
  select: { id: true, entityId: true }
}).execute();
```

### Create a eventChunk

```typescript
const item = await db.eventChunk.create({
  data: { entityId: '<UUID>', chunkIndex: '<Int>', content: '<String>', embeddingText: '<String>', embedding: '<Vector>', eventId: '<UUID>', embeddingTextBm25Score: '<Float>', embeddingVectorDistance: '<Float>', contentTrgmSimilarity: '<Float>', embeddingTextTrgmSimilarity: '<Float>', searchScore: '<Float>' },
  select: { id: true }
}).execute();
```
