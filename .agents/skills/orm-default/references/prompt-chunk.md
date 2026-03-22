# promptChunk

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

ORM operations for PromptChunk records

## Usage

```typescript
db.promptChunk.findMany({ select: { id: true } }).execute()
db.promptChunk.findOne({ id: '<UUID>', select: { id: true } }).execute()
db.promptChunk.create({ data: { entityId: '<UUID>', chunkIndex: '<Int>', content: '<String>', embeddingText: '<String>', embedding: '<Vector>', promptId: '<UUID>', embeddingTextBm25Score: '<Float>', embeddingVectorDistance: '<Float>', contentTrgmSimilarity: '<Float>', embeddingTextTrgmSimilarity: '<Float>', searchScore: '<Float>' }, select: { id: true } }).execute()
db.promptChunk.update({ where: { id: '<UUID>' }, data: { entityId: '<UUID>' }, select: { id: true } }).execute()
db.promptChunk.delete({ where: { id: '<UUID>' } }).execute()
```

## Examples

### List all promptChunk records

```typescript
const items = await db.promptChunk.findMany({
  select: { id: true, entityId: true }
}).execute();
```

### Create a promptChunk

```typescript
const item = await db.promptChunk.create({
  data: { entityId: '<UUID>', chunkIndex: '<Int>', content: '<String>', embeddingText: '<String>', embedding: '<Vector>', promptId: '<UUID>', embeddingTextBm25Score: '<Float>', embeddingVectorDistance: '<Float>', contentTrgmSimilarity: '<Float>', embeddingTextTrgmSimilarity: '<Float>', searchScore: '<Float>' },
  select: { id: true }
}).execute();
```
