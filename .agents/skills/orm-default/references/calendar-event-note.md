# calendarEventNote

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

ORM operations for CalendarEventNote records

## Usage

```typescript
db.calendarEventNote.findMany({ select: { id: true } }).execute()
db.calendarEventNote.findOne({ id: '<UUID>', select: { id: true } }).execute()
db.calendarEventNote.create({ data: { calendarEventId: '<UUID>', noteId: '<UUID>', entityId: '<UUID>' }, select: { id: true } }).execute()
db.calendarEventNote.update({ where: { id: '<UUID>' }, data: { calendarEventId: '<UUID>' }, select: { id: true } }).execute()
db.calendarEventNote.delete({ where: { id: '<UUID>' } }).execute()
```

## Examples

### List all calendarEventNote records

```typescript
const items = await db.calendarEventNote.findMany({
  select: { id: true, calendarEventId: true }
}).execute();
```

### Create a calendarEventNote

```typescript
const item = await db.calendarEventNote.create({
  data: { calendarEventId: '<UUID>', noteId: '<UUID>', entityId: '<UUID>' },
  select: { id: true }
}).execute();
```
