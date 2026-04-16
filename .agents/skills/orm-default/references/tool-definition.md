# toolDefinition

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

ORM operations for ToolDefinition records

**pgvector embedding fields:** `embedding`
High-dimensional vector columns for semantic similarity search. Query via the Unified Search API pgvector adapter using cosine, L2, or inner-product distance.

## Usage

```typescript
db.toolDefinition.findMany({ select: { id: true } }).execute()
db.toolDefinition.findOne({ id: '<UUID>', select: { id: true } }).execute()
db.toolDefinition.create({ data: { name: '<String>', description: '<String>', toolType: '<String>', schema: '<JSON>', config: '<JSON>', isActive: '<Boolean>', embeddingText: '<String>', embedding: '<Vector>', embeddingStale: '<Boolean>', embeddingTextBm25Score: '<Float>', embeddingVectorDistance: '<Float>', nameTrgmSimilarity: '<Float>', descriptionTrgmSimilarity: '<Float>', toolTypeTrgmSimilarity: '<Float>', embeddingTextTrgmSimilarity: '<Float>', searchScore: '<Float>' }, select: { id: true } }).execute()
db.toolDefinition.update({ where: { id: '<UUID>' }, data: { name: '<String>' }, select: { id: true } }).execute()
db.toolDefinition.delete({ where: { id: '<UUID>' } }).execute()
```

## Examples

### List all toolDefinition records

```typescript
const items = await db.toolDefinition.findMany({
  select: { id: true, name: true }
}).execute();
```

### Create a toolDefinition

```typescript
const item = await db.toolDefinition.create({
  data: { name: '<String>', description: '<String>', toolType: '<String>', schema: '<JSON>', config: '<JSON>', isActive: '<Boolean>', embeddingText: '<String>', embedding: '<Vector>', embeddingStale: '<Boolean>', embeddingTextBm25Score: '<Float>', embeddingVectorDistance: '<Float>', nameTrgmSimilarity: '<Float>', descriptionTrgmSimilarity: '<Float>', toolTypeTrgmSimilarity: '<Float>', embeddingTextTrgmSimilarity: '<Float>', searchScore: '<Float>' },
  select: { id: true }
}).execute();
```
