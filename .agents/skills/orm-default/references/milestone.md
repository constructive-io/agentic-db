# milestone

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

ORM operations for Milestone records

## Usage

```typescript
db.milestone.findMany({ select: { id: true } }).execute()
db.milestone.findOne({ id: '<UUID>', select: { id: true } }).execute()
db.milestone.create({ data: { entityId: '<UUID>', projectId: '<UUID>', name: '<String>', dueDate: '<Datetime>', status: '<String>' }, select: { id: true } }).execute()
db.milestone.update({ where: { id: '<UUID>' }, data: { entityId: '<UUID>' }, select: { id: true } }).execute()
db.milestone.delete({ where: { id: '<UUID>' } }).execute()
```

## Examples

### List all milestone records

```typescript
const items = await db.milestone.findMany({
  select: { id: true, entityId: true }
}).execute();
```

### Create a milestone

```typescript
const item = await db.milestone.create({
  data: { entityId: '<UUID>', projectId: '<UUID>', name: '<String>', dueDate: '<Datetime>', status: '<String>' },
  select: { id: true }
}).execute();
```
