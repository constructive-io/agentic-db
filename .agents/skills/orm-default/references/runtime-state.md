# runtimeState

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

ORM operations for RuntimeState records

## Usage

```typescript
db.runtimeState.findMany({ select: { id: true } }).execute()
db.runtimeState.findOne({ id: '<UUID>', select: { id: true } }).execute()
db.runtimeState.create({ data: { entityId: '<UUID>', name: '<String>', stateType: '<String>', status: '<String>', data: '<JSON>', parentId: '<UUID>', startedAt: '<Datetime>', endedAt: '<Datetime>', embeddingText: '<String>', embedding: '<Vector>', embeddingStale: '<Boolean>', embeddingVectorDistance: '<Float>', searchScore: '<Float>' }, select: { id: true } }).execute()
db.runtimeState.update({ where: { id: '<UUID>' }, data: { entityId: '<UUID>' }, select: { id: true } }).execute()
db.runtimeState.delete({ where: { id: '<UUID>' } }).execute()
```

## Examples

### List all runtimeState records

```typescript
const items = await db.runtimeState.findMany({
  select: { id: true, entityId: true }
}).execute();
```

### Create a runtimeState

```typescript
const item = await db.runtimeState.create({
  data: { entityId: '<UUID>', name: '<String>', stateType: '<String>', status: '<String>', data: '<JSON>', parentId: '<UUID>', startedAt: '<Datetime>', endedAt: '<Datetime>', embeddingText: '<String>', embedding: '<Vector>', embeddingStale: '<Boolean>', embeddingVectorDistance: '<Float>', searchScore: '<Float>' },
  select: { id: true }
}).execute();
```
