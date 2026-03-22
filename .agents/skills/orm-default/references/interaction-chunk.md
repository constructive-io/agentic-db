# interactionChunk

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

ORM operations for InteractionChunk records

## Usage

```typescript
db.interactionChunk.findMany({ select: { id: true } }).execute()
db.interactionChunk.findOne({ id: '<UUID>', select: { id: true } }).execute()
db.interactionChunk.create({ data: { entityId: '<UUID>', chunkIndex: '<Int>', content: '<String>', embeddingText: '<String>', embedding: '<Vector>', embeddingStale: '<Boolean>', interactionId: '<UUID>', embeddingTextBm25Score: '<Float>', embeddingVectorDistance: '<Float>', contentTrgmSimilarity: '<Float>', embeddingTextTrgmSimilarity: '<Float>', searchScore: '<Float>' }, select: { id: true } }).execute()
db.interactionChunk.update({ where: { id: '<UUID>' }, data: { entityId: '<UUID>' }, select: { id: true } }).execute()
db.interactionChunk.delete({ where: { id: '<UUID>' } }).execute()
```

## Examples

### List all interactionChunk records

```typescript
const items = await db.interactionChunk.findMany({
  select: { id: true, entityId: true }
}).execute();
```

### Create a interactionChunk

```typescript
const item = await db.interactionChunk.create({
  data: { entityId: '<UUID>', chunkIndex: '<Int>', content: '<String>', embeddingText: '<String>', embedding: '<Vector>', embeddingStale: '<Boolean>', interactionId: '<UUID>', embeddingTextBm25Score: '<Float>', embeddingVectorDistance: '<Float>', contentTrgmSimilarity: '<Float>', embeddingTextTrgmSimilarity: '<Float>', searchScore: '<Float>' },
  select: { id: true }
}).execute();
```
