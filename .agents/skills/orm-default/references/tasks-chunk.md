# tasksChunk

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

ORM operations for TasksChunk records

## Usage

```typescript
db.tasksChunk.findMany({ select: { id: true } }).execute()
db.tasksChunk.findOne({ id: '<UUID>', select: { id: true } }).execute()
db.tasksChunk.create({ data: { entityId: '<UUID>', tasksId: '<UUID>', content: '<String>', chunkIndex: '<Int>', embedding: '<Vector>', metadata: '<JSON>', taskId: '<UUID>', embeddingVectorDistance: '<Float>', searchScore: '<Float>' }, select: { id: true } }).execute()
db.tasksChunk.update({ where: { id: '<UUID>' }, data: { entityId: '<UUID>' }, select: { id: true } }).execute()
db.tasksChunk.delete({ where: { id: '<UUID>' } }).execute()
```

## Examples

### List all tasksChunk records

```typescript
const items = await db.tasksChunk.findMany({
  select: { id: true, entityId: true }
}).execute();
```

### Create a tasksChunk

```typescript
const item = await db.tasksChunk.create({
  data: { entityId: '<UUID>', tasksId: '<UUID>', content: '<String>', chunkIndex: '<Int>', embedding: '<Vector>', metadata: '<JSON>', taskId: '<UUID>', embeddingVectorDistance: '<Float>', searchScore: '<Float>' },
  select: { id: true }
}).execute();
```
