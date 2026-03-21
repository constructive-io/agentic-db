# interaction

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

ORM operations for Interaction records

## Usage

```typescript
db.interaction.findMany({ select: { id: true } }).execute()
db.interaction.findOne({ id: '<UUID>', select: { id: true } }).execute()
db.interaction.create({ data: { entityId: '<UUID>', contactId: '<UUID>', type: '<String>', occurredAt: '<Datetime>', summary: '<String>', sentiment: '<String>', tags: '<String>', embeddingText: '<String>', embedding: '<Vector>', embeddingTextBm25Score: '<Float>', embeddingVectorDistance: '<Float>', typeTrgmSimilarity: '<Float>', summaryTrgmSimilarity: '<Float>', sentimentTrgmSimilarity: '<Float>', embeddingTextTrgmSimilarity: '<Float>', searchScore: '<Float>' }, select: { id: true } }).execute()
db.interaction.update({ where: { id: '<UUID>' }, data: { entityId: '<UUID>' }, select: { id: true } }).execute()
db.interaction.delete({ where: { id: '<UUID>' } }).execute()
```

## Examples

### List all interaction records

```typescript
const items = await db.interaction.findMany({
  select: { id: true, entityId: true }
}).execute();
```

### Create a interaction

```typescript
const item = await db.interaction.create({
  data: { entityId: '<UUID>', contactId: '<UUID>', type: '<String>', occurredAt: '<Datetime>', summary: '<String>', sentiment: '<String>', tags: '<String>', embeddingText: '<String>', embedding: '<Vector>', embeddingTextBm25Score: '<Float>', embeddingVectorDistance: '<Float>', typeTrgmSimilarity: '<Float>', summaryTrgmSimilarity: '<Float>', sentimentTrgmSimilarity: '<Float>', embeddingTextTrgmSimilarity: '<Float>', searchScore: '<Float>' },
  select: { id: true }
}).execute();
```
