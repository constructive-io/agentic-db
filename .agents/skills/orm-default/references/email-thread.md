# emailThread

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

ORM operations for EmailThread records

## Usage

```typescript
db.emailThread.findMany({ select: { id: true } }).execute()
db.emailThread.findOne({ id: '<UUID>', select: { id: true } }).execute()
db.emailThread.create({ data: { entityId: '<UUID>', providerThreadId: '<String>', subject: '<String>', lastMessageAt: '<Datetime>', summary: '<String>', status: '<String>', tags: '<String>', embeddingText: '<String>', embedding: '<Vector>', embeddingStale: '<Boolean>', embeddingTextBm25Score: '<Float>', embeddingVectorDistance: '<Float>', providerThreadIdTrgmSimilarity: '<Float>', subjectTrgmSimilarity: '<Float>', summaryTrgmSimilarity: '<Float>', statusTrgmSimilarity: '<Float>', embeddingTextTrgmSimilarity: '<Float>', searchScore: '<Float>' }, select: { id: true } }).execute()
db.emailThread.update({ where: { id: '<UUID>' }, data: { entityId: '<UUID>' }, select: { id: true } }).execute()
db.emailThread.delete({ where: { id: '<UUID>' } }).execute()
```

## Examples

### List all emailThread records

```typescript
const items = await db.emailThread.findMany({
  select: { id: true, entityId: true }
}).execute();
```

### Create a emailThread

```typescript
const item = await db.emailThread.create({
  data: { entityId: '<UUID>', providerThreadId: '<String>', subject: '<String>', lastMessageAt: '<Datetime>', summary: '<String>', status: '<String>', tags: '<String>', embeddingText: '<String>', embedding: '<Vector>', embeddingStale: '<Boolean>', embeddingTextBm25Score: '<Float>', embeddingVectorDistance: '<Float>', providerThreadIdTrgmSimilarity: '<Float>', subjectTrgmSimilarity: '<Float>', summaryTrgmSimilarity: '<Float>', statusTrgmSimilarity: '<Float>', embeddingTextTrgmSimilarity: '<Float>', searchScore: '<Float>' },
  select: { id: true }
}).execute();
```
