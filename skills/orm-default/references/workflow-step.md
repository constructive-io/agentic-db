# workflowStep

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

ORM operations for WorkflowStep records

## Usage

```typescript
db.workflowStep.findMany({ select: { id: true } }).execute()
db.workflowStep.findOne({ id: '<value>', select: { id: true } }).execute()
db.workflowStep.create({ data: { entityId: '<value>', workflowId: '<value>', stepOrder: '<value>', actionType: '<value>', actionConfig: '<value>', onSuccessStep: '<value>', onFailureStep: '<value>', timeoutMs: '<value>', actionTypeTrgmSimilarity: '<value>', searchScore: '<value>' }, select: { id: true } }).execute()
db.workflowStep.update({ where: { id: '<value>' }, data: { entityId: '<new>' }, select: { id: true } }).execute()
db.workflowStep.delete({ where: { id: '<value>' } }).execute()
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
  data: { entityId: 'value', workflowId: 'value', stepOrder: 'value', actionType: 'value', actionConfig: 'value', onSuccessStep: 'value', onFailureStep: 'value', timeoutMs: 'value', actionTypeTrgmSimilarity: 'value', searchScore: 'value' },
  select: { id: true }
}).execute();
```
