# agentSpawn

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

ORM operations for AgentSpawn records

## Usage

```typescript
db.agentSpawn.findMany({ select: { id: true } }).execute()
db.agentSpawn.findOne({ id: '<UUID>', select: { id: true } }).execute()
db.agentSpawn.create({ data: { entityId: '<UUID>', parentAgentId: '<UUID>', childAgentId: '<UUID>', sessionId: '<UUID>', task: '<String>', status: '<String>', result: '<JSON>', maxIterations: '<Int>', startedAt: '<Datetime>', completedAt: '<Datetime>', agentId: '<UUID>' }, select: { id: true } }).execute()
db.agentSpawn.update({ where: { id: '<UUID>' }, data: { entityId: '<UUID>' }, select: { id: true } }).execute()
db.agentSpawn.delete({ where: { id: '<UUID>' } }).execute()
```

## Examples

### List all agentSpawn records

```typescript
const items = await db.agentSpawn.findMany({
  select: { id: true, entityId: true }
}).execute();
```

### Create a agentSpawn

```typescript
const item = await db.agentSpawn.create({
  data: { entityId: '<UUID>', parentAgentId: '<UUID>', childAgentId: '<UUID>', sessionId: '<UUID>', task: '<String>', status: '<String>', result: '<JSON>', maxIterations: '<Int>', startedAt: '<Datetime>', completedAt: '<Datetime>', agentId: '<UUID>' },
  select: { id: true }
}).execute();
```
