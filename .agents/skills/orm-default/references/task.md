# task

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

ORM operations for Task records

**pgvector embedding fields:** `embedding`
High-dimensional vector columns for semantic similarity search. Query via the Unified Search API pgvector adapter using cosine, L2, or inner-product distance.

## Usage

```typescript
db.task.findMany({ select: { id: true } }).execute()
db.task.findOne({ id: '<UUID>', select: { id: true } }).execute()
db.task.create({ data: { agentId: '<UUID>', title: '<String>', description: '<String>', status: '<String>', priority: '<Int>', result: '<String>', startedAt: '<Datetime>', completedAt: '<Datetime>', meta: '<JSON>', embeddingText: '<String>', embedding: '<Vector>', embeddingStale: '<Boolean>', embeddingTextBm25Score: '<Float>', embeddingVectorDistance: '<Float>', titleTrgmSimilarity: '<Float>', descriptionTrgmSimilarity: '<Float>', statusTrgmSimilarity: '<Float>', resultTrgmSimilarity: '<Float>', embeddingTextTrgmSimilarity: '<Float>', searchScore: '<Float>' }, select: { id: true } }).execute()
db.task.update({ where: { id: '<UUID>' }, data: { agentId: '<UUID>' }, select: { id: true } }).execute()
db.task.delete({ where: { id: '<UUID>' } }).execute()
```

## Examples

### List all task records

```typescript
const items = await db.task.findMany({
  select: { id: true, agentId: true }
}).execute();
```

### Create a task

```typescript
const item = await db.task.create({
  data: { agentId: '<UUID>', title: '<String>', description: '<String>', status: '<String>', priority: '<Int>', result: '<String>', startedAt: '<Datetime>', completedAt: '<Datetime>', meta: '<JSON>', embeddingText: '<String>', embedding: '<Vector>', embeddingStale: '<Boolean>', embeddingTextBm25Score: '<Float>', embeddingVectorDistance: '<Float>', titleTrgmSimilarity: '<Float>', descriptionTrgmSimilarity: '<Float>', statusTrgmSimilarity: '<Float>', resultTrgmSimilarity: '<Float>', embeddingTextTrgmSimilarity: '<Float>', searchScore: '<Float>' },
  select: { id: true }
}).execute();
```
