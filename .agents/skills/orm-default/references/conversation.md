# conversation

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

ORM operations for Conversation records

## Usage

```typescript
db.conversation.findMany({ select: { id: true } }).execute()
db.conversation.findOne({ id: '<UUID>', select: { id: true } }).execute()
db.conversation.create({ data: { entityId: '<UUID>', title: '<String>', agentId: '<UUID>', status: '<String>', meta: '<JSON>', embeddingText: '<String>', embedding: '<Vector>', embeddingStale: '<Boolean>', embeddingTextBm25Score: '<Float>', embeddingVectorDistance: '<Float>', titleTrgmSimilarity: '<Float>', statusTrgmSimilarity: '<Float>', embeddingTextTrgmSimilarity: '<Float>', searchScore: '<Float>' }, select: { id: true } }).execute()
db.conversation.update({ where: { id: '<UUID>' }, data: { entityId: '<UUID>' }, select: { id: true } }).execute()
db.conversation.delete({ where: { id: '<UUID>' } }).execute()
```

## Examples

### List all conversation records

```typescript
const items = await db.conversation.findMany({
  select: { id: true, entityId: true }
}).execute();
```

### Create a conversation

```typescript
const item = await db.conversation.create({
  data: { entityId: '<UUID>', title: '<String>', agentId: '<UUID>', status: '<String>', meta: '<JSON>', embeddingText: '<String>', embedding: '<Vector>', embeddingStale: '<Boolean>', embeddingTextBm25Score: '<Float>', embeddingVectorDistance: '<Float>', titleTrgmSimilarity: '<Float>', statusTrgmSimilarity: '<Float>', embeddingTextTrgmSimilarity: '<Float>', searchScore: '<Float>' },
  select: { id: true }
}).execute();
```
