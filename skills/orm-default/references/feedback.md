# feedback

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

ORM operations for Feedback records

## Usage

```typescript
db.feedback.findMany({ select: { id: true } }).execute()
db.feedback.findOne({ id: '<value>', select: { id: true } }).execute()
db.feedback.create({ data: { entityId: '<value>', targetType: '<value>', targetId: '<value>', rating: '<value>', comment: '<value>', source: '<value>', targetTypeTrgmSimilarity: '<value>', commentTrgmSimilarity: '<value>', sourceTrgmSimilarity: '<value>', searchScore: '<value>' }, select: { id: true } }).execute()
db.feedback.update({ where: { id: '<value>' }, data: { entityId: '<new>' }, select: { id: true } }).execute()
db.feedback.delete({ where: { id: '<value>' } }).execute()
```

## Examples

### List all feedback records

```typescript
const items = await db.feedback.findMany({
  select: { id: true, entityId: true }
}).execute();
```

### Create a feedback

```typescript
const item = await db.feedback.create({
  data: { entityId: 'value', targetType: 'value', targetId: 'value', rating: 'value', comment: 'value', source: 'value', targetTypeTrgmSimilarity: 'value', commentTrgmSimilarity: 'value', sourceTrgmSimilarity: 'value', searchScore: 'value' },
  select: { id: true }
}).execute();
```
