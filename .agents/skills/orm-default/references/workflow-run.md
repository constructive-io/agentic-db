# workflowRun

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

ORM operations for WorkflowRun records

## Usage

```typescript
db.workflowRun.findMany({ select: { id: true } }).execute()
db.workflowRun.findOne({ id: '<UUID>', select: { id: true } }).execute()
db.workflowRun.create({ data: { entityId: '<UUID>', workflowId: '<UUID>', status: '<String>', startedAt: '<Datetime>', completedAt: '<Datetime>', input: '<JSON>', output: '<JSON>', error: '<String>' }, select: { id: true } }).execute()
db.workflowRun.update({ where: { id: '<UUID>' }, data: { entityId: '<UUID>' }, select: { id: true } }).execute()
db.workflowRun.delete({ where: { id: '<UUID>' } }).execute()
```

## Examples

### List all workflowRun records

```typescript
const items = await db.workflowRun.findMany({
  select: { id: true, entityId: true }
}).execute();
```

### Create a workflowRun

```typescript
const item = await db.workflowRun.create({
  data: { entityId: '<UUID>', workflowId: '<UUID>', status: '<String>', startedAt: '<Datetime>', completedAt: '<Datetime>', input: '<JSON>', output: '<JSON>', error: '<String>' },
  select: { id: true }
}).execute();
```
