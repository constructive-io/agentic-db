# memoriesChunk

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

ORM operations for MemoriesChunk records

## Usage

```typescript
db.memoriesChunk.findMany({ select: { id: true } }).execute()
db.memoriesChunk.findOne({ id: '<UUID>', select: { id: true } }).execute()
db.memoriesChunk.create({ data: { entityId: '<UUID>', memoriesId: '<UUID>', content: '<String>', chunkIndex: '<Int>', embedding: '<Vector>', metadata: '<JSON>', memoryId: '<UUID>', embeddingVectorDistance: '<Float>', searchScore: '<Float>' }, select: { id: true } }).execute()
db.memoriesChunk.update({ where: { id: '<UUID>' }, data: { entityId: '<UUID>' }, select: { id: true } }).execute()
db.memoriesChunk.delete({ where: { id: '<UUID>' } }).execute()
```

## Examples

### List all memoriesChunk records

```typescript
const items = await db.memoriesChunk.findMany({
  select: { id: true, entityId: true }
}).execute();
```

### Create a memoriesChunk

```typescript
const item = await db.memoriesChunk.create({
  data: { entityId: '<UUID>', memoriesId: '<UUID>', content: '<String>', chunkIndex: '<Int>', embedding: '<Vector>', metadata: '<JSON>', memoryId: '<UUID>', embeddingVectorDistance: '<Float>', searchScore: '<Float>' },
  select: { id: true }
}).execute();
```
