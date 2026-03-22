# reminderChunk

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

ORM operations for ReminderChunk records

## Usage

```typescript
db.reminderChunk.findMany({ select: { id: true } }).execute()
db.reminderChunk.findOne({ id: '<UUID>', select: { id: true } }).execute()
db.reminderChunk.create({ data: { entityId: '<UUID>', chunkIndex: '<Int>', content: '<String>', embeddingText: '<String>', embedding: '<Vector>', reminderId: '<UUID>', embeddingTextBm25Score: '<Float>', embeddingVectorDistance: '<Float>', contentTrgmSimilarity: '<Float>', embeddingTextTrgmSimilarity: '<Float>', searchScore: '<Float>' }, select: { id: true } }).execute()
db.reminderChunk.update({ where: { id: '<UUID>' }, data: { entityId: '<UUID>' }, select: { id: true } }).execute()
db.reminderChunk.delete({ where: { id: '<UUID>' } }).execute()
```

## Examples

### List all reminderChunk records

```typescript
const items = await db.reminderChunk.findMany({
  select: { id: true, entityId: true }
}).execute();
```

### Create a reminderChunk

```typescript
const item = await db.reminderChunk.create({
  data: { entityId: '<UUID>', chunkIndex: '<Int>', content: '<String>', embeddingText: '<String>', embedding: '<Vector>', reminderId: '<UUID>', embeddingTextBm25Score: '<Float>', embeddingVectorDistance: '<Float>', contentTrgmSimilarity: '<Float>', embeddingTextTrgmSimilarity: '<Float>', searchScore: '<Float>' },
  select: { id: true }
}).execute();
```
