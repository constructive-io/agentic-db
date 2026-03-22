# documentChunk

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

ORM operations for DocumentChunk records

## Usage

```typescript
db.documentChunk.findMany({ select: { id: true } }).execute()
db.documentChunk.findOne({ id: '<UUID>', select: { id: true } }).execute()
db.documentChunk.create({ data: { entityId: '<UUID>', chunkIndex: '<Int>', content: '<String>', embeddingText: '<String>', embedding: '<Vector>', documentId: '<UUID>', embeddingTextBm25Score: '<Float>', embeddingVectorDistance: '<Float>', contentTrgmSimilarity: '<Float>', embeddingTextTrgmSimilarity: '<Float>', searchScore: '<Float>' }, select: { id: true } }).execute()
db.documentChunk.update({ where: { id: '<UUID>' }, data: { entityId: '<UUID>' }, select: { id: true } }).execute()
db.documentChunk.delete({ where: { id: '<UUID>' } }).execute()
```

## Examples

### List all documentChunk records

```typescript
const items = await db.documentChunk.findMany({
  select: { id: true, entityId: true }
}).execute();
```

### Create a documentChunk

```typescript
const item = await db.documentChunk.create({
  data: { entityId: '<UUID>', chunkIndex: '<Int>', content: '<String>', embeddingText: '<String>', embedding: '<Vector>', documentId: '<UUID>', embeddingTextBm25Score: '<Float>', embeddingVectorDistance: '<Float>', contentTrgmSimilarity: '<Float>', embeddingTextTrgmSimilarity: '<Float>', searchScore: '<Float>' },
  select: { id: true }
}).execute();
```
