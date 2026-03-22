# company

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

ORM operations for Company records

## Usage

```typescript
db.company.findMany({ select: { id: true } }).execute()
db.company.findOne({ id: '<UUID>', select: { id: true } }).execute()
db.company.create({ data: { entityId: '<UUID>', name: '<String>', domain: '<String>', industry: '<String>', description: '<String>', tags: '<String>', embeddingText: '<String>', mainImageId: '<UUID>', searchTsv: '<FullText>', embedding: '<Vector>', embeddingStale: '<Boolean>', searchTsvRank: '<Float>', embeddingTextBm25Score: '<Float>', embeddingVectorDistance: '<Float>', nameTrgmSimilarity: '<Float>', domainTrgmSimilarity: '<Float>', industryTrgmSimilarity: '<Float>', descriptionTrgmSimilarity: '<Float>', embeddingTextTrgmSimilarity: '<Float>', searchScore: '<Float>' }, select: { id: true } }).execute()
db.company.update({ where: { id: '<UUID>' }, data: { entityId: '<UUID>' }, select: { id: true } }).execute()
db.company.delete({ where: { id: '<UUID>' } }).execute()
```

## Examples

### List all company records

```typescript
const items = await db.company.findMany({
  select: { id: true, entityId: true }
}).execute();
```

### Create a company

```typescript
const item = await db.company.create({
  data: { entityId: '<UUID>', name: '<String>', domain: '<String>', industry: '<String>', description: '<String>', tags: '<String>', embeddingText: '<String>', mainImageId: '<UUID>', searchTsv: '<FullText>', embedding: '<Vector>', embeddingStale: '<Boolean>', searchTsvRank: '<Float>', embeddingTextBm25Score: '<Float>', embeddingVectorDistance: '<Float>', nameTrgmSimilarity: '<Float>', domainTrgmSimilarity: '<Float>', industryTrgmSimilarity: '<Float>', descriptionTrgmSimilarity: '<Float>', embeddingTextTrgmSimilarity: '<Float>', searchScore: '<Float>' },
  select: { id: true }
}).execute();
```
