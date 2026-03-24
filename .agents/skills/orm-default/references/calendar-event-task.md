# calendarEventTask

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

ORM operations for CalendarEventTask records

## Usage

```typescript
db.calendarEventTask.findMany({ select: { id: true } }).execute()
db.calendarEventTask.findOne({ id: '<UUID>', select: { id: true } }).execute()
db.calendarEventTask.create({ data: { calendarEventId: '<UUID>', taskId: '<UUID>', entityId: '<UUID>' }, select: { id: true } }).execute()
db.calendarEventTask.update({ where: { id: '<UUID>' }, data: { calendarEventId: '<UUID>' }, select: { id: true } }).execute()
db.calendarEventTask.delete({ where: { id: '<UUID>' } }).execute()
```

## Examples

### List all calendarEventTask records

```typescript
const items = await db.calendarEventTask.findMany({
  select: { id: true, calendarEventId: true }
}).execute();
```

### Create a calendarEventTask

```typescript
const item = await db.calendarEventTask.create({
  data: { calendarEventId: '<UUID>', taskId: '<UUID>', entityId: '<UUID>' },
  select: { id: true }
}).execute();
```
