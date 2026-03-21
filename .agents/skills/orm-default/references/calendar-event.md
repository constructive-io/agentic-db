# calendarEvent

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

ORM operations for CalendarEvent records

## Usage

```typescript
db.calendarEvent.findMany({ select: { id: true } }).execute()
db.calendarEvent.findOne({ id: '<UUID>', select: { id: true } }).execute()
db.calendarEvent.create({ data: { entityId: '<UUID>', calendarAccountId: '<UUID>', remoteId: '<String>', title: '<String>', description: '<String>', startAt: '<Datetime>', endAt: '<Datetime>', allDay: '<Boolean>', location: '<String>', recurrenceRule: '<String>', status: '<String>', tags: '<String>', embeddingText: '<String>', embedding: '<Vector>', embeddingTextBm25Score: '<Float>', embeddingVectorDistance: '<Float>', remoteIdTrgmSimilarity: '<Float>', titleTrgmSimilarity: '<Float>', descriptionTrgmSimilarity: '<Float>', locationTrgmSimilarity: '<Float>', recurrenceRuleTrgmSimilarity: '<Float>', statusTrgmSimilarity: '<Float>', embeddingTextTrgmSimilarity: '<Float>', searchScore: '<Float>' }, select: { id: true } }).execute()
db.calendarEvent.update({ where: { id: '<UUID>' }, data: { entityId: '<UUID>' }, select: { id: true } }).execute()
db.calendarEvent.delete({ where: { id: '<UUID>' } }).execute()
```

## Examples

### List all calendarEvent records

```typescript
const items = await db.calendarEvent.findMany({
  select: { id: true, entityId: true }
}).execute();
```

### Create a calendarEvent

```typescript
const item = await db.calendarEvent.create({
  data: { entityId: '<UUID>', calendarAccountId: '<UUID>', remoteId: '<String>', title: '<String>', description: '<String>', startAt: '<Datetime>', endAt: '<Datetime>', allDay: '<Boolean>', location: '<String>', recurrenceRule: '<String>', status: '<String>', tags: '<String>', embeddingText: '<String>', embedding: '<Vector>', embeddingTextBm25Score: '<Float>', embeddingVectorDistance: '<Float>', remoteIdTrgmSimilarity: '<Float>', titleTrgmSimilarity: '<Float>', descriptionTrgmSimilarity: '<Float>', locationTrgmSimilarity: '<Float>', recurrenceRuleTrgmSimilarity: '<Float>', statusTrgmSimilarity: '<Float>', embeddingTextTrgmSimilarity: '<Float>', searchScore: '<Float>' },
  select: { id: true }
}).execute();
```
