# taskContact

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

ORM operations for TaskContact records

## Usage

```typescript
db.taskContact.findMany({ select: { id: true } }).execute()
db.taskContact.findOne({ id: '<UUID>', select: { id: true } }).execute()
db.taskContact.create({ data: { taskId: '<UUID>', contactId: '<UUID>' }, select: { id: true } }).execute()
db.taskContact.update({ where: { id: '<UUID>' }, data: { taskId: '<UUID>' }, select: { id: true } }).execute()
db.taskContact.delete({ where: { id: '<UUID>' } }).execute()
```

## Examples

### List all taskContact records

```typescript
const items = await db.taskContact.findMany({
  select: { id: true, taskId: true }
}).execute();
```

### Create a taskContact

```typescript
const item = await db.taskContact.create({
  data: { taskId: '<UUID>', contactId: '<UUID>' },
  select: { id: true }
}).execute();
```
