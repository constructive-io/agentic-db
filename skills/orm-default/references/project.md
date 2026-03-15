# project

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

ORM operations for Project records

## Usage

```typescript
db.project.findMany({ select: { id: true } }).execute()
db.project.findOne({ id: '<value>', select: { id: true } }).execute()
db.project.create({ data: { entityId: '<value>', name: '<value>', description: '<value>', status: '<value>', startDate: '<value>', dueDate: '<value>', tags: '<value>', embeddingText: '<value>', embedding: '<value>', searchTsv: '<value>', searchTsvRank: '<value>', embeddingTextBm25Score: '<value>', nameTrgmSimilarity: '<value>', descriptionTrgmSimilarity: '<value>', statusTrgmSimilarity: '<value>', embeddingTextTrgmSimilarity: '<value>', embeddingVectorDistance: '<value>', searchScore: '<value>' }, select: { id: true } }).execute()
db.project.update({ where: { id: '<value>' }, data: { entityId: '<new>' }, select: { id: true } }).execute()
db.project.delete({ where: { id: '<value>' } }).execute()
```

## Examples

### List all project records

```typescript
const items = await db.project.findMany({
  select: { id: true, entityId: true }
}).execute();
```

### Create a project

```typescript
const item = await db.project.create({
  data: { entityId: 'value', name: 'value', description: 'value', status: 'value', startDate: 'value', dueDate: 'value', tags: 'value', embeddingText: 'value', embedding: 'value', searchTsv: 'value', searchTsvRank: 'value', embeddingTextBm25Score: 'value', nameTrgmSimilarity: 'value', descriptionTrgmSimilarity: 'value', statusTrgmSimilarity: 'value', embeddingTextTrgmSimilarity: 'value', embeddingVectorDistance: 'value', searchScore: 'value' },
  select: { id: true }
}).execute();
```
