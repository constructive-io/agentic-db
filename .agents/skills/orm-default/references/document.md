# document

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

ORM operations for Document records

## Usage

```typescript
db.document.findMany({ select: { id: true } }).execute()
db.document.findOne({ id: '<UUID>', select: { id: true } }).execute()
db.document.create({ data: { entityId: '<UUID>', title: '<String>', url: '<String>', content: '<String>', sourceType: '<String>', isRead: '<Boolean>', savedAt: '<Datetime>', parentDocumentId: '<UUID>', abstract: '<String>', overview: '<String>', activeCount: '<Int>', lastAccessedAt: '<Datetime>', tags: '<String>', embeddingText: '<String>', embedding: '<Vector>', searchTsv: '<FullText>', searchTsvRank: '<Float>', contentBm25Score: '<Float>', embeddingTextBm25Score: '<Float>', embeddingVectorDistance: '<Float>', titleTrgmSimilarity: '<Float>', urlTrgmSimilarity: '<Float>', contentTrgmSimilarity: '<Float>', sourceTypeTrgmSimilarity: '<Float>', abstractTrgmSimilarity: '<Float>', overviewTrgmSimilarity: '<Float>', embeddingTextTrgmSimilarity: '<Float>', searchScore: '<Float>' }, select: { id: true } }).execute()
db.document.update({ where: { id: '<UUID>' }, data: { entityId: '<UUID>' }, select: { id: true } }).execute()
db.document.delete({ where: { id: '<UUID>' } }).execute()
```

## Examples

### List all document records

```typescript
const items = await db.document.findMany({
  select: { id: true, entityId: true }
}).execute();
```

### Create a document

```typescript
const item = await db.document.create({
  data: { entityId: '<UUID>', title: '<String>', url: '<String>', content: '<String>', sourceType: '<String>', isRead: '<Boolean>', savedAt: '<Datetime>', parentDocumentId: '<UUID>', abstract: '<String>', overview: '<String>', activeCount: '<Int>', lastAccessedAt: '<Datetime>', tags: '<String>', embeddingText: '<String>', embedding: '<Vector>', searchTsv: '<FullText>', searchTsvRank: '<Float>', contentBm25Score: '<Float>', embeddingTextBm25Score: '<Float>', embeddingVectorDistance: '<Float>', titleTrgmSimilarity: '<Float>', urlTrgmSimilarity: '<Float>', contentTrgmSimilarity: '<Float>', sourceTypeTrgmSimilarity: '<Float>', abstractTrgmSimilarity: '<Float>', overviewTrgmSimilarity: '<Float>', embeddingTextTrgmSimilarity: '<Float>', searchScore: '<Float>' },
  select: { id: true }
}).execute();
```
