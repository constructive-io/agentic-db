# runtimeLog

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

ORM operations for RuntimeLog records

**pgvector embedding fields:** `embedding`
High-dimensional vector columns for semantic similarity search. Query via the Unified Search API pgvector adapter using cosine, L2, or inner-product distance.

## Usage

```typescript
db.runtimeLog.findMany({ select: { id: true } }).execute()
db.runtimeLog.findOne({ id: '<UUID>', select: { id: true } }).execute()
db.runtimeLog.create({ data: { runtimeStateId: '<UUID>', level: '<String>', message: '<String>', context: '<JSON>', stepIndex: '<Int>', embeddingText: '<String>', embedding: '<Vector>', embeddingUpdatedAt: '<Datetime>', embeddingTextBm25Score: '<Float>', embeddingVectorDistance: '<Float>', levelTrgmSimilarity: '<Float>', messageTrgmSimilarity: '<Float>', embeddingTextTrgmSimilarity: '<Float>', searchScore: '<Float>' }, select: { id: true } }).execute()
db.runtimeLog.update({ where: { id: '<UUID>' }, data: { runtimeStateId: '<UUID>' }, select: { id: true } }).execute()
db.runtimeLog.delete({ where: { id: '<UUID>' } }).execute()
```

## Examples

### List all runtimeLog records

```typescript
const items = await db.runtimeLog.findMany({
  select: { id: true, runtimeStateId: true }
}).execute();
```

### Create a runtimeLog

```typescript
const item = await db.runtimeLog.create({
  data: { runtimeStateId: '<UUID>', level: '<String>', message: '<String>', context: '<JSON>', stepIndex: '<Int>', embeddingText: '<String>', embedding: '<Vector>', embeddingUpdatedAt: '<Datetime>', embeddingTextBm25Score: '<Float>', embeddingVectorDistance: '<Float>', levelTrgmSimilarity: '<Float>', messageTrgmSimilarity: '<Float>', embeddingTextTrgmSimilarity: '<Float>', searchScore: '<Float>' },
  select: { id: true }
}).execute();
```
