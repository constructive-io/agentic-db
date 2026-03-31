# codeChunk

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

ORM operations for CodeChunk records

**pgvector embedding fields:** `embedding`
High-dimensional vector columns for semantic similarity search. Query via the Unified Search API pgvector adapter using cosine, L2, or inner-product distance.

## Usage

```typescript
db.codeChunk.findMany({ select: { id: true } }).execute()
db.codeChunk.findOne({ id: '<UUID>', select: { id: true } }).execute()
db.codeChunk.create({ data: { entityId: '<UUID>', codebaseId: '<UUID>', filePath: '<String>', chunkIndex: '<Int>', content: '<String>', language: '<String>', startLine: '<Int>', endLine: '<Int>', symbolName: '<String>', symbolType: '<String>', embeddingText: '<String>', embedding: '<Vector>', embeddingStale: '<Boolean>', embeddingTextBm25Score: '<Float>', embeddingVectorDistance: '<Float>', filePathTrgmSimilarity: '<Float>', contentTrgmSimilarity: '<Float>', languageTrgmSimilarity: '<Float>', symbolNameTrgmSimilarity: '<Float>', symbolTypeTrgmSimilarity: '<Float>', embeddingTextTrgmSimilarity: '<Float>', searchScore: '<Float>' }, select: { id: true } }).execute()
db.codeChunk.update({ where: { id: '<UUID>' }, data: { entityId: '<UUID>' }, select: { id: true } }).execute()
db.codeChunk.delete({ where: { id: '<UUID>' } }).execute()
```

## Examples

### List all codeChunk records

```typescript
const items = await db.codeChunk.findMany({
  select: { id: true, entityId: true }
}).execute();
```

### Create a codeChunk

```typescript
const item = await db.codeChunk.create({
  data: { entityId: '<UUID>', codebaseId: '<UUID>', filePath: '<String>', chunkIndex: '<Int>', content: '<String>', language: '<String>', startLine: '<Int>', endLine: '<Int>', symbolName: '<String>', symbolType: '<String>', embeddingText: '<String>', embedding: '<Vector>', embeddingStale: '<Boolean>', embeddingTextBm25Score: '<Float>', embeddingVectorDistance: '<Float>', filePathTrgmSimilarity: '<Float>', contentTrgmSimilarity: '<Float>', languageTrgmSimilarity: '<Float>', symbolNameTrgmSimilarity: '<Float>', symbolTypeTrgmSimilarity: '<Float>', embeddingTextTrgmSimilarity: '<Float>', searchScore: '<Float>' },
  select: { id: true }
}).execute();
```
