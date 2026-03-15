# calendarEvent

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

ORM operations for CalendarEvent records

## Usage

```typescript
db.calendarEvent.findMany({ select: { id: true } }).execute()
db.calendarEvent.findOne({ id: '<value>', select: { id: true } }).execute()
db.calendarEvent.create({ data: { entityId: '<value>', calendarAccountId: '<value>', remoteId: '<value>', title: '<value>', description: '<value>', startAt: '<value>', endAt: '<value>', allDay: '<value>', location: '<value>', recurrenceRule: '<value>', status: '<value>', tags: '<value>', embeddingText: '<value>', embedding: '<value>', embeddingDistance: '<value>' }, select: { id: true } }).execute()
db.calendarEvent.update({ where: { id: '<value>' }, data: { entityId: '<new>' }, select: { id: true } }).execute()
db.calendarEvent.delete({ where: { id: '<value>' } }).execute()
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
  data: { entityId: 'value', calendarAccountId: 'value', remoteId: 'value', title: 'value', description: 'value', startAt: 'value', endAt: 'value', allDay: 'value', location: 'value', recurrenceRule: 'value', status: 'value', tags: 'value', embeddingText: 'value', embedding: 'value', embeddingDistance: 'value' },
  select: { id: true }
}).execute();
```
