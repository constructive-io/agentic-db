# touchpoint

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

ORM operations for Touchpoint records

## Usage

```typescript
db.touchpoint.findMany({ select: { id: true } }).execute()
db.touchpoint.findOne({ id: '<UUID>', select: { id: true } }).execute()
db.touchpoint.create({ data: { entityId: '<UUID>', contactId: '<UUID>', touchpointType: '<String>', occurredAt: '<Datetime>', subject: '<String>', summary: '<String>', sentiment: '<String>', direction: '<String>', channel: '<String>', dealId: '<UUID>', companyId: '<UUID>', eventId: '<UUID>', meta: '<JSON>', tags: '<String>', embeddingText: '<String>', embedding: '<Vector>', embeddingStale: '<Boolean>', embeddingTextBm25Score: '<Float>', embeddingVectorDistance: '<Float>', touchpointTypeTrgmSimilarity: '<Float>', subjectTrgmSimilarity: '<Float>', summaryTrgmSimilarity: '<Float>', sentimentTrgmSimilarity: '<Float>', directionTrgmSimilarity: '<Float>', channelTrgmSimilarity: '<Float>', embeddingTextTrgmSimilarity: '<Float>', searchScore: '<Float>' }, select: { id: true } }).execute()
db.touchpoint.update({ where: { id: '<UUID>' }, data: { entityId: '<UUID>' }, select: { id: true } }).execute()
db.touchpoint.delete({ where: { id: '<UUID>' } }).execute()
```

## Examples

### List all touchpoint records

```typescript
const items = await db.touchpoint.findMany({
  select: { id: true, entityId: true }
}).execute();
```

### Create a touchpoint

```typescript
const item = await db.touchpoint.create({
  data: { entityId: '<UUID>', contactId: '<UUID>', touchpointType: '<String>', occurredAt: '<Datetime>', subject: '<String>', summary: '<String>', sentiment: '<String>', direction: '<String>', channel: '<String>', dealId: '<UUID>', companyId: '<UUID>', eventId: '<UUID>', meta: '<JSON>', tags: '<String>', embeddingText: '<String>', embedding: '<Vector>', embeddingStale: '<Boolean>', embeddingTextBm25Score: '<Float>', embeddingVectorDistance: '<Float>', touchpointTypeTrgmSimilarity: '<Float>', subjectTrgmSimilarity: '<Float>', summaryTrgmSimilarity: '<Float>', sentimentTrgmSimilarity: '<Float>', directionTrgmSimilarity: '<Float>', channelTrgmSimilarity: '<Float>', embeddingTextTrgmSimilarity: '<Float>', searchScore: '<Float>' },
  select: { id: true }
}).execute();
```
