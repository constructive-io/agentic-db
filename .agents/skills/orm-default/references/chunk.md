# chunk

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

ORM operations for Chunk records

## Usage

```typescript
db.chunk.findMany({ select: { id: true } }).execute()
db.chunk.findOne({ id: '<UUID>', select: { id: true } }).execute()
db.chunk.create({ data: { entityId: '<UUID>', fileId: '<UUID>', repositoryId: '<UUID>', content: '<String>', startLine: '<Int>', endLine: '<Int>', embeddingText: '<String>', embedding: '<Vector>', embeddingTextBm25Score: '<Float>', embeddingVectorDistance: '<Float>', contentTrgmSimilarity: '<Float>', embeddingTextTrgmSimilarity: '<Float>', searchScore: '<Float>' }, select: { id: true } }).execute()
db.chunk.update({ where: { id: '<UUID>' }, data: { entityId: '<UUID>' }, select: { id: true } }).execute()
db.chunk.delete({ where: { id: '<UUID>' } }).execute()
```

## Examples

### List all chunk records

```typescript
const items = await db.chunk.findMany({
  select: { id: true, entityId: true }
}).execute();
```

### Create a chunk

```typescript
const item = await db.chunk.create({
  data: { entityId: '<UUID>', fileId: '<UUID>', repositoryId: '<UUID>', content: '<String>', startLine: '<Int>', endLine: '<Int>', embeddingText: '<String>', embedding: '<Vector>', embeddingTextBm25Score: '<Float>', embeddingVectorDistance: '<Float>', contentTrgmSimilarity: '<Float>', embeddingTextTrgmSimilarity: '<Float>', searchScore: '<Float>' },
  select: { id: true }
}).execute();
```
