# recipe

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

ORM operations for Recipe records

## Usage

```typescript
db.recipe.findMany({ select: { id: true } }).execute()
db.recipe.findOne({ id: '<UUID>', select: { id: true } }).execute()
db.recipe.create({ data: { entityId: '<UUID>', name: '<String>', description: '<String>', cuisine: '<String>', prepTimeMinutes: '<Int>', cookTimeMinutes: '<Int>', servings: '<Int>', difficulty: '<String>', ingredients: '<JSON>', instructions: '<JSON>', sourceUrl: '<String>', imageUrl: '<String>', tags: '<String>', embeddingText: '<String>', embedding: '<Vector>', embeddingTextBm25Score: '<Float>', embeddingVectorDistance: '<Float>', nameTrgmSimilarity: '<Float>', descriptionTrgmSimilarity: '<Float>', cuisineTrgmSimilarity: '<Float>', difficultyTrgmSimilarity: '<Float>', sourceUrlTrgmSimilarity: '<Float>', imageUrlTrgmSimilarity: '<Float>', embeddingTextTrgmSimilarity: '<Float>', searchScore: '<Float>' }, select: { id: true } }).execute()
db.recipe.update({ where: { id: '<UUID>' }, data: { entityId: '<UUID>' }, select: { id: true } }).execute()
db.recipe.delete({ where: { id: '<UUID>' } }).execute()
```

## Examples

### List all recipe records

```typescript
const items = await db.recipe.findMany({
  select: { id: true, entityId: true }
}).execute();
```

### Create a recipe

```typescript
const item = await db.recipe.create({
  data: { entityId: '<UUID>', name: '<String>', description: '<String>', cuisine: '<String>', prepTimeMinutes: '<Int>', cookTimeMinutes: '<Int>', servings: '<Int>', difficulty: '<String>', ingredients: '<JSON>', instructions: '<JSON>', sourceUrl: '<String>', imageUrl: '<String>', tags: '<String>', embeddingText: '<String>', embedding: '<Vector>', embeddingTextBm25Score: '<Float>', embeddingVectorDistance: '<Float>', nameTrgmSimilarity: '<Float>', descriptionTrgmSimilarity: '<Float>', cuisineTrgmSimilarity: '<Float>', difficultyTrgmSimilarity: '<Float>', sourceUrlTrgmSimilarity: '<Float>', imageUrlTrgmSimilarity: '<Float>', embeddingTextTrgmSimilarity: '<Float>', searchScore: '<Float>' },
  select: { id: true }
}).execute();
```
