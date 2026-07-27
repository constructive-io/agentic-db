# project

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

ORM operations for Project records

**pgvector embedding fields:** `embedding`
High-dimensional vector columns for semantic similarity search. Query via the Unified Search API pgvector adapter using cosine, L2, or inner-product distance.

## Usage

```typescript
db.project.findMany({ select: { id: true } }).execute()
db.project.findOne({ id: '<UUID>', select: { id: true } }).execute()
db.project.create({ data: { name: '<String>', description: '<String>', status: '<String>', projectType: '<String>', priority: '<Int>', startedAt: '<Datetime>', targetDate: '<Datetime>', completedAt: '<Datetime>', config: '<JSON>', tags: '<String>', embeddingText: '<String>', embedding: '<Vector>', embeddingUpdatedAt: '<Datetime>', embeddingTextBm25Score: '<Float>', embeddingVectorDistance: '<Float>', nameTrgmSimilarity: '<Float>', descriptionTrgmSimilarity: '<Float>', statusTrgmSimilarity: '<Float>', projectTypeTrgmSimilarity: '<Float>', embeddingTextTrgmSimilarity: '<Float>', searchScore: '<Float>' }, select: { id: true } }).execute()
db.project.update({ where: { id: '<UUID>' }, data: { name: '<String>' }, select: { id: true } }).execute()
db.project.delete({ where: { id: '<UUID>' } }).execute()
```

## Examples

### List all project records

```typescript
const items = await db.project.findMany({
  select: { id: true, name: true }
}).execute();
```

### Create a project

```typescript
const item = await db.project.create({
  data: { name: '<String>', description: '<String>', status: '<String>', projectType: '<String>', priority: '<Int>', startedAt: '<Datetime>', targetDate: '<Datetime>', completedAt: '<Datetime>', config: '<JSON>', tags: '<String>', embeddingText: '<String>', embedding: '<Vector>', embeddingUpdatedAt: '<Datetime>', embeddingTextBm25Score: '<Float>', embeddingVectorDistance: '<Float>', nameTrgmSimilarity: '<Float>', descriptionTrgmSimilarity: '<Float>', statusTrgmSimilarity: '<Float>', projectTypeTrgmSimilarity: '<Float>', embeddingTextTrgmSimilarity: '<Float>', searchScore: '<Float>' },
  select: { id: true }
}).execute();
```
