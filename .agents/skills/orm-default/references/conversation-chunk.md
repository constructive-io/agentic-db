# conversationChunk

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

ORM operations for ConversationChunk records

## Usage

```typescript
db.conversationChunk.findMany({ select: { id: true } }).execute()
db.conversationChunk.findOne({ id: '<UUID>', select: { id: true } }).execute()
db.conversationChunk.create({ data: { entityId: '<UUID>', chunkIndex: '<Int>', content: '<String>', embeddingText: '<String>', embedding: '<Vector>', embeddingStale: '<Boolean>', conversationId: '<UUID>', embeddingTextBm25Score: '<Float>', embeddingVectorDistance: '<Float>', contentTrgmSimilarity: '<Float>', embeddingTextTrgmSimilarity: '<Float>', searchScore: '<Float>' }, select: { id: true } }).execute()
db.conversationChunk.update({ where: { id: '<UUID>' }, data: { entityId: '<UUID>' }, select: { id: true } }).execute()
db.conversationChunk.delete({ where: { id: '<UUID>' } }).execute()
```

## Examples

### List all conversationChunk records

```typescript
const items = await db.conversationChunk.findMany({
  select: { id: true, entityId: true }
}).execute();
```

### Create a conversationChunk

```typescript
const item = await db.conversationChunk.create({
  data: { entityId: '<UUID>', chunkIndex: '<Int>', content: '<String>', embeddingText: '<String>', embedding: '<Vector>', embeddingStale: '<Boolean>', conversationId: '<UUID>', embeddingTextBm25Score: '<Float>', embeddingVectorDistance: '<Float>', contentTrgmSimilarity: '<Float>', embeddingTextTrgmSimilarity: '<Float>', searchScore: '<Float>' },
  select: { id: true }
}).execute();
```
