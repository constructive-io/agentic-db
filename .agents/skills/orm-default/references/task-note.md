# taskNote

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

ORM operations for TaskNote records

## Usage

```typescript
db.taskNote.findMany({ select: { id: true } }).execute()
db.taskNote.findOne({ id: '<UUID>', select: { id: true } }).execute()
db.taskNote.create({ data: { taskId: '<UUID>', noteId: '<UUID>', entityId: '<UUID>' }, select: { id: true } }).execute()
db.taskNote.update({ where: { id: '<UUID>' }, data: { taskId: '<UUID>' }, select: { id: true } }).execute()
db.taskNote.delete({ where: { id: '<UUID>' } }).execute()
```

## Examples

### List all taskNote records

```typescript
const items = await db.taskNote.findMany({
  select: { id: true, taskId: true }
}).execute();
```

### Create a taskNote

```typescript
const item = await db.taskNote.create({
  data: { taskId: '<UUID>', noteId: '<UUID>', entityId: '<UUID>' },
  select: { id: true }
}).execute();
```
