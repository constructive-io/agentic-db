# goal

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

ORM operations for Goal records

## Usage

```typescript
db.goal.findMany({ select: { id: true } }).execute()
db.goal.findOne({ id: '<value>', select: { id: true } }).execute()
db.goal.create({ data: { entityId: '<value>', title: '<value>', description: '<value>', targetDate: '<value>', status: '<value>', category: '<value>', progressPct: '<value>', tags: '<value>', embeddingText: '<value>', embedding: '<value>', titleTrgmSimilarity: '<value>', descriptionTrgmSimilarity: '<value>', statusTrgmSimilarity: '<value>', categoryTrgmSimilarity: '<value>', embeddingTextTrgmSimilarity: '<value>', embeddingVectorDistance: '<value>', searchScore: '<value>' }, select: { id: true } }).execute()
db.goal.update({ where: { id: '<value>' }, data: { entityId: '<new>' }, select: { id: true } }).execute()
db.goal.delete({ where: { id: '<value>' } }).execute()
```

## Examples

### List all goal records

```typescript
const items = await db.goal.findMany({
  select: { id: true, entityId: true }
}).execute();
```

### Create a goal

```typescript
const item = await db.goal.create({
  data: { entityId: 'value', title: 'value', description: 'value', targetDate: 'value', status: 'value', category: 'value', progressPct: 'value', tags: 'value', embeddingText: 'value', embedding: 'value', titleTrgmSimilarity: 'value', descriptionTrgmSimilarity: 'value', statusTrgmSimilarity: 'value', categoryTrgmSimilarity: 'value', embeddingTextTrgmSimilarity: 'value', embeddingVectorDistance: 'value', searchScore: 'value' },
  select: { id: true }
}).execute();
```
