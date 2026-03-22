# workflow

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

ORM operations for Workflow records

## Usage

```typescript
db.workflow.findMany({ select: { id: true } }).execute()
db.workflow.findOne({ id: '<UUID>', select: { id: true } }).execute()
db.workflow.create({ data: { entityId: '<UUID>', name: '<String>', description: '<String>', triggerType: '<String>', triggerConfig: '<JSON>', isActive: '<Boolean>', tags: '<String>' }, select: { id: true } }).execute()
db.workflow.update({ where: { id: '<UUID>' }, data: { entityId: '<UUID>' }, select: { id: true } }).execute()
db.workflow.delete({ where: { id: '<UUID>' } }).execute()
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
  data: { entityId: '<UUID>', name: '<String>', description: '<String>', triggerType: '<String>', triggerConfig: '<JSON>', isActive: '<Boolean>', tags: '<String>' },
  select: { id: true }
}).execute();
```
