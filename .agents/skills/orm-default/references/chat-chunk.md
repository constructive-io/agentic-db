# chatChunk

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

ORM operations for ChatChunk records

## Usage

```typescript
db.chatChunk.findMany({ select: { id: true } }).execute()
db.chatChunk.findOne({ id: '<UUID>', select: { id: true } }).execute()
db.chatChunk.create({ data: { entityId: '<UUID>', chunkIndex: '<Int>', content: '<String>', embeddingText: '<String>', embedding: '<Vector>', chatId: '<UUID>', embeddingTextBm25Score: '<Float>', embeddingVectorDistance: '<Float>', contentTrgmSimilarity: '<Float>', embeddingTextTrgmSimilarity: '<Float>', searchScore: '<Float>' }, select: { id: true } }).execute()
db.chatChunk.update({ where: { id: '<UUID>' }, data: { entityId: '<UUID>' }, select: { id: true } }).execute()
db.chatChunk.delete({ where: { id: '<UUID>' } }).execute()
```

## Examples

### List all chatChunk records

```typescript
const items = await db.chatChunk.findMany({
  select: { id: true, entityId: true }
}).execute();
```

### Create a chatChunk

```typescript
const item = await db.chatChunk.create({
  data: { entityId: '<UUID>', chunkIndex: '<Int>', content: '<String>', embeddingText: '<String>', embedding: '<Vector>', chatId: '<UUID>', embeddingTextBm25Score: '<Float>', embeddingVectorDistance: '<Float>', contentTrgmSimilarity: '<Float>', embeddingTextTrgmSimilarity: '<Float>', searchScore: '<Float>' },
  select: { id: true }
}).execute();
```
