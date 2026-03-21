# templateChunk

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

ORM operations for TemplateChunk records

## Usage

```typescript
db.templateChunk.findMany({ select: { id: true } }).execute()
db.templateChunk.findOne({ id: '<UUID>', select: { id: true } }).execute()
db.templateChunk.create({ data: { entityId: '<UUID>', chunkIndex: '<Int>', content: '<String>', embeddingText: '<String>', embedding: '<Vector>', templateId: '<UUID>', embeddingTextBm25Score: '<Float>', embeddingVectorDistance: '<Float>', contentTrgmSimilarity: '<Float>', embeddingTextTrgmSimilarity: '<Float>', searchScore: '<Float>' }, select: { id: true } }).execute()
db.templateChunk.update({ where: { id: '<UUID>' }, data: { entityId: '<UUID>' }, select: { id: true } }).execute()
db.templateChunk.delete({ where: { id: '<UUID>' } }).execute()
```

## Examples

### List all templateChunk records

```typescript
const items = await db.templateChunk.findMany({
  select: { id: true, entityId: true }
}).execute();
```

### Create a templateChunk

```typescript
const item = await db.templateChunk.create({
  data: { entityId: '<UUID>', chunkIndex: '<Int>', content: '<String>', embeddingText: '<String>', embedding: '<Vector>', templateId: '<UUID>', embeddingTextBm25Score: '<Float>', embeddingVectorDistance: '<Float>', contentTrgmSimilarity: '<Float>', embeddingTextTrgmSimilarity: '<Float>', searchScore: '<Float>' },
  select: { id: true }
}).execute();
```
