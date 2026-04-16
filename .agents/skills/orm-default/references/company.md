# company

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

ORM operations for Company records

**pgvector embedding fields:** `embedding`
High-dimensional vector columns for semantic similarity search. Query via the Unified Search API pgvector adapter using cosine, L2, or inner-product distance.

**Unified Search API fields:** `searchTsv`
Fields provided by the Unified Search plugin. Includes full-text search (tsvector/BM25), trigram similarity scores, and the combined searchScore. Computed fields are read-only and cannot be set in create/update operations.

## Usage

```typescript
db.company.findMany({ select: { id: true } }).execute()
db.company.findOne({ id: '<UUID>', select: { id: true } }).execute()
db.company.create({ data: { name: '<String>', domain: '<String>', industry: '<String>', description: '<String>', tags: '<String>', mainImageId: '<UUID>', embeddingText: '<String>', searchTsv: '<FullText>', embedding: '<Vector>', embeddingStale: '<Boolean>', searchTsvRank: '<Float>', embeddingTextBm25Score: '<Float>', embeddingVectorDistance: '<Float>', nameTrgmSimilarity: '<Float>', domainTrgmSimilarity: '<Float>', industryTrgmSimilarity: '<Float>', descriptionTrgmSimilarity: '<Float>', embeddingTextTrgmSimilarity: '<Float>', searchScore: '<Float>' }, select: { id: true } }).execute()
db.company.update({ where: { id: '<UUID>' }, data: { name: '<String>' }, select: { id: true } }).execute()
db.company.delete({ where: { id: '<UUID>' } }).execute()
```

## Examples

### List all company records

```typescript
const items = await db.company.findMany({
  select: { id: true, name: true }
}).execute();
```

### Create a company

```typescript
const item = await db.company.create({
  data: { name: '<String>', domain: '<String>', industry: '<String>', description: '<String>', tags: '<String>', mainImageId: '<UUID>', embeddingText: '<String>', searchTsv: '<FullText>', embedding: '<Vector>', embeddingStale: '<Boolean>', searchTsvRank: '<Float>', embeddingTextBm25Score: '<Float>', embeddingVectorDistance: '<Float>', nameTrgmSimilarity: '<Float>', domainTrgmSimilarity: '<Float>', industryTrgmSimilarity: '<Float>', descriptionTrgmSimilarity: '<Float>', embeddingTextTrgmSimilarity: '<Float>', searchScore: '<Float>' },
  select: { id: true }
}).execute();
```
