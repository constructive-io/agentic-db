# blueprintChunk

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

ORM operations for BlueprintChunk records

## Usage

```typescript
db.blueprintChunk.findMany({ select: { id: true } }).execute()
db.blueprintChunk.findOne({ id: '<UUID>', select: { id: true } }).execute()
db.blueprintChunk.create({ data: { entityId: '<UUID>', chunkIndex: '<Int>', content: '<String>', embeddingText: '<String>', embedding: '<Vector>', blueprintId: '<UUID>', embeddingTextBm25Score: '<Float>', embeddingVectorDistance: '<Float>', contentTrgmSimilarity: '<Float>', embeddingTextTrgmSimilarity: '<Float>', searchScore: '<Float>' }, select: { id: true } }).execute()
db.blueprintChunk.update({ where: { id: '<UUID>' }, data: { entityId: '<UUID>' }, select: { id: true } }).execute()
db.blueprintChunk.delete({ where: { id: '<UUID>' } }).execute()
```

## Examples

### List all blueprintChunk records

```typescript
const items = await db.blueprintChunk.findMany({
  select: { id: true, entityId: true }
}).execute();
```

### Create a blueprintChunk

```typescript
const item = await db.blueprintChunk.create({
  data: { entityId: '<UUID>', chunkIndex: '<Int>', content: '<String>', embeddingText: '<String>', embedding: '<Vector>', blueprintId: '<UUID>', embeddingTextBm25Score: '<Float>', embeddingVectorDistance: '<Float>', contentTrgmSimilarity: '<Float>', embeddingTextTrgmSimilarity: '<Float>', searchScore: '<Float>' },
  select: { id: true }
}).execute();
```
