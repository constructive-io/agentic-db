# rule

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

ORM operations for Rule records

## Usage

```typescript
db.rule.findMany({ select: { id: true } }).execute()
db.rule.findOne({ id: '<UUID>', select: { id: true } }).execute()
db.rule.create({ data: { entityId: '<UUID>', title: '<String>', content: '<String>', kind: '<String>', severity: '<String>', isActive: '<Boolean>', slug: '<String>', verification: '<String>', tags: '<String>', embeddingText: '<String>', embedding: '<Vector>', triggerConcept: '<Vector>', embeddingTextBm25Score: '<Float>', embeddingVectorDistance: '<Float>', triggerConceptVectorDistance: '<Float>', titleTrgmSimilarity: '<Float>', contentTrgmSimilarity: '<Float>', kindTrgmSimilarity: '<Float>', severityTrgmSimilarity: '<Float>', slugTrgmSimilarity: '<Float>', verificationTrgmSimilarity: '<Float>', embeddingTextTrgmSimilarity: '<Float>', searchScore: '<Float>' }, select: { id: true } }).execute()
db.rule.update({ where: { id: '<UUID>' }, data: { entityId: '<UUID>' }, select: { id: true } }).execute()
db.rule.delete({ where: { id: '<UUID>' } }).execute()
```

## Examples

### List all rule records

```typescript
const items = await db.rule.findMany({
  select: { id: true, entityId: true }
}).execute();
```

### Create a rule

```typescript
const item = await db.rule.create({
  data: { entityId: '<UUID>', title: '<String>', content: '<String>', kind: '<String>', severity: '<String>', isActive: '<Boolean>', slug: '<String>', verification: '<String>', tags: '<String>', embeddingText: '<String>', embedding: '<Vector>', triggerConcept: '<Vector>', embeddingTextBm25Score: '<Float>', embeddingVectorDistance: '<Float>', triggerConceptVectorDistance: '<Float>', titleTrgmSimilarity: '<Float>', contentTrgmSimilarity: '<Float>', kindTrgmSimilarity: '<Float>', severityTrgmSimilarity: '<Float>', slugTrgmSimilarity: '<Float>', verificationTrgmSimilarity: '<Float>', embeddingTextTrgmSimilarity: '<Float>', searchScore: '<Float>' },
  select: { id: true }
}).execute();
```
