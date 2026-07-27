# rule

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

ORM operations for Rule records

**pgvector embedding fields:** `embedding`, `triggerConceptEmbedding`
High-dimensional vector columns for semantic similarity search. Query via the Unified Search API pgvector adapter using cosine, L2, or inner-product distance.

## Usage

```typescript
db.rule.findMany({ select: { id: true } }).execute()
db.rule.findOne({ id: '<UUID>', select: { id: true } }).execute()
db.rule.create({ data: { name: '<String>', description: '<String>', triggerType: '<String>', triggerConfig: '<JSON>', actionType: '<String>', actionConfig: '<JSON>', isActive: '<Boolean>', priority: '<Int>', triggerConcept: '<String>', embeddingText: '<String>', embedding: '<Vector>', embeddingUpdatedAt: '<Datetime>', triggerConceptEmbedding: '<Vector>', triggerConceptEmbeddingUpdatedAt: '<Datetime>', agentId: '<UUID>', embeddingTextBm25Score: '<Float>', embeddingVectorDistance: '<Float>', triggerConceptEmbeddingVectorDistance: '<Float>', nameTrgmSimilarity: '<Float>', descriptionTrgmSimilarity: '<Float>', triggerTypeTrgmSimilarity: '<Float>', actionTypeTrgmSimilarity: '<Float>', triggerConceptTrgmSimilarity: '<Float>', embeddingTextTrgmSimilarity: '<Float>', searchScore: '<Float>' }, select: { id: true } }).execute()
db.rule.update({ where: { id: '<UUID>' }, data: { name: '<String>' }, select: { id: true } }).execute()
db.rule.delete({ where: { id: '<UUID>' } }).execute()
```

## Examples

### List all rule records

```typescript
const items = await db.rule.findMany({
  select: { id: true, name: true }
}).execute();
```

### Create a rule

```typescript
const item = await db.rule.create({
  data: { name: '<String>', description: '<String>', triggerType: '<String>', triggerConfig: '<JSON>', actionType: '<String>', actionConfig: '<JSON>', isActive: '<Boolean>', priority: '<Int>', triggerConcept: '<String>', embeddingText: '<String>', embedding: '<Vector>', embeddingUpdatedAt: '<Datetime>', triggerConceptEmbedding: '<Vector>', triggerConceptEmbeddingUpdatedAt: '<Datetime>', agentId: '<UUID>', embeddingTextBm25Score: '<Float>', embeddingVectorDistance: '<Float>', triggerConceptEmbeddingVectorDistance: '<Float>', nameTrgmSimilarity: '<Float>', descriptionTrgmSimilarity: '<Float>', triggerTypeTrgmSimilarity: '<Float>', actionTypeTrgmSimilarity: '<Float>', triggerConceptTrgmSimilarity: '<Float>', embeddingTextTrgmSimilarity: '<Float>', searchScore: '<Float>' },
  select: { id: true }
}).execute();
```
