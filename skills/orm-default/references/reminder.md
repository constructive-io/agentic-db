# reminder

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

ORM operations for Reminder records

## Usage

```typescript
db.reminder.findMany({ select: { id: true } }).execute()
db.reminder.findOne({ id: '<value>', select: { id: true } }).execute()
db.reminder.create({ data: { entityId: '<value>', title: '<value>', dueAt: '<value>', completedAt: '<value>', recurrence: '<value>', status: '<value>', relatedEntityId: '<value>', relatedEntityType: '<value>', embeddingText: '<value>', embedding: '<value>', embeddingTextBm25Score: '<value>', titleTrgmSimilarity: '<value>', recurrenceTrgmSimilarity: '<value>', statusTrgmSimilarity: '<value>', relatedEntityTypeTrgmSimilarity: '<value>', embeddingTextTrgmSimilarity: '<value>', embeddingVectorDistance: '<value>', searchScore: '<value>' }, select: { id: true } }).execute()
db.reminder.update({ where: { id: '<value>' }, data: { entityId: '<new>' }, select: { id: true } }).execute()
db.reminder.delete({ where: { id: '<value>' } }).execute()
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
  data: { entityId: 'value', title: 'value', dueAt: 'value', completedAt: 'value', recurrence: 'value', status: 'value', relatedEntityId: 'value', relatedEntityType: 'value', embeddingText: 'value', embedding: 'value', embeddingTextBm25Score: 'value', titleTrgmSimilarity: 'value', recurrenceTrgmSimilarity: 'value', statusTrgmSimilarity: 'value', relatedEntityTypeTrgmSimilarity: 'value', embeddingTextTrgmSimilarity: 'value', embeddingVectorDistance: 'value', searchScore: 'value' },
  select: { id: true }
}).execute();
```
