# runtimeLog

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

ORM operations for RuntimeLog records

## Usage

```typescript
db.runtimeLog.findMany({ select: { id: true } }).execute()
db.runtimeLog.findOne({ id: '<UUID>', select: { id: true } }).execute()
db.runtimeLog.create({ data: { entityId: '<UUID>', runtimeStateId: '<UUID>', level: '<String>', message: '<String>', context: '<JSON>', stepIndex: '<Int>', embeddingText: '<String>', embedding: '<Vector>', embeddingStale: '<Boolean>', embeddingVectorDistance: '<Float>', searchScore: '<Float>' }, select: { id: true } }).execute()
db.runtimeLog.update({ where: { id: '<UUID>' }, data: { entityId: '<UUID>' }, select: { id: true } }).execute()
db.runtimeLog.delete({ where: { id: '<UUID>' } }).execute()
```

## Examples

### List all runtimeLog records

```typescript
const items = await db.runtimeLog.findMany({
  select: { id: true, entityId: true }
}).execute();
```

### Create a runtimeLog

```typescript
const item = await db.runtimeLog.create({
  data: { entityId: '<UUID>', runtimeStateId: '<UUID>', level: '<String>', message: '<String>', context: '<JSON>', stepIndex: '<Int>', embeddingText: '<String>', embedding: '<Vector>', embeddingStale: '<Boolean>', embeddingVectorDistance: '<Float>', searchScore: '<Float>' },
  select: { id: true }
}).execute();
```
