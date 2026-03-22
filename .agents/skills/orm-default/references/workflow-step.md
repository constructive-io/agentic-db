# workflowStep

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

ORM operations for WorkflowStep records

## Usage

```typescript
db.workflowStep.findMany({ select: { id: true } }).execute()
db.workflowStep.findOne({ id: '<UUID>', select: { id: true } }).execute()
db.workflowStep.create({ data: { entityId: '<UUID>', workflowId: '<UUID>', stepOrder: '<Int>', actionType: '<String>', actionConfig: '<JSON>', onSuccessStep: '<Int>', onFailureStep: '<Int>', timeoutMs: '<Int>' }, select: { id: true } }).execute()
db.workflowStep.update({ where: { id: '<UUID>' }, data: { entityId: '<UUID>' }, select: { id: true } }).execute()
db.workflowStep.delete({ where: { id: '<UUID>' } }).execute()
```

## Examples

### List all workflowStep records

```typescript
const items = await db.workflowStep.findMany({
  select: { id: true, entityId: true }
}).execute();
```

### Create a workflowStep

```typescript
const item = await db.workflowStep.create({
  data: { entityId: '<UUID>', workflowId: '<UUID>', stepOrder: '<Int>', actionType: '<String>', actionConfig: '<JSON>', onSuccessStep: '<Int>', onFailureStep: '<Int>', timeoutMs: '<Int>' },
  select: { id: true }
}).execute();
```
