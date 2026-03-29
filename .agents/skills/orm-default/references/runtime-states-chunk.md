# runtimeStatesChunk

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

ORM operations for RuntimeStatesChunk records

## Usage

```typescript
db.runtimeStatesChunk.findMany({ select: { id: true } }).execute()
db.runtimeStatesChunk.findOne({ id: '<UUID>', select: { id: true } }).execute()
db.runtimeStatesChunk.create({ data: { entityId: '<UUID>', runtimeStatesId: '<UUID>', content: '<String>', chunkIndex: '<Int>', embedding: '<Vector>', metadata: '<JSON>', runtimeStateId: '<UUID>', embeddingVectorDistance: '<Float>', searchScore: '<Float>' }, select: { id: true } }).execute()
db.runtimeStatesChunk.update({ where: { id: '<UUID>' }, data: { entityId: '<UUID>' }, select: { id: true } }).execute()
db.runtimeStatesChunk.delete({ where: { id: '<UUID>' } }).execute()
```

## Examples

### List all runtimeStatesChunk records

```typescript
const items = await db.runtimeStatesChunk.findMany({
  select: { id: true, entityId: true }
}).execute();
```

### Create a runtimeStatesChunk

```typescript
const item = await db.runtimeStatesChunk.create({
  data: { entityId: '<UUID>', runtimeStatesId: '<UUID>', content: '<String>', chunkIndex: '<Int>', embedding: '<Vector>', metadata: '<JSON>', runtimeStateId: '<UUID>', embeddingVectorDistance: '<Float>', searchScore: '<Float>' },
  select: { id: true }
}).execute();
```
