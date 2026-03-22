# repositoryChunk

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

ORM operations for RepositoryChunk records

## Usage

```typescript
db.repositoryChunk.findMany({ select: { id: true } }).execute()
db.repositoryChunk.findOne({ id: '<UUID>', select: { id: true } }).execute()
db.repositoryChunk.create({ data: { entityId: '<UUID>', chunkIndex: '<Int>', content: '<String>', embeddingText: '<String>', embedding: '<Vector>', repositoryId: '<UUID>', embeddingTextBm25Score: '<Float>', embeddingVectorDistance: '<Float>', contentTrgmSimilarity: '<Float>', embeddingTextTrgmSimilarity: '<Float>', searchScore: '<Float>' }, select: { id: true } }).execute()
db.repositoryChunk.update({ where: { id: '<UUID>' }, data: { entityId: '<UUID>' }, select: { id: true } }).execute()
db.repositoryChunk.delete({ where: { id: '<UUID>' } }).execute()
```

## Examples

### List all repositoryChunk records

```typescript
const items = await db.repositoryChunk.findMany({
  select: { id: true, entityId: true }
}).execute();
```

### Create a repositoryChunk

```typescript
const item = await db.repositoryChunk.create({
  data: { entityId: '<UUID>', chunkIndex: '<Int>', content: '<String>', embeddingText: '<String>', embedding: '<Vector>', repositoryId: '<UUID>', embeddingTextBm25Score: '<Float>', embeddingVectorDistance: '<Float>', contentTrgmSimilarity: '<Float>', embeddingTextTrgmSimilarity: '<Float>', searchScore: '<Float>' },
  select: { id: true }
}).execute();
```
