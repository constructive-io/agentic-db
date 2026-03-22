# message

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

ORM operations for Message records

## Usage

```typescript
db.message.findMany({ select: { id: true } }).execute()
db.message.findOne({ id: '<UUID>', select: { id: true } }).execute()
db.message.create({ data: { entityId: '<UUID>', conversationId: '<UUID>', role: '<String>', content: '<String>', tokenCount: '<Int>', meta: '<JSON>', toolCalls: '<JSON>', toolResults: '<JSON>', embeddingText: '<String>', embedding: '<Vector>', embeddingStale: '<Boolean>', embeddingTextBm25Score: '<Float>', embeddingVectorDistance: '<Float>', roleTrgmSimilarity: '<Float>', contentTrgmSimilarity: '<Float>', embeddingTextTrgmSimilarity: '<Float>', searchScore: '<Float>' }, select: { id: true } }).execute()
db.message.update({ where: { id: '<UUID>' }, data: { entityId: '<UUID>' }, select: { id: true } }).execute()
db.message.delete({ where: { id: '<UUID>' } }).execute()
```

## Examples

### List all message records

```typescript
const items = await db.message.findMany({
  select: { id: true, entityId: true }
}).execute();
```

### Create a message

```typescript
const item = await db.message.create({
  data: { entityId: '<UUID>', conversationId: '<UUID>', role: '<String>', content: '<String>', tokenCount: '<Int>', meta: '<JSON>', toolCalls: '<JSON>', toolResults: '<JSON>', embeddingText: '<String>', embedding: '<Vector>', embeddingStale: '<Boolean>', embeddingTextBm25Score: '<Float>', embeddingVectorDistance: '<Float>', roleTrgmSimilarity: '<Float>', contentTrgmSimilarity: '<Float>', embeddingTextTrgmSimilarity: '<Float>', searchScore: '<Float>' },
  select: { id: true }
}).execute();
```
