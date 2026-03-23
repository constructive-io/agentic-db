# runtimeLogsChunk

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

ORM operations for RuntimeLogsChunk records

## Usage

```typescript
db.runtimeLogsChunk.findMany({ select: { id: true } }).execute()
db.runtimeLogsChunk.findOne({ id: '<UUID>', select: { id: true } }).execute()
db.runtimeLogsChunk.create({ data: { runtimeLogsId: '<UUID>', content: '<String>', chunkIndex: '<Int>', embedding: '<Vector>', metadata: '<JSON>', embeddingVectorDistance: '<Float>', searchScore: '<Float>' }, select: { id: true } }).execute()
db.runtimeLogsChunk.update({ where: { id: '<UUID>' }, data: { runtimeLogsId: '<UUID>' }, select: { id: true } }).execute()
db.runtimeLogsChunk.delete({ where: { id: '<UUID>' } }).execute()
```

## Examples

### List all runtimeLogsChunk records

```typescript
const items = await db.runtimeLogsChunk.findMany({
  select: { id: true, runtimeLogsId: true }
}).execute();
```

### Create a runtimeLogsChunk

```typescript
const item = await db.runtimeLogsChunk.create({
  data: { runtimeLogsId: '<UUID>', content: '<String>', chunkIndex: '<Int>', embedding: '<Vector>', metadata: '<JSON>', embeddingVectorDistance: '<Float>', searchScore: '<Float>' },
  select: { id: true }
}).execute();
```
