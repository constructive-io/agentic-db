# habitChunk

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

ORM operations for HabitChunk records

## Usage

```typescript
db.habitChunk.findMany({ select: { id: true } }).execute()
db.habitChunk.findOne({ id: '<UUID>', select: { id: true } }).execute()
db.habitChunk.create({ data: { entityId: '<UUID>', chunkIndex: '<Int>', content: '<String>', embeddingText: '<String>', embedding: '<Vector>', embeddingStale: '<Boolean>', habitId: '<UUID>', embeddingTextBm25Score: '<Float>', embeddingVectorDistance: '<Float>', contentTrgmSimilarity: '<Float>', embeddingTextTrgmSimilarity: '<Float>', searchScore: '<Float>' }, select: { id: true } }).execute()
db.habitChunk.update({ where: { id: '<UUID>' }, data: { entityId: '<UUID>' }, select: { id: true } }).execute()
db.habitChunk.delete({ where: { id: '<UUID>' } }).execute()
```

## Examples

### List all habitChunk records

```typescript
const items = await db.habitChunk.findMany({
  select: { id: true, entityId: true }
}).execute();
```

### Create a habitChunk

```typescript
const item = await db.habitChunk.create({
  data: { entityId: '<UUID>', chunkIndex: '<Int>', content: '<String>', embeddingText: '<String>', embedding: '<Vector>', embeddingStale: '<Boolean>', habitId: '<UUID>', embeddingTextBm25Score: '<Float>', embeddingVectorDistance: '<Float>', contentTrgmSimilarity: '<Float>', embeddingTextTrgmSimilarity: '<Float>', searchScore: '<Float>' },
  select: { id: true }
}).execute();
```
