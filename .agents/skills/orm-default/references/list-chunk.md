# listChunk

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

ORM operations for ListChunk records

## Usage

```typescript
db.listChunk.findMany({ select: { id: true } }).execute()
db.listChunk.findOne({ id: '<UUID>', select: { id: true } }).execute()
db.listChunk.create({ data: { entityId: '<UUID>', chunkIndex: '<Int>', content: '<String>', embeddingText: '<String>', embedding: '<Vector>', listId: '<UUID>', embeddingTextBm25Score: '<Float>', embeddingVectorDistance: '<Float>', contentTrgmSimilarity: '<Float>', embeddingTextTrgmSimilarity: '<Float>', searchScore: '<Float>' }, select: { id: true } }).execute()
db.listChunk.update({ where: { id: '<UUID>' }, data: { entityId: '<UUID>' }, select: { id: true } }).execute()
db.listChunk.delete({ where: { id: '<UUID>' } }).execute()
```

## Examples

### List all listChunk records

```typescript
const items = await db.listChunk.findMany({
  select: { id: true, entityId: true }
}).execute();
```

### Create a listChunk

```typescript
const item = await db.listChunk.create({
  data: { entityId: '<UUID>', chunkIndex: '<Int>', content: '<String>', embeddingText: '<String>', embedding: '<Vector>', listId: '<UUID>', embeddingTextBm25Score: '<Float>', embeddingVectorDistance: '<Float>', contentTrgmSimilarity: '<Float>', embeddingTextTrgmSimilarity: '<Float>', searchScore: '<Float>' },
  select: { id: true }
}).execute();
```
