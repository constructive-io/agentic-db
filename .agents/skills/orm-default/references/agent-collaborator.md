# agentCollaborator

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

ORM operations for AgentCollaborator records

## Usage

```typescript
db.agentCollaborator.findMany({ select: { id: true } }).execute()
db.agentCollaborator.findOne({ id: '<UUID>', select: { id: true } }).execute()
db.agentCollaborator.create({ data: { agentId: '<UUID>', entityId: '<UUID>' }, select: { id: true } }).execute()
db.agentCollaborator.update({ where: { id: '<UUID>' }, data: { agentId: '<UUID>' }, select: { id: true } }).execute()
db.agentCollaborator.delete({ where: { id: '<UUID>' } }).execute()
```

## Examples

### List all agentCollaborator records

```typescript
const items = await db.agentCollaborator.findMany({
  select: { id: true, agentId: true }
}).execute();
```

### Create a agentCollaborator

```typescript
const item = await db.agentCollaborator.create({
  data: { agentId: '<UUID>', entityId: '<UUID>' },
  select: { id: true }
}).execute();
```
