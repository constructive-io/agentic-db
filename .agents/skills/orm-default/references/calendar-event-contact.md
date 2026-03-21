# calendarEventContact

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

ORM operations for CalendarEventContact records

## Usage

```typescript
db.calendarEventContact.findMany({ select: { id: true } }).execute()
db.calendarEventContact.findOne({ id: '<UUID>', select: { id: true } }).execute()
db.calendarEventContact.create({ data: { calendarEventId: '<UUID>', contactId: '<UUID>', entityId: '<UUID>' }, select: { id: true } }).execute()
db.calendarEventContact.update({ where: { id: '<UUID>' }, data: { calendarEventId: '<UUID>' }, select: { id: true } }).execute()
db.calendarEventContact.delete({ where: { id: '<UUID>' } }).execute()
```

## Examples

### List all calendarEventContact records

```typescript
const items = await db.calendarEventContact.findMany({
  select: { id: true, calendarEventId: true }
}).execute();
```

### Create a calendarEventContact

```typescript
const item = await db.calendarEventContact.create({
  data: { calendarEventId: '<UUID>', contactId: '<UUID>', entityId: '<UUID>' },
  select: { id: true }
}).execute();
```
