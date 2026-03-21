# agentSkill

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

ORM operations for AgentSkill records

## Usage

```typescript
db.agentSkill.findMany({ select: { id: true } }).execute()
db.agentSkill.findOne({ id: '<UUID>', select: { id: true } }).execute()
db.agentSkill.create({ data: { agentId: '<UUID>', skillId: '<UUID>', entityId: '<UUID>' }, select: { id: true } }).execute()
db.agentSkill.update({ where: { id: '<UUID>' }, data: { agentId: '<UUID>' }, select: { id: true } }).execute()
db.agentSkill.delete({ where: { id: '<UUID>' } }).execute()
```

## Examples

### List all agentSkill records

```typescript
const items = await db.agentSkill.findMany({
  select: { id: true, agentId: true }
}).execute();
```

### Create a agentSkill

```typescript
const item = await db.agentSkill.create({
  data: { agentId: '<UUID>', skillId: '<UUID>', entityId: '<UUID>' },
  select: { id: true }
}).execute();
```
