# companyChunk

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

ORM operations for CompanyChunk records

## Usage

```typescript
db.companyChunk.findMany({ select: { id: true } }).execute()
db.companyChunk.findOne({ id: '<UUID>', select: { id: true } }).execute()
db.companyChunk.create({ data: { entityId: '<UUID>', chunkIndex: '<Int>', content: '<String>', embeddingText: '<String>', embedding: '<Vector>', embeddingStale: '<Boolean>', companyId: '<UUID>', embeddingTextBm25Score: '<Float>', embeddingVectorDistance: '<Float>', contentTrgmSimilarity: '<Float>', embeddingTextTrgmSimilarity: '<Float>', searchScore: '<Float>' }, select: { id: true } }).execute()
db.companyChunk.update({ where: { id: '<UUID>' }, data: { entityId: '<UUID>' }, select: { id: true } }).execute()
db.companyChunk.delete({ where: { id: '<UUID>' } }).execute()
```

## Examples

### List all companyChunk records

```typescript
const items = await db.companyChunk.findMany({
  select: { id: true, entityId: true }
}).execute();
```

### Create a companyChunk

```typescript
const item = await db.companyChunk.create({
  data: { entityId: '<UUID>', chunkIndex: '<Int>', content: '<String>', embeddingText: '<String>', embedding: '<Vector>', embeddingStale: '<Boolean>', companyId: '<UUID>', embeddingTextBm25Score: '<Float>', embeddingVectorDistance: '<Float>', contentTrgmSimilarity: '<Float>', embeddingTextTrgmSimilarity: '<Float>', searchScore: '<Float>' },
  select: { id: true }
}).execute();
```
