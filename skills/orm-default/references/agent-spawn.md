# agentSpawn

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

ORM operations for AgentSpawn records

## Usage

```typescript
db.agentSpawn.findMany({ select: { id: true } }).execute()
db.agentSpawn.findOne({ id: '<value>', select: { id: true } }).execute()
db.agentSpawn.create({ data: { entityId: '<value>', parentAgentId: '<value>', childAgentId: '<value>', sessionId: '<value>', task: '<value>', status: '<value>', result: '<value>', maxIterations: '<value>', startedAt: '<value>', completedAt: '<value>', agentId: '<value>', taskTrgmSimilarity: '<value>', statusTrgmSimilarity: '<value>', searchScore: '<value>' }, select: { id: true } }).execute()
db.agentSpawn.update({ where: { id: '<value>' }, data: { entityId: '<new>' }, select: { id: true } }).execute()
db.agentSpawn.delete({ where: { id: '<value>' } }).execute()
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
  data: { entityId: 'value', parentAgentId: 'value', childAgentId: 'value', sessionId: 'value', task: 'value', status: 'value', result: 'value', maxIterations: 'value', startedAt: 'value', completedAt: 'value', agentId: 'value', taskTrgmSimilarity: 'value', statusTrgmSimilarity: 'value', searchScore: 'value' },
  select: { id: true }
}).execute();
```
