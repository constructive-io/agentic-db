# interaction

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

ORM operations for Interaction records

**pgvector embedding fields:** `embedding`
High-dimensional vector columns for semantic similarity search. Query via the Unified Search API pgvector adapter using cosine, L2, or inner-product distance.

## Usage

```typescript
db.interaction.findMany({ select: { id: true } }).execute()
db.interaction.findOne({ id: '<UUID>', select: { id: true } }).execute()
db.interaction.create({ data: { contactId: '<UUID>', type: '<String>', occurredAt: '<Datetime>', summary: '<String>', sentiment: '<String>', tags: '<String>', embeddingText: '<String>', embedding: '<Vector>', embeddingUpdatedAt: '<Datetime>', embeddingTextBm25Score: '<Float>', embeddingVectorDistance: '<Float>', typeTrgmSimilarity: '<Float>', summaryTrgmSimilarity: '<Float>', sentimentTrgmSimilarity: '<Float>', embeddingTextTrgmSimilarity: '<Float>', searchScore: '<Float>' }, select: { id: true } }).execute()
db.interaction.update({ where: { id: '<UUID>' }, data: { contactId: '<UUID>' }, select: { id: true } }).execute()
db.interaction.delete({ where: { id: '<UUID>' } }).execute()
```

## Examples

### List all interaction records

```typescript
const items = await db.interaction.findMany({
  select: { id: true, contactId: true }
}).execute();
```

### Create a interaction

```typescript
const item = await db.interaction.create({
  data: { contactId: '<UUID>', type: '<String>', occurredAt: '<Datetime>', summary: '<String>', sentiment: '<String>', tags: '<String>', embeddingText: '<String>', embedding: '<Vector>', embeddingUpdatedAt: '<Datetime>', embeddingTextBm25Score: '<Float>', embeddingVectorDistance: '<Float>', typeTrgmSimilarity: '<Float>', summaryTrgmSimilarity: '<Float>', sentimentTrgmSimilarity: '<Float>', embeddingTextTrgmSimilarity: '<Float>', searchScore: '<Float>' },
  select: { id: true }
}).execute();
```
