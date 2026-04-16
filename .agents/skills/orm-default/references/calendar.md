# calendar

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

ORM operations for Calendar records

## Usage

```typescript
db.calendar.findMany({ select: { id: true } }).execute()
db.calendar.findOne({ id: '<UUID>', select: { id: true } }).execute()
db.calendar.create({ data: { providerAccountId: '<String>', providerCalendarId: '<String>', name: '<String>', color: '<String>' }, select: { id: true } }).execute()
db.calendar.update({ where: { id: '<UUID>' }, data: { providerAccountId: '<String>' }, select: { id: true } }).execute()
db.calendar.delete({ where: { id: '<UUID>' } }).execute()
```

## Examples

### List all calendar records

```typescript
const items = await db.calendar.findMany({
  select: { id: true, providerAccountId: true }
}).execute();
```

### Create a calendar

```typescript
const item = await db.calendar.create({
  data: { providerAccountId: '<String>', providerCalendarId: '<String>', name: '<String>', color: '<String>' },
  select: { id: true }
}).execute();
```
