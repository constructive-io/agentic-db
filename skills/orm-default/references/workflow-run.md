# workflowRun

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

ORM operations for WorkflowRun records

## Usage

```typescript
db.workflowRun.findMany({ select: { id: true } }).execute()
db.workflowRun.findOne({ id: '<value>', select: { id: true } }).execute()
db.workflowRun.create({ data: { entityId: '<value>', workflowId: '<value>', status: '<value>', startedAt: '<value>', completedAt: '<value>', input: '<value>', output: '<value>', error: '<value>' }, select: { id: true } }).execute()
db.workflowRun.update({ where: { id: '<value>' }, data: { entityId: '<new>' }, select: { id: true } }).execute()
db.workflowRun.delete({ where: { id: '<value>' } }).execute()
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
  data: { entityId: 'value', workflowId: 'value', status: 'value', startedAt: 'value', completedAt: 'value', input: 'value', output: 'value', error: 'value' },
  select: { id: true }
}).execute();
```
