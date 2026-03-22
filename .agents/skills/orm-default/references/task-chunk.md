# taskChunk

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

ORM operations for TaskChunk records

## Usage

```typescript
db.taskChunk.findMany({ select: { id: true } }).execute()
db.taskChunk.findOne({ id: '<UUID>', select: { id: true } }).execute()
db.taskChunk.create({ data: { entityId: '<UUID>', chunkIndex: '<Int>', content: '<String>', embeddingText: '<String>', embedding: '<Vector>', taskId: '<UUID>', embeddingTextBm25Score: '<Float>', embeddingVectorDistance: '<Float>', contentTrgmSimilarity: '<Float>', embeddingTextTrgmSimilarity: '<Float>', searchScore: '<Float>' }, select: { id: true } }).execute()
db.taskChunk.update({ where: { id: '<UUID>' }, data: { entityId: '<UUID>' }, select: { id: true } }).execute()
db.taskChunk.delete({ where: { id: '<UUID>' } }).execute()
```

## Examples

### List all taskChunk records

```typescript
const items = await db.taskChunk.findMany({
  select: { id: true, entityId: true }
}).execute();
```

### Create a taskChunk

```typescript
const item = await db.taskChunk.create({
  data: { entityId: '<UUID>', chunkIndex: '<Int>', content: '<String>', embeddingText: '<String>', embedding: '<Vector>', taskId: '<UUID>', embeddingTextBm25Score: '<Float>', embeddingVectorDistance: '<Float>', contentTrgmSimilarity: '<Float>', embeddingTextTrgmSimilarity: '<Float>', searchScore: '<Float>' },
  select: { id: true }
}).execute();
```
