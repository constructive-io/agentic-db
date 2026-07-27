# deal

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

ORM operations for Deal records

**pgvector embedding fields:** `embedding`
High-dimensional vector columns for semantic similarity search. Query via the Unified Search API pgvector adapter using cosine, L2, or inner-product distance.

## Usage

```typescript
db.deal.findMany({ select: { id: true } }).execute()
db.deal.findOne({ id: '<UUID>', select: { id: true } }).execute()
db.deal.create({ data: { name: '<String>', stage: '<String>', value: '<BigFloat>', currency: '<String>', expectedCloseDate: '<Datetime>', notesText: '<String>', tags: '<String>', embeddingText: '<String>', embedding: '<Vector>', embeddingUpdatedAt: '<Datetime>', embeddingTextBm25Score: '<Float>', embeddingVectorDistance: '<Float>', nameTrgmSimilarity: '<Float>', stageTrgmSimilarity: '<Float>', currencyTrgmSimilarity: '<Float>', notesTextTrgmSimilarity: '<Float>', embeddingTextTrgmSimilarity: '<Float>', searchScore: '<Float>' }, select: { id: true } }).execute()
db.deal.update({ where: { id: '<UUID>' }, data: { name: '<String>' }, select: { id: true } }).execute()
db.deal.delete({ where: { id: '<UUID>' } }).execute()
```

## Examples

### List all deal records

```typescript
const items = await db.deal.findMany({
  select: { id: true, name: true }
}).execute();
```

### Create a deal

```typescript
const item = await db.deal.create({
  data: { name: '<String>', stage: '<String>', value: '<BigFloat>', currency: '<String>', expectedCloseDate: '<Datetime>', notesText: '<String>', tags: '<String>', embeddingText: '<String>', embedding: '<Vector>', embeddingUpdatedAt: '<Datetime>', embeddingTextBm25Score: '<Float>', embeddingVectorDistance: '<Float>', nameTrgmSimilarity: '<Float>', stageTrgmSimilarity: '<Float>', currencyTrgmSimilarity: '<Float>', notesTextTrgmSimilarity: '<Float>', embeddingTextTrgmSimilarity: '<Float>', searchScore: '<Float>' },
  select: { id: true }
}).execute();
```
