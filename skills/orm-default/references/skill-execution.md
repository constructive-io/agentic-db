# skillExecution

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

ORM operations for SkillExecution records

## Usage

```typescript
db.skillExecution.findMany({ select: { id: true } }).execute()
db.skillExecution.findOne({ id: '<value>', select: { id: true } }).execute()
db.skillExecution.create({ data: { entityId: '<value>', skillId: '<value>', agentId: '<value>', sessionId: '<value>', status: '<value>', startedAt: '<value>', completedAt: '<value>', durationMs: '<value>', input: '<value>', output: '<value>', error: '<value>' }, select: { id: true } }).execute()
db.skillExecution.update({ where: { id: '<value>' }, data: { entityId: '<new>' }, select: { id: true } }).execute()
db.skillExecution.delete({ where: { id: '<value>' } }).execute()
```

## Examples

### List all skillExecution records

```typescript
const items = await db.skillExecution.findMany({
  select: { id: true, entityId: true }
}).execute();
```

### Create a skillExecution

```typescript
const item = await db.skillExecution.create({
  data: { entityId: 'value', skillId: 'value', agentId: 'value', sessionId: 'value', status: 'value', startedAt: 'value', completedAt: 'value', durationMs: 'value', input: 'value', output: 'value', error: 'value' },
  select: { id: true }
}).execute();
```
