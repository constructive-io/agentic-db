# executionLog

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

ORM operations for ExecutionLog records

## Usage

```typescript
db.executionLog.findMany({ select: { id: true } }).execute()
db.executionLog.findOne({ id: '<value>', select: { id: true } }).execute()
db.executionLog.create({ data: { entityId: '<value>', sessionId: '<value>', stepName: '<value>', input: '<value>', output: '<value>', toolCalls: '<value>', durationMs: '<value>', stepNameTrgmSimilarity: '<value>', inputTrgmSimilarity: '<value>', outputTrgmSimilarity: '<value>', searchScore: '<value>' }, select: { id: true } }).execute()
db.executionLog.update({ where: { id: '<value>' }, data: { entityId: '<new>' }, select: { id: true } }).execute()
db.executionLog.delete({ where: { id: '<value>' } }).execute()
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
  data: { entityId: 'value', sessionId: 'value', stepName: 'value', input: 'value', output: 'value', toolCalls: 'value', durationMs: 'value', stepNameTrgmSimilarity: 'value', inputTrgmSimilarity: 'value', outputTrgmSimilarity: 'value', searchScore: 'value' },
  select: { id: true }
}).execute();
```
