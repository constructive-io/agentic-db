# agentPrompt

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

ORM operations for AgentPrompt records

## Usage

```typescript
db.agentPrompt.findMany({ select: { id: true } }).execute()
db.agentPrompt.findOne({ id: '<UUID>', select: { id: true } }).execute()
db.agentPrompt.create({ data: { agentId: '<UUID>', promptId: '<UUID>', entityId: '<UUID>' }, select: { id: true } }).execute()
db.agentPrompt.update({ where: { id: '<UUID>' }, data: { agentId: '<UUID>' }, select: { id: true } }).execute()
db.agentPrompt.delete({ where: { id: '<UUID>' } }).execute()
```

## Examples

### List all agentPrompt records

```typescript
const items = await db.agentPrompt.findMany({
  select: { id: true, agentId: true }
}).execute();
```

### Create a agentPrompt

```typescript
const item = await db.agentPrompt.create({
  data: { agentId: '<UUID>', promptId: '<UUID>', entityId: '<UUID>' },
  select: { id: true }
}).execute();
```
