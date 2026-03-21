# reminder

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

ORM operations for Reminder records

## Usage

```typescript
db.reminder.findMany({ select: { id: true } }).execute()
db.reminder.findOne({ id: '<UUID>', select: { id: true } }).execute()
db.reminder.create({ data: { entityId: '<UUID>', title: '<String>', dueAt: '<Datetime>', completedAt: '<Datetime>', recurrence: '<String>', status: '<String>', embeddingText: '<String>', embedding: '<Vector>', embeddingTextBm25Score: '<Float>', embeddingVectorDistance: '<Float>', titleTrgmSimilarity: '<Float>', recurrenceTrgmSimilarity: '<Float>', statusTrgmSimilarity: '<Float>', embeddingTextTrgmSimilarity: '<Float>', searchScore: '<Float>' }, select: { id: true } }).execute()
db.reminder.update({ where: { id: '<UUID>' }, data: { entityId: '<UUID>' }, select: { id: true } }).execute()
db.reminder.delete({ where: { id: '<UUID>' } }).execute()
```

## Examples

### List all reminder records

```typescript
const items = await db.reminder.findMany({
  select: { id: true, entityId: true }
}).execute();
```

### Create a reminder

```typescript
const item = await db.reminder.create({
  data: { entityId: '<UUID>', title: '<String>', dueAt: '<Datetime>', completedAt: '<Datetime>', recurrence: '<String>', status: '<String>', embeddingText: '<String>', embedding: '<Vector>', embeddingTextBm25Score: '<Float>', embeddingVectorDistance: '<Float>', titleTrgmSimilarity: '<Float>', recurrenceTrgmSimilarity: '<Float>', statusTrgmSimilarity: '<Float>', embeddingTextTrgmSimilarity: '<Float>', searchScore: '<Float>' },
  select: { id: true }
}).execute();
```
