# orm-calendarSync

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

ORM operations for CalendarSync records

## Usage

```typescript
db.calendarSync.findMany({ select: { id: true } }).execute()
db.calendarSync.findOne({ id: '<value>', select: { id: true } }).execute()
db.calendarSync.create({ data: { entityId: '<value>', provider: '<value>', syncToken: '<value>', lastSyncedAt: '<value>' }, select: { id: true } }).execute()
db.calendarSync.update({ where: { id: '<value>' }, data: { entityId: '<new>' }, select: { id: true } }).execute()
db.calendarSync.delete({ where: { id: '<value>' } }).execute()
```

## Examples

### List all calendarSync records

```typescript
const items = await db.calendarSync.findMany({
  select: { id: true, entityId: true }
}).execute();
```

### Create a calendarSync

```typescript
const item = await db.calendarSync.create({
  data: { entityId: 'value', provider: 'value', syncToken: 'value', lastSyncedAt: 'value' },
  select: { id: true }
}).execute();
```
