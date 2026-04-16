# agent

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

ORM operations for Agent records

**pgvector embedding fields:** `embedding`
High-dimensional vector columns for semantic similarity search. Query via the Unified Search API pgvector adapter using cosine, L2, or inner-product distance.

## Usage

```typescript
db.agent.findMany({ select: { id: true } }).execute()
db.agent.findOne({ id: '<UUID>', select: { id: true } }).execute()
db.agent.create({ data: { name: '<String>', description: '<String>', systemPrompt: '<String>', model: '<String>', temperature: '<BigFloat>', status: '<String>', config: '<JSON>', tags: '<String>', embeddingText: '<String>', embedding: '<Vector>', embeddingStale: '<Boolean>', embeddingTextBm25Score: '<Float>', embeddingVectorDistance: '<Float>', nameTrgmSimilarity: '<Float>', descriptionTrgmSimilarity: '<Float>', systemPromptTrgmSimilarity: '<Float>', modelTrgmSimilarity: '<Float>', statusTrgmSimilarity: '<Float>', embeddingTextTrgmSimilarity: '<Float>', searchScore: '<Float>' }, select: { id: true } }).execute()
db.agent.update({ where: { id: '<UUID>' }, data: { name: '<String>' }, select: { id: true } }).execute()
db.agent.delete({ where: { id: '<UUID>' } }).execute()
```

## Examples

### List all agent records

```typescript
const items = await db.agent.findMany({
  select: { id: true, name: true }
}).execute();
```

### Create a agent

```typescript
const item = await db.agent.create({
  data: { name: '<String>', description: '<String>', systemPrompt: '<String>', model: '<String>', temperature: '<BigFloat>', status: '<String>', config: '<JSON>', tags: '<String>', embeddingText: '<String>', embedding: '<Vector>', embeddingStale: '<Boolean>', embeddingTextBm25Score: '<Float>', embeddingVectorDistance: '<Float>', nameTrgmSimilarity: '<Float>', descriptionTrgmSimilarity: '<Float>', systemPromptTrgmSimilarity: '<Float>', modelTrgmSimilarity: '<Float>', statusTrgmSimilarity: '<Float>', embeddingTextTrgmSimilarity: '<Float>', searchScore: '<Float>' },
  select: { id: true }
}).execute();
```
