# tool

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

ORM operations for Tool records

## Usage

```typescript
db.tool.findMany({ select: { id: true } }).execute()
db.tool.findOne({ id: '<UUID>', select: { id: true } }).execute()
db.tool.create({ data: { entityId: '<UUID>', name: '<String>', description: '<String>', type: '<String>', inputSchema: '<JSON>', outputSchema: '<JSON>', endpoint: '<String>', authMethod: '<String>', isActive: '<Boolean>', tags: '<String>', embeddingText: '<String>', embedding: '<Vector>', embeddingTextBm25Score: '<Float>', embeddingVectorDistance: '<Float>', nameTrgmSimilarity: '<Float>', descriptionTrgmSimilarity: '<Float>', typeTrgmSimilarity: '<Float>', endpointTrgmSimilarity: '<Float>', authMethodTrgmSimilarity: '<Float>', embeddingTextTrgmSimilarity: '<Float>', searchScore: '<Float>' }, select: { id: true } }).execute()
db.tool.update({ where: { id: '<UUID>' }, data: { entityId: '<UUID>' }, select: { id: true } }).execute()
db.tool.delete({ where: { id: '<UUID>' } }).execute()
```

## Examples

### List all tool records

```typescript
const items = await db.tool.findMany({
  select: { id: true, entityId: true }
}).execute();
```

### Create a tool

```typescript
const item = await db.tool.create({
  data: { entityId: '<UUID>', name: '<String>', description: '<String>', type: '<String>', inputSchema: '<JSON>', outputSchema: '<JSON>', endpoint: '<String>', authMethod: '<String>', isActive: '<Boolean>', tags: '<String>', embeddingText: '<String>', embedding: '<Vector>', embeddingTextBm25Score: '<Float>', embeddingVectorDistance: '<Float>', nameTrgmSimilarity: '<Float>', descriptionTrgmSimilarity: '<Float>', typeTrgmSimilarity: '<Float>', endpointTrgmSimilarity: '<Float>', authMethodTrgmSimilarity: '<Float>', embeddingTextTrgmSimilarity: '<Float>', searchScore: '<Float>' },
  select: { id: true }
}).execute();
```
