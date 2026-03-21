# goalChunk

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

ORM operations for GoalChunk records

## Usage

```typescript
db.goalChunk.findMany({ select: { id: true } }).execute()
db.goalChunk.findOne({ id: '<UUID>', select: { id: true } }).execute()
db.goalChunk.create({ data: { entityId: '<UUID>', chunkIndex: '<Int>', content: '<String>', embeddingText: '<String>', embedding: '<Vector>', goalId: '<UUID>', embeddingTextBm25Score: '<Float>', embeddingVectorDistance: '<Float>', contentTrgmSimilarity: '<Float>', embeddingTextTrgmSimilarity: '<Float>', searchScore: '<Float>' }, select: { id: true } }).execute()
db.goalChunk.update({ where: { id: '<UUID>' }, data: { entityId: '<UUID>' }, select: { id: true } }).execute()
db.goalChunk.delete({ where: { id: '<UUID>' } }).execute()
```

## Examples

### List all goalChunk records

```typescript
const items = await db.goalChunk.findMany({
  select: { id: true, entityId: true }
}).execute();
```

### Create a goalChunk

```typescript
const item = await db.goalChunk.create({
  data: { entityId: '<UUID>', chunkIndex: '<Int>', content: '<String>', embeddingText: '<String>', embedding: '<Vector>', goalId: '<UUID>', embeddingTextBm25Score: '<Float>', embeddingVectorDistance: '<Float>', contentTrgmSimilarity: '<Float>', embeddingTextTrgmSimilarity: '<Float>', searchScore: '<Float>' },
  select: { id: true }
}).execute();
```
