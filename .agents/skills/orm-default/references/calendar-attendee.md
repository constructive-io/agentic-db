# calendarAttendee

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

ORM operations for CalendarAttendee records

## Usage

```typescript
db.calendarAttendee.findMany({ select: { id: true } }).execute()
db.calendarAttendee.findOne({ id: '<UUID>', select: { id: true } }).execute()
db.calendarAttendee.create({ data: { entityId: '<UUID>', contactId: '<UUID>', responseStatus: '<String>', role: '<String>', calendarEventId: '<UUID>' }, select: { id: true } }).execute()
db.calendarAttendee.update({ where: { id: '<UUID>' }, data: { entityId: '<UUID>' }, select: { id: true } }).execute()
db.calendarAttendee.delete({ where: { id: '<UUID>' } }).execute()
```

## Examples

### List all calendarAttendee records

```typescript
const items = await db.calendarAttendee.findMany({
  select: { id: true, entityId: true }
}).execute();
```

### Create a calendarAttendee

```typescript
const item = await db.calendarAttendee.create({
  data: { entityId: '<UUID>', contactId: '<UUID>', responseStatus: '<String>', role: '<String>', calendarEventId: '<UUID>' },
  select: { id: true }
}).execute();
```
