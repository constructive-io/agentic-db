# ideaChunk

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

ORM operations for IdeaChunk records

## Usage

```typescript
db.ideaChunk.findMany({ select: { id: true } }).execute()
db.ideaChunk.findOne({ id: '<UUID>', select: { id: true } }).execute()
db.ideaChunk.create({ data: { entityId: '<UUID>', chunkIndex: '<Int>', content: '<String>', embeddingText: '<String>', embedding: '<Vector>', ideaId: '<UUID>', embeddingTextBm25Score: '<Float>', embeddingVectorDistance: '<Float>', contentTrgmSimilarity: '<Float>', embeddingTextTrgmSimilarity: '<Float>', searchScore: '<Float>' }, select: { id: true } }).execute()
db.ideaChunk.update({ where: { id: '<UUID>' }, data: { entityId: '<UUID>' }, select: { id: true } }).execute()
db.ideaChunk.delete({ where: { id: '<UUID>' } }).execute()
```

## Examples

### List all ideaChunk records

```typescript
const items = await db.ideaChunk.findMany({
  select: { id: true, entityId: true }
}).execute();
```

### Create a ideaChunk

```typescript
const item = await db.ideaChunk.create({
  data: { entityId: '<UUID>', chunkIndex: '<Int>', content: '<String>', embeddingText: '<String>', embedding: '<Vector>', ideaId: '<UUID>', embeddingTextBm25Score: '<Float>', embeddingVectorDistance: '<Float>', contentTrgmSimilarity: '<Float>', embeddingTextTrgmSimilarity: '<Float>', searchScore: '<Float>' },
  select: { id: true }
}).execute();
```
