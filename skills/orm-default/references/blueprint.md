# blueprint

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

ORM operations for Blueprint records

## Usage

```typescript
db.blueprint.findMany({ select: { id: true } }).execute()
db.blueprint.findOne({ id: '<value>', select: { id: true } }).execute()
db.blueprint.create({ data: { entityId: '<value>', title: '<value>', steps: '<value>', triggerConditions: '<value>', conversationId: '<value>', tags: '<value>', embeddingText: '<value>', embedding: '<value>', titleTrgmSimilarity: '<value>', triggerConditionsTrgmSimilarity: '<value>', embeddingTextTrgmSimilarity: '<value>', embeddingVectorDistance: '<value>', searchScore: '<value>' }, select: { id: true } }).execute()
db.blueprint.update({ where: { id: '<value>' }, data: { entityId: '<new>' }, select: { id: true } }).execute()
db.blueprint.delete({ where: { id: '<value>' } }).execute()
```

## Examples

### List all blueprint records

```typescript
const items = await db.blueprint.findMany({
  select: { id: true, entityId: true }
}).execute();
```

### Create a blueprint

```typescript
const item = await db.blueprint.create({
  data: { entityId: 'value', title: 'value', steps: 'value', triggerConditions: 'value', conversationId: 'value', tags: 'value', embeddingText: 'value', embedding: 'value', titleTrgmSimilarity: 'value', triggerConditionsTrgmSimilarity: 'value', embeddingTextTrgmSimilarity: 'value', embeddingVectorDistance: 'value', searchScore: 'value' },
  select: { id: true }
}).execute();
```
