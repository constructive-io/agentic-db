# codebasChunk

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

ORM operations for CodebasChunk records

## Usage

```typescript
db.codebasChunk.findMany({ select: { id: true } }).execute()
db.codebasChunk.findOne({ id: '<UUID>', select: { id: true } }).execute()
db.codebasChunk.create({ data: { entityId: '<UUID>', chunkIndex: '<Int>', content: '<String>', embeddingText: '<String>', embedding: '<Vector>', embeddingStale: '<Boolean>', codebasisId: '<UUID>', embeddingTextBm25Score: '<Float>', embeddingVectorDistance: '<Float>', contentTrgmSimilarity: '<Float>', embeddingTextTrgmSimilarity: '<Float>', searchScore: '<Float>' }, select: { id: true } }).execute()
db.codebasChunk.update({ where: { id: '<UUID>' }, data: { entityId: '<UUID>' }, select: { id: true } }).execute()
db.codebasChunk.delete({ where: { id: '<UUID>' } }).execute()
```

## Examples

### List all codebasChunk records

```typescript
const items = await db.codebasChunk.findMany({
  select: { id: true, entityId: true }
}).execute();
```

### Create a codebasChunk

```typescript
const item = await db.codebasChunk.create({
  data: { entityId: '<UUID>', chunkIndex: '<Int>', content: '<String>', embeddingText: '<String>', embedding: '<Vector>', embeddingStale: '<Boolean>', codebasisId: '<UUID>', embeddingTextBm25Score: '<Float>', embeddingVectorDistance: '<Float>', contentTrgmSimilarity: '<Float>', embeddingTextTrgmSimilarity: '<Float>', searchScore: '<Float>' },
  select: { id: true }
}).execute();
```
