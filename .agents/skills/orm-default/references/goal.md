# goal

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

ORM operations for Goal records

**pgvector embedding fields:** `embedding`
High-dimensional vector columns for semantic similarity search. Query via the Unified Search API pgvector adapter using cosine, L2, or inner-product distance.

## Usage

```typescript
db.goal.findMany({ select: { id: true } }).execute()
db.goal.findOne({ id: '<UUID>', select: { id: true } }).execute()
db.goal.create({ data: { entityId: '<UUID>', title: '<String>', description: '<String>', status: '<String>', targetDate: '<Datetime>', progress: '<BigFloat>', tags: '<String>', embeddingText: '<String>', embedding: '<Vector>', embeddingStale: '<Boolean>', embeddingTextBm25Score: '<Float>', embeddingVectorDistance: '<Float>', titleTrgmSimilarity: '<Float>', descriptionTrgmSimilarity: '<Float>', statusTrgmSimilarity: '<Float>', embeddingTextTrgmSimilarity: '<Float>', searchScore: '<Float>' }, select: { id: true } }).execute()
db.goal.update({ where: { id: '<UUID>' }, data: { entityId: '<UUID>' }, select: { id: true } }).execute()
db.goal.delete({ where: { id: '<UUID>' } }).execute()
```

## Examples

### List all goal records

```typescript
const items = await db.goal.findMany({
  select: { id: true, entityId: true }
}).execute();
```

### Create a goal

```typescript
const item = await db.goal.create({
  data: { entityId: '<UUID>', title: '<String>', description: '<String>', status: '<String>', targetDate: '<Datetime>', progress: '<BigFloat>', tags: '<String>', embeddingText: '<String>', embedding: '<Vector>', embeddingStale: '<Boolean>', embeddingTextBm25Score: '<Float>', embeddingVectorDistance: '<Float>', titleTrgmSimilarity: '<Float>', descriptionTrgmSimilarity: '<Float>', statusTrgmSimilarity: '<Float>', embeddingTextTrgmSimilarity: '<Float>', searchScore: '<Float>' },
  select: { id: true }
}).execute();
```
