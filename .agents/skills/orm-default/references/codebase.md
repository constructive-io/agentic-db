# codebase

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

ORM operations for Codebase records

**pgvector embedding fields:** `embedding`
High-dimensional vector columns for semantic similarity search. Query via the Unified Search API pgvector adapter using cosine, L2, or inner-product distance.

## Usage

```typescript
db.codebase.findMany({ select: { id: true } }).execute()
db.codebase.findOne({ id: '<UUID>', select: { id: true } }).execute()
db.codebase.create({ data: { entityId: '<UUID>', name: '<String>', description: '<String>', repositoryUrl: '<String>', defaultBranch: '<String>', language: '<String>', framework: '<String>', lastSyncedAt: '<Datetime>', config: '<JSON>', tags: '<String>', embeddingText: '<String>', embedding: '<Vector>', embeddingStale: '<Boolean>', embeddingTextBm25Score: '<Float>', embeddingVectorDistance: '<Float>', nameTrgmSimilarity: '<Float>', descriptionTrgmSimilarity: '<Float>', repositoryUrlTrgmSimilarity: '<Float>', defaultBranchTrgmSimilarity: '<Float>', languageTrgmSimilarity: '<Float>', frameworkTrgmSimilarity: '<Float>', embeddingTextTrgmSimilarity: '<Float>', searchScore: '<Float>' }, select: { id: true } }).execute()
db.codebase.update({ where: { id: '<UUID>' }, data: { entityId: '<UUID>' }, select: { id: true } }).execute()
db.codebase.delete({ where: { id: '<UUID>' } }).execute()
```

## Examples

### List all codebase records

```typescript
const items = await db.codebase.findMany({
  select: { id: true, entityId: true }
}).execute();
```

### Create a codebase

```typescript
const item = await db.codebase.create({
  data: { entityId: '<UUID>', name: '<String>', description: '<String>', repositoryUrl: '<String>', defaultBranch: '<String>', language: '<String>', framework: '<String>', lastSyncedAt: '<Datetime>', config: '<JSON>', tags: '<String>', embeddingText: '<String>', embedding: '<Vector>', embeddingStale: '<Boolean>', embeddingTextBm25Score: '<Float>', embeddingVectorDistance: '<Float>', nameTrgmSimilarity: '<Float>', descriptionTrgmSimilarity: '<Float>', repositoryUrlTrgmSimilarity: '<Float>', defaultBranchTrgmSimilarity: '<Float>', languageTrgmSimilarity: '<Float>', frameworkTrgmSimilarity: '<Float>', embeddingTextTrgmSimilarity: '<Float>', searchScore: '<Float>' },
  select: { id: true }
}).execute();
```
