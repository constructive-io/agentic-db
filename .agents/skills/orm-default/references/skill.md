# skill

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

ORM operations for Skill records

**pgvector embedding fields:** `embedding`, `intentTriggerEmbedding`
High-dimensional vector columns for semantic similarity search. Query via the Unified Search API pgvector adapter using cosine, L2, or inner-product distance.

## Usage

```typescript
db.skill.findMany({ select: { id: true } }).execute()
db.skill.findOne({ id: '<UUID>', select: { id: true } }).execute()
db.skill.create({ data: { name: '<String>', description: '<String>', category: '<String>', implementation: '<String>', config: '<JSON>', isActive: '<Boolean>', intentTrigger: '<String>', embeddingText: '<String>', embedding: '<Vector>', embeddingUpdatedAt: '<Datetime>', intentTriggerEmbedding: '<Vector>', intentTriggerEmbeddingUpdatedAt: '<Datetime>', agentId: '<UUID>', embeddingTextBm25Score: '<Float>', embeddingVectorDistance: '<Float>', intentTriggerEmbeddingVectorDistance: '<Float>', nameTrgmSimilarity: '<Float>', descriptionTrgmSimilarity: '<Float>', categoryTrgmSimilarity: '<Float>', implementationTrgmSimilarity: '<Float>', intentTriggerTrgmSimilarity: '<Float>', embeddingTextTrgmSimilarity: '<Float>', searchScore: '<Float>' }, select: { id: true } }).execute()
db.skill.update({ where: { id: '<UUID>' }, data: { name: '<String>' }, select: { id: true } }).execute()
db.skill.delete({ where: { id: '<UUID>' } }).execute()
```

## Examples

### List all skill records

```typescript
const items = await db.skill.findMany({
  select: { id: true, name: true }
}).execute();
```

### Create a skill

```typescript
const item = await db.skill.create({
  data: { name: '<String>', description: '<String>', category: '<String>', implementation: '<String>', config: '<JSON>', isActive: '<Boolean>', intentTrigger: '<String>', embeddingText: '<String>', embedding: '<Vector>', embeddingUpdatedAt: '<Datetime>', intentTriggerEmbedding: '<Vector>', intentTriggerEmbeddingUpdatedAt: '<Datetime>', agentId: '<UUID>', embeddingTextBm25Score: '<Float>', embeddingVectorDistance: '<Float>', intentTriggerEmbeddingVectorDistance: '<Float>', nameTrgmSimilarity: '<Float>', descriptionTrgmSimilarity: '<Float>', categoryTrgmSimilarity: '<Float>', implementationTrgmSimilarity: '<Float>', intentTriggerTrgmSimilarity: '<Float>', embeddingTextTrgmSimilarity: '<Float>', searchScore: '<Float>' },
  select: { id: true }
}).execute();
```
