# dealChunk

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

ORM operations for DealChunk records

## Usage

```typescript
db.dealChunk.findMany({ select: { id: true } }).execute()
db.dealChunk.findOne({ id: '<UUID>', select: { id: true } }).execute()
db.dealChunk.create({ data: { entityId: '<UUID>', chunkIndex: '<Int>', content: '<String>', embeddingText: '<String>', embedding: '<Vector>', dealId: '<UUID>', embeddingTextBm25Score: '<Float>', embeddingVectorDistance: '<Float>', contentTrgmSimilarity: '<Float>', embeddingTextTrgmSimilarity: '<Float>', searchScore: '<Float>' }, select: { id: true } }).execute()
db.dealChunk.update({ where: { id: '<UUID>' }, data: { entityId: '<UUID>' }, select: { id: true } }).execute()
db.dealChunk.delete({ where: { id: '<UUID>' } }).execute()
```

## Examples

### List all dealChunk records

```typescript
const items = await db.dealChunk.findMany({
  select: { id: true, entityId: true }
}).execute();
```

### Create a dealChunk

```typescript
const item = await db.dealChunk.create({
  data: { entityId: '<UUID>', chunkIndex: '<Int>', content: '<String>', embeddingText: '<String>', embedding: '<Vector>', dealId: '<UUID>', embeddingTextBm25Score: '<Float>', embeddingVectorDistance: '<Float>', contentTrgmSimilarity: '<Float>', embeddingTextTrgmSimilarity: '<Float>', searchScore: '<Float>' },
  select: { id: true }
}).execute();
```
