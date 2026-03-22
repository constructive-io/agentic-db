# repository

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

ORM operations for Repository records

## Usage

```typescript
db.repository.findMany({ select: { id: true } }).execute()
db.repository.findOne({ id: '<UUID>', select: { id: true } }).execute()
db.repository.create({ data: { entityId: '<UUID>', name: '<String>', url: '<String>', description: '<String>', defaultBranch: '<String>', lastSyncedAt: '<Datetime>', tags: '<String>', embeddingText: '<String>', embedding: '<Vector>', embeddingTextBm25Score: '<Float>', embeddingVectorDistance: '<Float>', nameTrgmSimilarity: '<Float>', urlTrgmSimilarity: '<Float>', descriptionTrgmSimilarity: '<Float>', defaultBranchTrgmSimilarity: '<Float>', embeddingTextTrgmSimilarity: '<Float>', searchScore: '<Float>' }, select: { id: true } }).execute()
db.repository.update({ where: { id: '<UUID>' }, data: { entityId: '<UUID>' }, select: { id: true } }).execute()
db.repository.delete({ where: { id: '<UUID>' } }).execute()
```

## Examples

### List all repository records

```typescript
const items = await db.repository.findMany({
  select: { id: true, entityId: true }
}).execute();
```

### Create a repository

```typescript
const item = await db.repository.create({
  data: { entityId: '<UUID>', name: '<String>', url: '<String>', description: '<String>', defaultBranch: '<String>', lastSyncedAt: '<Datetime>', tags: '<String>', embeddingText: '<String>', embedding: '<Vector>', embeddingTextBm25Score: '<Float>', embeddingVectorDistance: '<Float>', nameTrgmSimilarity: '<Float>', urlTrgmSimilarity: '<Float>', descriptionTrgmSimilarity: '<Float>', defaultBranchTrgmSimilarity: '<Float>', embeddingTextTrgmSimilarity: '<Float>', searchScore: '<Float>' },
  select: { id: true }
}).execute();
```
