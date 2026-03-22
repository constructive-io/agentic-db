# blueprint

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

ORM operations for Blueprint records

## Usage

```typescript
db.blueprint.findMany({ select: { id: true } }).execute()
db.blueprint.findOne({ id: '<UUID>', select: { id: true } }).execute()
db.blueprint.create({ data: { entityId: '<UUID>', title: '<String>', steps: '<JSON>', triggerConditions: '<String>', conversationId: '<UUID>', tags: '<String>', embeddingText: '<String>', embedding: '<Vector>', embeddingTextBm25Score: '<Float>', embeddingVectorDistance: '<Float>', titleTrgmSimilarity: '<Float>', triggerConditionsTrgmSimilarity: '<Float>', embeddingTextTrgmSimilarity: '<Float>', searchScore: '<Float>' }, select: { id: true } }).execute()
db.blueprint.update({ where: { id: '<UUID>' }, data: { entityId: '<UUID>' }, select: { id: true } }).execute()
db.blueprint.delete({ where: { id: '<UUID>' } }).execute()
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
  data: { entityId: '<UUID>', title: '<String>', steps: '<JSON>', triggerConditions: '<String>', conversationId: '<UUID>', tags: '<String>', embeddingText: '<String>', embedding: '<Vector>', embeddingTextBm25Score: '<Float>', embeddingVectorDistance: '<Float>', titleTrgmSimilarity: '<Float>', triggerConditionsTrgmSimilarity: '<Float>', embeddingTextTrgmSimilarity: '<Float>', searchScore: '<Float>' },
  select: { id: true }
}).execute();
```
