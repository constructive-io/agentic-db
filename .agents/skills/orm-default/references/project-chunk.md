# projectChunk

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

ORM operations for ProjectChunk records

## Usage

```typescript
db.projectChunk.findMany({ select: { id: true } }).execute()
db.projectChunk.findOne({ id: '<UUID>', select: { id: true } }).execute()
db.projectChunk.create({ data: { entityId: '<UUID>', chunkIndex: '<Int>', content: '<String>', embeddingText: '<String>', embedding: '<Vector>', embeddingStale: '<Boolean>', projectId: '<UUID>', embeddingTextBm25Score: '<Float>', embeddingVectorDistance: '<Float>', contentTrgmSimilarity: '<Float>', embeddingTextTrgmSimilarity: '<Float>', searchScore: '<Float>' }, select: { id: true } }).execute()
db.projectChunk.update({ where: { id: '<UUID>' }, data: { entityId: '<UUID>' }, select: { id: true } }).execute()
db.projectChunk.delete({ where: { id: '<UUID>' } }).execute()
```

## Examples

### List all projectChunk records

```typescript
const items = await db.projectChunk.findMany({
  select: { id: true, entityId: true }
}).execute();
```

### Create a projectChunk

```typescript
const item = await db.projectChunk.create({
  data: { entityId: '<UUID>', chunkIndex: '<Int>', content: '<String>', embeddingText: '<String>', embedding: '<Vector>', embeddingStale: '<Boolean>', projectId: '<UUID>', embeddingTextBm25Score: '<Float>', embeddingVectorDistance: '<Float>', contentTrgmSimilarity: '<Float>', embeddingTextTrgmSimilarity: '<Float>', searchScore: '<Float>' },
  select: { id: true }
}).execute();
```
