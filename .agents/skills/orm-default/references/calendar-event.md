# calendarEvent

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

ORM operations for CalendarEvent records

## Usage

```typescript
db.calendarEvent.findMany({ select: { id: true } }).execute()
db.calendarEvent.findOne({ id: '<UUID>', select: { id: true } }).execute()
db.calendarEvent.create({ data: { entityId: '<UUID>', calendarId: '<UUID>', providerEventId: '<String>', title: '<String>', description: '<String>', startTime: '<Datetime>', endTime: '<Datetime>', isAllDay: '<Boolean>', meetingUrl: '<String>', organizerContactId: '<UUID>', recurrenceRule: '<String>', status: '<String>', tags: '<String>', embeddingText: '<String>', embedding: '<Vector>', embeddingStale: '<Boolean>', embeddingTextBm25Score: '<Float>', embeddingVectorDistance: '<Float>', providerEventIdTrgmSimilarity: '<Float>', titleTrgmSimilarity: '<Float>', descriptionTrgmSimilarity: '<Float>', meetingUrlTrgmSimilarity: '<Float>', recurrenceRuleTrgmSimilarity: '<Float>', statusTrgmSimilarity: '<Float>', embeddingTextTrgmSimilarity: '<Float>', searchScore: '<Float>' }, select: { id: true } }).execute()
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
  data: { entityId: '<UUID>', calendarId: '<UUID>', providerEventId: '<String>', title: '<String>', description: '<String>', startTime: '<Datetime>', endTime: '<Datetime>', isAllDay: '<Boolean>', meetingUrl: '<String>', organizerContactId: '<UUID>', recurrenceRule: '<String>', status: '<String>', tags: '<String>', embeddingText: '<String>', embedding: '<Vector>', embeddingStale: '<Boolean>', embeddingTextBm25Score: '<Float>', embeddingVectorDistance: '<Float>', providerEventIdTrgmSimilarity: '<Float>', titleTrgmSimilarity: '<Float>', descriptionTrgmSimilarity: '<Float>', meetingUrlTrgmSimilarity: '<Float>', recurrenceRuleTrgmSimilarity: '<Float>', statusTrgmSimilarity: '<Float>', embeddingTextTrgmSimilarity: '<Float>', searchScore: '<Float>' },
  select: { id: true }
}).execute();
```
