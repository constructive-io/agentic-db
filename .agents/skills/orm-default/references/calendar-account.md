# calendarAccount

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

ORM operations for CalendarAccount records

## Usage

```typescript
db.calendarAccount.findMany({ select: { id: true } }).execute()
db.calendarAccount.findOne({ id: '<UUID>', select: { id: true } }).execute()
db.calendarAccount.create({ data: { entityId: '<UUID>', email: '<String>', provider: '<String>', syncToken: '<String>', lastSyncedAt: '<Datetime>' }, select: { id: true } }).execute()
db.calendarAccount.update({ where: { id: '<UUID>' }, data: { entityId: '<UUID>' }, select: { id: true } }).execute()
db.calendarAccount.delete({ where: { id: '<UUID>' } }).execute()
```

## Examples

### List all calendarAccount records

```typescript
const items = await db.calendarAccount.findMany({
  select: { id: true, entityId: true }
}).execute();
```

### Create a calendarAccount

```typescript
const item = await db.calendarAccount.create({
  data: { entityId: '<UUID>', email: '<String>', provider: '<String>', syncToken: '<String>', lastSyncedAt: '<Datetime>' },
  select: { id: true }
}).execute();
```
