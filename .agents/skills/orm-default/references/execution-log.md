# executionLog

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

ORM operations for ExecutionLog records

## Usage

```typescript
db.executionLog.findMany({ select: { id: true } }).execute()
db.executionLog.findOne({ id: '<UUID>', select: { id: true } }).execute()
db.executionLog.create({ data: { entityId: '<UUID>', sessionId: '<UUID>', stepName: '<String>', input: '<String>', output: '<String>', toolCalls: '<JSON>', durationMs: '<Int>' }, select: { id: true } }).execute()
db.executionLog.update({ where: { id: '<UUID>' }, data: { entityId: '<UUID>' }, select: { id: true } }).execute()
db.executionLog.delete({ where: { id: '<UUID>' } }).execute()
```

## Examples

### List all executionLog records

```typescript
const items = await db.executionLog.findMany({
  select: { id: true, entityId: true }
}).execute();
```

### Create a executionLog

```typescript
const item = await db.executionLog.create({
  data: { entityId: '<UUID>', sessionId: '<UUID>', stepName: '<String>', input: '<String>', output: '<String>', toolCalls: '<JSON>', durationMs: '<Int>' },
  select: { id: true }
}).execute();
```
