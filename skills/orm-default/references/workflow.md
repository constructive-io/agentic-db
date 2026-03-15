# workflow

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

ORM operations for Workflow records

## Usage

```typescript
db.workflow.findMany({ select: { id: true } }).execute()
db.workflow.findOne({ id: '<value>', select: { id: true } }).execute()
db.workflow.create({ data: { entityId: '<value>', name: '<value>', description: '<value>', triggerType: '<value>', triggerConfig: '<value>', isActive: '<value>', tags: '<value>', nameTrgmSimilarity: '<value>', descriptionTrgmSimilarity: '<value>', triggerTypeTrgmSimilarity: '<value>', searchScore: '<value>' }, select: { id: true } }).execute()
db.workflow.update({ where: { id: '<value>' }, data: { entityId: '<new>' }, select: { id: true } }).execute()
db.workflow.delete({ where: { id: '<value>' } }).execute()
```

## Examples

### List all workflow records

```typescript
const items = await db.workflow.findMany({
  select: { id: true, entityId: true }
}).execute();
```

### Create a workflow

```typescript
const item = await db.workflow.create({
  data: { entityId: 'value', name: 'value', description: 'value', triggerType: 'value', triggerConfig: 'value', isActive: 'value', tags: 'value', nameTrgmSimilarity: 'value', descriptionTrgmSimilarity: 'value', triggerTypeTrgmSimilarity: 'value', searchScore: 'value' },
  select: { id: true }
}).execute();
```
