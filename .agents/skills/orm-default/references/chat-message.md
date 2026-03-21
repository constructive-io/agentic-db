# chatMessage

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

ORM operations for ChatMessage records

## Usage

```typescript
db.chatMessage.findMany({ select: { id: true } }).execute()
db.chatMessage.findOne({ id: '<UUID>', select: { id: true } }).execute()
db.chatMessage.create({ data: { entityId: '<UUID>', chatId: '<UUID>', threadId: '<UUID>', role: '<String>', content: '<String>', toolCalls: '<JSON>', embeddingText: '<String>', embedding: '<Vector>', contentBm25Score: '<Float>', embeddingTextBm25Score: '<Float>', embeddingVectorDistance: '<Float>', roleTrgmSimilarity: '<Float>', contentTrgmSimilarity: '<Float>', embeddingTextTrgmSimilarity: '<Float>', searchScore: '<Float>' }, select: { id: true } }).execute()
db.chatMessage.update({ where: { id: '<UUID>' }, data: { entityId: '<UUID>' }, select: { id: true } }).execute()
db.chatMessage.delete({ where: { id: '<UUID>' } }).execute()
```

## Examples

### List all chatMessage records

```typescript
const items = await db.chatMessage.findMany({
  select: { id: true, entityId: true }
}).execute();
```

### Create a chatMessage

```typescript
const item = await db.chatMessage.create({
  data: { entityId: '<UUID>', chatId: '<UUID>', threadId: '<UUID>', role: '<String>', content: '<String>', toolCalls: '<JSON>', embeddingText: '<String>', embedding: '<Vector>', contentBm25Score: '<Float>', embeddingTextBm25Score: '<Float>', embeddingVectorDistance: '<Float>', roleTrgmSimilarity: '<Float>', contentTrgmSimilarity: '<Float>', embeddingTextTrgmSimilarity: '<Float>', searchScore: '<Float>' },
  select: { id: true }
}).execute();
```
