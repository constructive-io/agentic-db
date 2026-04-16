# taskProject

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

ORM operations for TaskProject records

## Usage

```typescript
db.taskProject.findMany({ select: { id: true } }).execute()
db.taskProject.findOne({ id: '<UUID>', select: { id: true } }).execute()
db.taskProject.create({ data: { taskId: '<UUID>', projectId: '<UUID>' }, select: { id: true } }).execute()
db.taskProject.update({ where: { id: '<UUID>' }, data: { taskId: '<UUID>' }, select: { id: true } }).execute()
db.taskProject.delete({ where: { id: '<UUID>' } }).execute()
```

## Examples

### List all taskProject records

```typescript
const items = await db.taskProject.findMany({
  select: { id: true, taskId: true }
}).execute();
```

### Create a taskProject

```typescript
const item = await db.taskProject.create({
  data: { taskId: '<UUID>', projectId: '<UUID>' },
  select: { id: true }
}).execute();
```
