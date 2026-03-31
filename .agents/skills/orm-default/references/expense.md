# expense

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

ORM operations for Expense records

**pgvector embedding fields:** `embedding`
High-dimensional vector columns for semantic similarity search. Query via the Unified Search API pgvector adapter using cosine, L2, or inner-product distance.

## Usage

```typescript
db.expense.findMany({ select: { id: true } }).execute()
db.expense.findOne({ id: '<UUID>', select: { id: true } }).execute()
db.expense.create({ data: { entityId: '<UUID>', description: '<String>', amount: '<BigFloat>', currency: '<String>', category: '<String>', occurredAt: '<Datetime>', vendor: '<String>', notes: '<String>', tags: '<String>', embeddingText: '<String>', embedding: '<Vector>', embeddingStale: '<Boolean>', tripId: '<UUID>', embeddingTextBm25Score: '<Float>', embeddingVectorDistance: '<Float>', descriptionTrgmSimilarity: '<Float>', currencyTrgmSimilarity: '<Float>', categoryTrgmSimilarity: '<Float>', vendorTrgmSimilarity: '<Float>', notesTrgmSimilarity: '<Float>', embeddingTextTrgmSimilarity: '<Float>', searchScore: '<Float>' }, select: { id: true } }).execute()
db.expense.update({ where: { id: '<UUID>' }, data: { entityId: '<UUID>' }, select: { id: true } }).execute()
db.expense.delete({ where: { id: '<UUID>' } }).execute()
```

## Examples

### List all expense records

```typescript
const items = await db.expense.findMany({
  select: { id: true, entityId: true }
}).execute();
```

### Create a expense

```typescript
const item = await db.expense.create({
  data: { entityId: '<UUID>', description: '<String>', amount: '<BigFloat>', currency: '<String>', category: '<String>', occurredAt: '<Datetime>', vendor: '<String>', notes: '<String>', tags: '<String>', embeddingText: '<String>', embedding: '<Vector>', embeddingStale: '<Boolean>', tripId: '<UUID>', embeddingTextBm25Score: '<Float>', embeddingVectorDistance: '<Float>', descriptionTrgmSimilarity: '<Float>', currencyTrgmSimilarity: '<Float>', categoryTrgmSimilarity: '<Float>', vendorTrgmSimilarity: '<Float>', notesTrgmSimilarity: '<Float>', embeddingTextTrgmSimilarity: '<Float>', searchScore: '<Float>' },
  select: { id: true }
}).execute();
```
