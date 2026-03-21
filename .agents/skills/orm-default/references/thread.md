# thread

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

ORM operations for Thread records

## Usage

```typescript
db.thread.findMany({ select: { id: true } }).execute()
db.thread.findOne({ id: '<UUID>', select: { id: true } }).execute()
db.thread.create({ data: { entityId: '<UUID>', title: '<String>', summary: '<String>', status: '<String>', parentThreadId: '<UUID>', embeddingText: '<String>', embedding: '<Vector>', embeddingTextBm25Score: '<Float>', embeddingVectorDistance: '<Float>', titleTrgmSimilarity: '<Float>', summaryTrgmSimilarity: '<Float>', statusTrgmSimilarity: '<Float>', embeddingTextTrgmSimilarity: '<Float>', searchScore: '<Float>' }, select: { id: true } }).execute()
db.thread.update({ where: { id: '<UUID>' }, data: { entityId: '<UUID>' }, select: { id: true } }).execute()
db.thread.delete({ where: { id: '<UUID>' } }).execute()
```

## Examples

### List all thread records

```typescript
const items = await db.thread.findMany({
  select: { id: true, entityId: true }
}).execute();
```

### Create a thread

```typescript
const item = await db.thread.create({
  data: { entityId: '<UUID>', title: '<String>', summary: '<String>', status: '<String>', parentThreadId: '<UUID>', embeddingText: '<String>', embedding: '<Vector>', embeddingTextBm25Score: '<Float>', embeddingVectorDistance: '<Float>', titleTrgmSimilarity: '<Float>', summaryTrgmSimilarity: '<Float>', statusTrgmSimilarity: '<Float>', embeddingTextTrgmSimilarity: '<Float>', searchScore: '<Float>' },
  select: { id: true }
}).execute();
```
