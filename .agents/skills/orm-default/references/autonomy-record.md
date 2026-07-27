# autonomyRecord

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

ORM operations for AutonomyRecord records

**pgvector embedding fields:** `embedding`
High-dimensional vector columns for semantic similarity search. Query via the Unified Search API pgvector adapter using cosine, L2, or inner-product distance.

## Usage

```typescript
db.autonomyRecord.findMany({ select: { id: true } }).execute()
db.autonomyRecord.findOne({ id: '<UUID>', select: { id: true } }).execute()
db.autonomyRecord.create({ data: { title: '<String>', recordType: '<String>', content: '<String>', status: '<String>', priority: '<Int>', source: '<String>', context: '<JSON>', tags: '<String>', embeddingText: '<String>', embedding: '<Vector>', embeddingUpdatedAt: '<Datetime>', embeddingTextBm25Score: '<Float>', embeddingVectorDistance: '<Float>', titleTrgmSimilarity: '<Float>', recordTypeTrgmSimilarity: '<Float>', contentTrgmSimilarity: '<Float>', statusTrgmSimilarity: '<Float>', sourceTrgmSimilarity: '<Float>', embeddingTextTrgmSimilarity: '<Float>', searchScore: '<Float>' }, select: { id: true } }).execute()
db.autonomyRecord.update({ where: { id: '<UUID>' }, data: { title: '<String>' }, select: { id: true } }).execute()
db.autonomyRecord.delete({ where: { id: '<UUID>' } }).execute()
```

## Examples

### List all autonomyRecord records

```typescript
const items = await db.autonomyRecord.findMany({
  select: { id: true, title: true }
}).execute();
```

### Create a autonomyRecord

```typescript
const item = await db.autonomyRecord.create({
  data: { title: '<String>', recordType: '<String>', content: '<String>', status: '<String>', priority: '<Int>', source: '<String>', context: '<JSON>', tags: '<String>', embeddingText: '<String>', embedding: '<Vector>', embeddingUpdatedAt: '<Datetime>', embeddingTextBm25Score: '<Float>', embeddingVectorDistance: '<Float>', titleTrgmSimilarity: '<Float>', recordTypeTrgmSimilarity: '<Float>', contentTrgmSimilarity: '<Float>', statusTrgmSimilarity: '<Float>', sourceTrgmSimilarity: '<Float>', embeddingTextTrgmSimilarity: '<Float>', searchScore: '<Float>' },
  select: { id: true }
}).execute();
```
