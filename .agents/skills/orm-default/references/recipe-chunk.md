# recipeChunk

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

ORM operations for RecipeChunk records

## Usage

```typescript
db.recipeChunk.findMany({ select: { id: true } }).execute()
db.recipeChunk.findOne({ id: '<UUID>', select: { id: true } }).execute()
db.recipeChunk.create({ data: { entityId: '<UUID>', chunkIndex: '<Int>', content: '<String>', embeddingText: '<String>', embedding: '<Vector>', recipeId: '<UUID>', embeddingTextBm25Score: '<Float>', embeddingVectorDistance: '<Float>', contentTrgmSimilarity: '<Float>', embeddingTextTrgmSimilarity: '<Float>', searchScore: '<Float>' }, select: { id: true } }).execute()
db.recipeChunk.update({ where: { id: '<UUID>' }, data: { entityId: '<UUID>' }, select: { id: true } }).execute()
db.recipeChunk.delete({ where: { id: '<UUID>' } }).execute()
```

## Examples

### List all recipeChunk records

```typescript
const items = await db.recipeChunk.findMany({
  select: { id: true, entityId: true }
}).execute();
```

### Create a recipeChunk

```typescript
const item = await db.recipeChunk.create({
  data: { entityId: '<UUID>', chunkIndex: '<Int>', content: '<String>', embeddingText: '<String>', embedding: '<Vector>', recipeId: '<UUID>', embeddingTextBm25Score: '<Float>', embeddingVectorDistance: '<Float>', contentTrgmSimilarity: '<Float>', embeddingTextTrgmSimilarity: '<Float>', searchScore: '<Float>' },
  select: { id: true }
}).execute();
```
