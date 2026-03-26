# activityLog

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

ORM operations for ActivityLog records

## Usage

```typescript
db.activityLog.findMany({ select: { id: true } }).execute()
db.activityLog.findOne({ id: '<UUID>', select: { id: true } }).execute()
db.activityLog.create({ data: { entityId: '<UUID>', activityType: '<String>', completedAt: '<Datetime>', durationMinutes: '<Int>', quantity: '<BigFloat>', quantityUnit: '<String>', intensity: '<String>', notes: '<String>', meta: '<JSON>', tags: '<String>', embeddingText: '<String>', embedding: '<Vector>', embeddingStale: '<Boolean>', habitId: '<UUID>', embeddingTextBm25Score: '<Float>', embeddingVectorDistance: '<Float>', activityTypeTrgmSimilarity: '<Float>', quantityUnitTrgmSimilarity: '<Float>', intensityTrgmSimilarity: '<Float>', notesTrgmSimilarity: '<Float>', embeddingTextTrgmSimilarity: '<Float>', searchScore: '<Float>' }, select: { id: true } }).execute()
db.activityLog.update({ where: { id: '<UUID>' }, data: { entityId: '<UUID>' }, select: { id: true } }).execute()
db.activityLog.delete({ where: { id: '<UUID>' } }).execute()
```

## Examples

### List all activityLog records

```typescript
const items = await db.activityLog.findMany({
  select: { id: true, entityId: true }
}).execute();
```

### Create a activityLog

```typescript
const item = await db.activityLog.create({
  data: { entityId: '<UUID>', activityType: '<String>', completedAt: '<Datetime>', durationMinutes: '<Int>', quantity: '<BigFloat>', quantityUnit: '<String>', intensity: '<String>', notes: '<String>', meta: '<JSON>', tags: '<String>', embeddingText: '<String>', embedding: '<Vector>', embeddingStale: '<Boolean>', habitId: '<UUID>', embeddingTextBm25Score: '<Float>', embeddingVectorDistance: '<Float>', activityTypeTrgmSimilarity: '<Float>', quantityUnitTrgmSimilarity: '<Float>', intensityTrgmSimilarity: '<Float>', notesTrgmSimilarity: '<Float>', embeddingTextTrgmSimilarity: '<Float>', searchScore: '<Float>' },
  select: { id: true }
}).execute();
```
