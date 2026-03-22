# chat

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

ORM operations for Chat records

## Usage

```typescript
db.chat.findMany({ select: { id: true } }).execute()
db.chat.findOne({ id: '<UUID>', select: { id: true } }).execute()
db.chat.create({ data: { entityId: '<UUID>', title: '<String>', startedAt: '<Datetime>', embeddingText: '<String>', embedding: '<Vector>', embeddingTextBm25Score: '<Float>', embeddingVectorDistance: '<Float>', titleTrgmSimilarity: '<Float>', embeddingTextTrgmSimilarity: '<Float>', searchScore: '<Float>' }, select: { id: true } }).execute()
db.chat.update({ where: { id: '<UUID>' }, data: { entityId: '<UUID>' }, select: { id: true } }).execute()
db.chat.delete({ where: { id: '<UUID>' } }).execute()
```

## Examples

### List all chat records

```typescript
const items = await db.chat.findMany({
  select: { id: true, entityId: true }
}).execute();
```

### Create a chat

```typescript
const item = await db.chat.create({
  data: { entityId: '<UUID>', title: '<String>', startedAt: '<Datetime>', embeddingText: '<String>', embedding: '<Vector>', embeddingTextBm25Score: '<Float>', embeddingVectorDistance: '<Float>', titleTrgmSimilarity: '<Float>', embeddingTextTrgmSimilarity: '<Float>', searchScore: '<Float>' },
  select: { id: true }
}).execute();
```
