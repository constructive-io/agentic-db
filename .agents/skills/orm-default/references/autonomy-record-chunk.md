# autonomyRecordChunk

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

ORM operations for AutonomyRecordChunk records

## Usage

```typescript
db.autonomyRecordChunk.findMany({ select: { id: true } }).execute()
db.autonomyRecordChunk.findOne({ id: '<UUID>', select: { id: true } }).execute()
db.autonomyRecordChunk.create({ data: { entityId: '<UUID>', chunkIndex: '<Int>', content: '<String>', embeddingText: '<String>', embedding: '<Vector>', embeddingStale: '<Boolean>', autonomyRecordId: '<UUID>', embeddingTextBm25Score: '<Float>', embeddingVectorDistance: '<Float>', contentTrgmSimilarity: '<Float>', embeddingTextTrgmSimilarity: '<Float>', searchScore: '<Float>' }, select: { id: true } }).execute()
db.autonomyRecordChunk.update({ where: { id: '<UUID>' }, data: { entityId: '<UUID>' }, select: { id: true } }).execute()
db.autonomyRecordChunk.delete({ where: { id: '<UUID>' } }).execute()
```

## Examples

### List all autonomyRecordChunk records

```typescript
const items = await db.autonomyRecordChunk.findMany({
  select: { id: true, entityId: true }
}).execute();
```

### Create a autonomyRecordChunk

```typescript
const item = await db.autonomyRecordChunk.create({
  data: { entityId: '<UUID>', chunkIndex: '<Int>', content: '<String>', embeddingText: '<String>', embedding: '<Vector>', embeddingStale: '<Boolean>', autonomyRecordId: '<UUID>', embeddingTextBm25Score: '<Float>', embeddingVectorDistance: '<Float>', contentTrgmSimilarity: '<Float>', embeddingTextTrgmSimilarity: '<Float>', searchScore: '<Float>' },
  select: { id: true }
}).execute();
```
