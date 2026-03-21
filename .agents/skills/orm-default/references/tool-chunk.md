# toolChunk

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

ORM operations for ToolChunk records

## Usage

```typescript
db.toolChunk.findMany({ select: { id: true } }).execute()
db.toolChunk.findOne({ id: '<UUID>', select: { id: true } }).execute()
db.toolChunk.create({ data: { entityId: '<UUID>', chunkIndex: '<Int>', content: '<String>', embeddingText: '<String>', embedding: '<Vector>', toolId: '<UUID>', embeddingTextBm25Score: '<Float>', embeddingVectorDistance: '<Float>', contentTrgmSimilarity: '<Float>', embeddingTextTrgmSimilarity: '<Float>', searchScore: '<Float>' }, select: { id: true } }).execute()
db.toolChunk.update({ where: { id: '<UUID>' }, data: { entityId: '<UUID>' }, select: { id: true } }).execute()
db.toolChunk.delete({ where: { id: '<UUID>' } }).execute()
```

## Examples

### List all toolChunk records

```typescript
const items = await db.toolChunk.findMany({
  select: { id: true, entityId: true }
}).execute();
```

### Create a toolChunk

```typescript
const item = await db.toolChunk.create({
  data: { entityId: '<UUID>', chunkIndex: '<Int>', content: '<String>', embeddingText: '<String>', embedding: '<Vector>', toolId: '<UUID>', embeddingTextBm25Score: '<Float>', embeddingVectorDistance: '<Float>', contentTrgmSimilarity: '<Float>', embeddingTextTrgmSimilarity: '<Float>', searchScore: '<Float>' },
  select: { id: true }
}).execute();
```
