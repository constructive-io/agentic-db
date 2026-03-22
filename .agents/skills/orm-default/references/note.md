# note

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

ORM operations for Note records

## Usage

```typescript
db.note.findMany({ select: { id: true } }).execute()
db.note.findOne({ id: '<UUID>', select: { id: true } }).execute()
db.note.create({ data: { entityId: '<UUID>', content: '<String>', abstract: '<String>', overview: '<String>', activeCount: '<Int>', lastAccessedAt: '<Datetime>', tags: '<String>', embeddingText: '<String>', embedding: '<Vector>', embeddingStale: '<Boolean>', contentBm25Score: '<Float>', embeddingTextBm25Score: '<Float>', embeddingVectorDistance: '<Float>', contentTrgmSimilarity: '<Float>', abstractTrgmSimilarity: '<Float>', overviewTrgmSimilarity: '<Float>', embeddingTextTrgmSimilarity: '<Float>', searchScore: '<Float>' }, select: { id: true } }).execute()
db.note.update({ where: { id: '<UUID>' }, data: { entityId: '<UUID>' }, select: { id: true } }).execute()
db.note.delete({ where: { id: '<UUID>' } }).execute()
```

## Examples

### List all note records

```typescript
const items = await db.note.findMany({
  select: { id: true, entityId: true }
}).execute();
```

### Create a note

```typescript
const item = await db.note.create({
  data: { entityId: '<UUID>', content: '<String>', abstract: '<String>', overview: '<String>', activeCount: '<Int>', lastAccessedAt: '<Datetime>', tags: '<String>', embeddingText: '<String>', embedding: '<Vector>', embeddingStale: '<Boolean>', contentBm25Score: '<Float>', embeddingTextBm25Score: '<Float>', embeddingVectorDistance: '<Float>', contentTrgmSimilarity: '<Float>', abstractTrgmSimilarity: '<Float>', overviewTrgmSimilarity: '<Float>', embeddingTextTrgmSimilarity: '<Float>', searchScore: '<Float>' },
  select: { id: true }
}).execute();
```
