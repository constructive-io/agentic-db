# recipe

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

ORM operations for Recipe records

## Usage

```typescript
db.recipe.findMany({ select: { id: true } }).execute()
db.recipe.findOne({ id: '<value>', select: { id: true } }).execute()
db.recipe.create({ data: { entityId: '<value>', name: '<value>', description: '<value>', cuisine: '<value>', prepTimeMinutes: '<value>', cookTimeMinutes: '<value>', servings: '<value>', difficulty: '<value>', ingredients: '<value>', instructions: '<value>', sourceUrl: '<value>', imageUrl: '<value>', tags: '<value>', embeddingText: '<value>', embedding: '<value>', nameTrgmSimilarity: '<value>', descriptionTrgmSimilarity: '<value>', cuisineTrgmSimilarity: '<value>', difficultyTrgmSimilarity: '<value>', sourceUrlTrgmSimilarity: '<value>', imageUrlTrgmSimilarity: '<value>', embeddingTextTrgmSimilarity: '<value>', embeddingVectorDistance: '<value>', searchScore: '<value>' }, select: { id: true } }).execute()
db.recipe.update({ where: { id: '<value>' }, data: { entityId: '<new>' }, select: { id: true } }).execute()
db.recipe.delete({ where: { id: '<value>' } }).execute()
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
  data: { entityId: 'value', name: 'value', description: 'value', cuisine: 'value', prepTimeMinutes: 'value', cookTimeMinutes: 'value', servings: 'value', difficulty: 'value', ingredients: 'value', instructions: 'value', sourceUrl: 'value', imageUrl: 'value', tags: 'value', embeddingText: 'value', embedding: 'value', nameTrgmSimilarity: 'value', descriptionTrgmSimilarity: 'value', cuisineTrgmSimilarity: 'value', difficultyTrgmSimilarity: 'value', sourceUrlTrgmSimilarity: 'value', imageUrlTrgmSimilarity: 'value', embeddingTextTrgmSimilarity: 'value', embeddingVectorDistance: 'value', searchScore: 'value' },
  select: { id: true }
}).execute();
```
