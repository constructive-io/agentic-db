# activityLog

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

ORM operations for ActivityLog records

**pgvector embedding fields:** `embedding`
High-dimensional vector columns for semantic similarity search. Query via the Unified Search API pgvector adapter using cosine, L2, or inner-product distance.

## Usage

```typescript
db.activityLog.findMany({ select: { id: true } }).execute()
db.activityLog.findOne({ id: '<UUID>', select: { id: true } }).execute()
db.activityLog.create({ data: { activityType: '<String>', completedAt: '<Datetime>', durationMinutes: '<Int>', quantity: '<BigFloat>', quantityUnit: '<String>', intensity: '<String>', notes: '<String>', meta: '<JSON>', tags: '<String>', embeddingText: '<String>', embedding: '<Vector>', embeddingUpdatedAt: '<Datetime>', habitId: '<UUID>', embeddingTextBm25Score: '<Float>', embeddingVectorDistance: '<Float>', activityTypeTrgmSimilarity: '<Float>', quantityUnitTrgmSimilarity: '<Float>', intensityTrgmSimilarity: '<Float>', notesTrgmSimilarity: '<Float>', embeddingTextTrgmSimilarity: '<Float>', searchScore: '<Float>' }, select: { id: true } }).execute()
db.activityLog.update({ where: { id: '<UUID>' }, data: { activityType: '<String>' }, select: { id: true } }).execute()
db.activityLog.delete({ where: { id: '<UUID>' } }).execute()
```

## Examples

### List all activityLog records

```typescript
const items = await db.activityLog.findMany({
  select: { id: true, activityType: true }
}).execute();
```

### Create a activityLog

```typescript
const item = await db.activityLog.create({
  data: { activityType: '<String>', completedAt: '<Datetime>', durationMinutes: '<Int>', quantity: '<BigFloat>', quantityUnit: '<String>', intensity: '<String>', notes: '<String>', meta: '<JSON>', tags: '<String>', embeddingText: '<String>', embedding: '<Vector>', embeddingUpdatedAt: '<Datetime>', habitId: '<UUID>', embeddingTextBm25Score: '<Float>', embeddingVectorDistance: '<Float>', activityTypeTrgmSimilarity: '<Float>', quantityUnitTrgmSimilarity: '<Float>', intensityTrgmSimilarity: '<Float>', notesTrgmSimilarity: '<Float>', embeddingTextTrgmSimilarity: '<Float>', searchScore: '<Float>' },
  select: { id: true }
}).execute();
```
