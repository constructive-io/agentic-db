# template

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

ORM operations for Template records

## Usage

```typescript
db.template.findMany({ select: { id: true } }).execute()
db.template.findOne({ id: '<value>', select: { id: true } }).execute()
db.template.create({ data: { entityId: '<value>', name: '<value>', description: '<value>', type: '<value>', content: '<value>', variables: '<value>', isActive: '<value>', tags: '<value>', embeddingText: '<value>', embedding: '<value>', embeddingTextBm25Score: '<value>', nameTrgmSimilarity: '<value>', descriptionTrgmSimilarity: '<value>', typeTrgmSimilarity: '<value>', embeddingTextTrgmSimilarity: '<value>', embeddingVectorDistance: '<value>', searchScore: '<value>' }, select: { id: true } }).execute()
db.template.update({ where: { id: '<value>' }, data: { entityId: '<new>' }, select: { id: true } }).execute()
db.template.delete({ where: { id: '<value>' } }).execute()
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
  data: { entityId: 'value', name: 'value', description: 'value', type: 'value', content: 'value', variables: 'value', isActive: 'value', tags: 'value', embeddingText: 'value', embedding: 'value', embeddingTextBm25Score: 'value', nameTrgmSimilarity: 'value', descriptionTrgmSimilarity: 'value', typeTrgmSimilarity: 'value', embeddingTextTrgmSimilarity: 'value', embeddingVectorDistance: 'value', searchScore: 'value' },
  select: { id: true }
}).execute();
```
