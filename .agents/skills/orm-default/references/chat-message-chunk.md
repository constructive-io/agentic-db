# chatMessageChunk

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

ORM operations for ChatMessageChunk records

## Usage

```typescript
db.chatMessageChunk.findMany({ select: { id: true } }).execute()
db.chatMessageChunk.findOne({ id: '<UUID>', select: { id: true } }).execute()
db.chatMessageChunk.create({ data: { entityId: '<UUID>', chunkIndex: '<Int>', content: '<String>', embeddingText: '<String>', embedding: '<Vector>', chatMessageId: '<UUID>', embeddingTextBm25Score: '<Float>', embeddingVectorDistance: '<Float>', contentTrgmSimilarity: '<Float>', embeddingTextTrgmSimilarity: '<Float>', searchScore: '<Float>' }, select: { id: true } }).execute()
db.chatMessageChunk.update({ where: { id: '<UUID>' }, data: { entityId: '<UUID>' }, select: { id: true } }).execute()
db.chatMessageChunk.delete({ where: { id: '<UUID>' } }).execute()
```

## Examples

### List all chatMessageChunk records

```typescript
const items = await db.chatMessageChunk.findMany({
  select: { id: true, entityId: true }
}).execute();
```

### Create a chatMessageChunk

```typescript
const item = await db.chatMessageChunk.create({
  data: { entityId: '<UUID>', chunkIndex: '<Int>', content: '<String>', embeddingText: '<String>', embedding: '<Vector>', chatMessageId: '<UUID>', embeddingTextBm25Score: '<Float>', embeddingVectorDistance: '<Float>', contentTrgmSimilarity: '<Float>', embeddingTextTrgmSimilarity: '<Float>', searchScore: '<Float>' },
  select: { id: true }
}).execute();
```
