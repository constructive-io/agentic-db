# sessionArchive

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

ORM operations for SessionArchive records

## Usage

```typescript
db.sessionArchive.findMany({ select: { id: true } }).execute()
db.sessionArchive.findOne({ id: '<UUID>', select: { id: true } }).execute()
db.sessionArchive.create({ data: { entityId: '<UUID>', sessionId: '<UUID>', archiveIndex: '<Int>', summary: '<String>', messageRangeStart: '<Int>', messageRangeEnd: '<Int>', rawMessages: '<JSON>', embeddingText: '<String>', embedding: '<Vector>', embeddingTextBm25Score: '<Float>', embeddingVectorDistance: '<Float>', summaryTrgmSimilarity: '<Float>', embeddingTextTrgmSimilarity: '<Float>', searchScore: '<Float>' }, select: { id: true } }).execute()
db.sessionArchive.update({ where: { id: '<UUID>' }, data: { entityId: '<UUID>' }, select: { id: true } }).execute()
db.sessionArchive.delete({ where: { id: '<UUID>' } }).execute()
```

## Examples

### List all sessionArchive records

```typescript
const items = await db.sessionArchive.findMany({
  select: { id: true, entityId: true }
}).execute();
```

### Create a sessionArchive

```typescript
const item = await db.sessionArchive.create({
  data: { entityId: '<UUID>', sessionId: '<UUID>', archiveIndex: '<Int>', summary: '<String>', messageRangeStart: '<Int>', messageRangeEnd: '<Int>', rawMessages: '<JSON>', embeddingText: '<String>', embedding: '<Vector>', embeddingTextBm25Score: '<Float>', embeddingVectorDistance: '<Float>', summaryTrgmSimilarity: '<Float>', embeddingTextTrgmSimilarity: '<Float>', searchScore: '<Float>' },
  select: { id: true }
}).execute();
```
