# document

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

ORM operations for Document records

**pgvector embedding fields:** `embedding`
High-dimensional vector columns for semantic similarity search. Query via the Unified Search API pgvector adapter using cosine, L2, or inner-product distance.

## Usage

```typescript
db.document.findMany({ select: { id: true } }).execute()
db.document.findOne({ id: '<UUID>', select: { id: true } }).execute()
db.document.create({ data: { title: '<String>', content: '<String>', metadata: '<JSON>', repoName: '<String>', filePath: '<String>', commitHash: '<String>', tags: '<String>', embeddingText: '<String>', embedding: '<Vector>', embeddingStale: '<Boolean>', contentBm25Score: '<Float>', embeddingTextBm25Score: '<Float>', embeddingVectorDistance: '<Float>', titleTrgmSimilarity: '<Float>', contentTrgmSimilarity: '<Float>', repoNameTrgmSimilarity: '<Float>', filePathTrgmSimilarity: '<Float>', commitHashTrgmSimilarity: '<Float>', embeddingTextTrgmSimilarity: '<Float>', searchScore: '<Float>' }, select: { id: true } }).execute()
db.document.update({ where: { id: '<UUID>' }, data: { title: '<String>' }, select: { id: true } }).execute()
db.document.delete({ where: { id: '<UUID>' } }).execute()
```

## Examples

### List all document records

```typescript
const items = await db.document.findMany({
  select: { id: true, title: true }
}).execute();
```

### Create a document

```typescript
const item = await db.document.create({
  data: { title: '<String>', content: '<String>', metadata: '<JSON>', repoName: '<String>', filePath: '<String>', commitHash: '<String>', tags: '<String>', embeddingText: '<String>', embedding: '<Vector>', embeddingStale: '<Boolean>', contentBm25Score: '<Float>', embeddingTextBm25Score: '<Float>', embeddingVectorDistance: '<Float>', titleTrgmSimilarity: '<Float>', contentTrgmSimilarity: '<Float>', repoNameTrgmSimilarity: '<Float>', filePathTrgmSimilarity: '<Float>', commitHashTrgmSimilarity: '<Float>', embeddingTextTrgmSimilarity: '<Float>', searchScore: '<Float>' },
  select: { id: true }
}).execute();
```
