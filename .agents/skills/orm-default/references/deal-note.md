# dealNote

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

ORM operations for DealNote records

## Usage

```typescript
db.dealNote.findMany({ select: { id: true } }).execute()
db.dealNote.findOne({ id: '<UUID>', select: { id: true } }).execute()
db.dealNote.create({ data: { dealId: '<UUID>', noteId: '<UUID>', entityId: '<UUID>' }, select: { id: true } }).execute()
db.dealNote.update({ where: { id: '<UUID>' }, data: { dealId: '<UUID>' }, select: { id: true } }).execute()
db.dealNote.delete({ where: { id: '<UUID>' } }).execute()
```

## Examples

### List all dealNote records

```typescript
const items = await db.dealNote.findMany({
  select: { id: true, dealId: true }
}).execute();
```

### Create a dealNote

```typescript
const item = await db.dealNote.create({
  data: { dealId: '<UUID>', noteId: '<UUID>', entityId: '<UUID>' },
  select: { id: true }
}).execute();
```
