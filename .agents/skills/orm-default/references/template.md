# template

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

ORM operations for Template records

## Usage

```typescript
db.template.findMany({ select: { id: true } }).execute()
db.template.findOne({ id: '<UUID>', select: { id: true } }).execute()
db.template.create({ data: { entityId: '<UUID>', name: '<String>', description: '<String>', type: '<String>', content: '<JSON>', variables: '<JSON>', isActive: '<Boolean>', tags: '<String>', embeddingText: '<String>', embedding: '<Vector>', embeddingTextBm25Score: '<Float>', embeddingVectorDistance: '<Float>', nameTrgmSimilarity: '<Float>', descriptionTrgmSimilarity: '<Float>', typeTrgmSimilarity: '<Float>', embeddingTextTrgmSimilarity: '<Float>', searchScore: '<Float>' }, select: { id: true } }).execute()
db.template.update({ where: { id: '<UUID>' }, data: { entityId: '<UUID>' }, select: { id: true } }).execute()
db.template.delete({ where: { id: '<UUID>' } }).execute()
```

## Examples

### List all template records

```typescript
const items = await db.template.findMany({
  select: { id: true, entityId: true }
}).execute();
```

### Create a template

```typescript
const item = await db.template.create({
  data: { entityId: '<UUID>', name: '<String>', description: '<String>', type: '<String>', content: '<JSON>', variables: '<JSON>', isActive: '<Boolean>', tags: '<String>', embeddingText: '<String>', embedding: '<Vector>', embeddingTextBm25Score: '<Float>', embeddingVectorDistance: '<Float>', nameTrgmSimilarity: '<Float>', descriptionTrgmSimilarity: '<Float>', typeTrgmSimilarity: '<Float>', embeddingTextTrgmSimilarity: '<Float>', searchScore: '<Float>' },
  select: { id: true }
}).execute();
```
