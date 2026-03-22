# codebasis

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

ORM operations for Codebasis records

## Usage

```typescript
db.codebasis.findMany({ select: { id: true } }).execute()
db.codebasis.findOne({ id: '<UUID>', select: { id: true } }).execute()
db.codebasis.create({ data: { entityId: '<UUID>', name: '<String>', description: '<String>', repositoryUrl: '<String>', defaultBranch: '<String>', language: '<String>', framework: '<String>', lastSyncedAt: '<Datetime>', config: '<JSON>', tags: '<String>', embeddingText: '<String>', embedding: '<Vector>', embeddingStale: '<Boolean>', embeddingTextBm25Score: '<Float>', embeddingVectorDistance: '<Float>', nameTrgmSimilarity: '<Float>', descriptionTrgmSimilarity: '<Float>', repositoryUrlTrgmSimilarity: '<Float>', defaultBranchTrgmSimilarity: '<Float>', languageTrgmSimilarity: '<Float>', frameworkTrgmSimilarity: '<Float>', embeddingTextTrgmSimilarity: '<Float>', searchScore: '<Float>' }, select: { id: true } }).execute()
db.codebasis.update({ where: { id: '<UUID>' }, data: { entityId: '<UUID>' }, select: { id: true } }).execute()
db.codebasis.delete({ where: { id: '<UUID>' } }).execute()
```

## Examples

### List all codebasis records

```typescript
const items = await db.codebasis.findMany({
  select: { id: true, entityId: true }
}).execute();
```

### Create a codebasis

```typescript
const item = await db.codebasis.create({
  data: { entityId: '<UUID>', name: '<String>', description: '<String>', repositoryUrl: '<String>', defaultBranch: '<String>', language: '<String>', framework: '<String>', lastSyncedAt: '<Datetime>', config: '<JSON>', tags: '<String>', embeddingText: '<String>', embedding: '<Vector>', embeddingStale: '<Boolean>', embeddingTextBm25Score: '<Float>', embeddingVectorDistance: '<Float>', nameTrgmSimilarity: '<Float>', descriptionTrgmSimilarity: '<Float>', repositoryUrlTrgmSimilarity: '<Float>', defaultBranchTrgmSimilarity: '<Float>', languageTrgmSimilarity: '<Float>', frameworkTrgmSimilarity: '<Float>', embeddingTextTrgmSimilarity: '<Float>', searchScore: '<Float>' },
  select: { id: true }
}).execute();
```
