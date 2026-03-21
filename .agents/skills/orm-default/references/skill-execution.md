# skillExecution

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

ORM operations for SkillExecution records

## Usage

```typescript
db.skillExecution.findMany({ select: { id: true } }).execute()
db.skillExecution.findOne({ id: '<UUID>', select: { id: true } }).execute()
db.skillExecution.create({ data: { entityId: '<UUID>', skillId: '<UUID>', agentId: '<UUID>', sessionId: '<UUID>', status: '<String>', startedAt: '<Datetime>', completedAt: '<Datetime>', durationMs: '<Int>', input: '<JSON>', output: '<JSON>', error: '<String>' }, select: { id: true } }).execute()
db.skillExecution.update({ where: { id: '<UUID>' }, data: { entityId: '<UUID>' }, select: { id: true } }).execute()
db.skillExecution.delete({ where: { id: '<UUID>' } }).execute()
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
  data: { entityId: '<UUID>', skillId: '<UUID>', agentId: '<UUID>', sessionId: '<UUID>', status: '<String>', startedAt: '<Datetime>', completedAt: '<Datetime>', durationMs: '<Int>', input: '<JSON>', output: '<JSON>', error: '<String>' },
  select: { id: true }
}).execute();
```
