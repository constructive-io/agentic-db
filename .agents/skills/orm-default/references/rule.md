# rule

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

ORM operations for Rule records

## Usage

```typescript
db.rule.findMany({ select: { id: true } }).execute()
db.rule.findOne({ id: '<UUID>', select: { id: true } }).execute()
db.rule.create({ data: { entityId: '<UUID>', name: '<String>', description: '<String>', triggerType: '<String>', triggerConfig: '<JSON>', actionType: '<String>', actionConfig: '<JSON>', isActive: '<Boolean>', priority: '<Int>', triggerConcept: '<String>', embeddingText: '<String>', embedding: '<Vector>', embeddingStale: '<Boolean>', triggerConceptEmbedding: '<Vector>', agentId: '<UUID>', embeddingVectorDistance: '<Float>', triggerConceptEmbeddingVectorDistance: '<Float>', searchScore: '<Float>' }, select: { id: true } }).execute()
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
  data: { entityId: '<UUID>', name: '<String>', description: '<String>', triggerType: '<String>', triggerConfig: '<JSON>', actionType: '<String>', actionConfig: '<JSON>', isActive: '<Boolean>', priority: '<Int>', triggerConcept: '<String>', embeddingText: '<String>', embedding: '<Vector>', embeddingStale: '<Boolean>', triggerConceptEmbedding: '<Vector>', agentId: '<UUID>', embeddingVectorDistance: '<Float>', triggerConceptEmbeddingVectorDistance: '<Float>', searchScore: '<Float>' },
  select: { id: true }
}).execute();
```
