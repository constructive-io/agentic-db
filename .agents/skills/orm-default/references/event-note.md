# eventNote

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

ORM operations for EventNote records

## Usage

```typescript
db.eventNote.findMany({ select: { id: true } }).execute()
db.eventNote.findOne({ id: '<UUID>', select: { id: true } }).execute()
db.eventNote.create({ data: { eventId: '<UUID>', noteId: '<UUID>', entityId: '<UUID>' }, select: { id: true } }).execute()
db.eventNote.update({ where: { id: '<UUID>' }, data: { eventId: '<UUID>' }, select: { id: true } }).execute()
db.eventNote.delete({ where: { id: '<UUID>' } }).execute()
```

## Examples

### List all eventNote records

```typescript
const items = await db.eventNote.findMany({
  select: { id: true, eventId: true }
}).execute();
```

### Create a eventNote

```typescript
const item = await db.eventNote.create({
  data: { eventId: '<UUID>', noteId: '<UUID>', entityId: '<UUID>' },
  select: { id: true }
}).execute();
```
