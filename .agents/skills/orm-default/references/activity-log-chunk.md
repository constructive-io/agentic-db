# activityLogChunk

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

ORM operations for ActivityLogChunk records

## Usage

```typescript
db.activityLogChunk.findMany({ select: { id: true } }).execute()
db.activityLogChunk.findOne({ id: '<UUID>', select: { id: true } }).execute()
db.activityLogChunk.create({ data: { entityId: '<UUID>', chunkIndex: '<Int>', content: '<String>', embeddingText: '<String>', embedding: '<Vector>', activityLogId: '<UUID>', embeddingTextBm25Score: '<Float>', embeddingVectorDistance: '<Float>', contentTrgmSimilarity: '<Float>', embeddingTextTrgmSimilarity: '<Float>', searchScore: '<Float>' }, select: { id: true } }).execute()
db.activityLogChunk.update({ where: { id: '<UUID>' }, data: { entityId: '<UUID>' }, select: { id: true } }).execute()
db.activityLogChunk.delete({ where: { id: '<UUID>' } }).execute()
```

## Examples

### List all activityLogChunk records

```typescript
const items = await db.activityLogChunk.findMany({
  select: { id: true, entityId: true }
}).execute();
```

### Create a activityLogChunk

```typescript
const item = await db.activityLogChunk.create({
  data: { entityId: '<UUID>', chunkIndex: '<Int>', content: '<String>', embeddingText: '<String>', embedding: '<Vector>', activityLogId: '<UUID>', embeddingTextBm25Score: '<Float>', embeddingVectorDistance: '<Float>', contentTrgmSimilarity: '<Float>', embeddingTextTrgmSimilarity: '<Float>', searchScore: '<Float>' },
  select: { id: true }
}).execute();
```
