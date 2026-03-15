# interaction

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

ORM operations for Interaction records

## Usage

```typescript
db.interaction.findMany({ select: { id: true } }).execute()
db.interaction.findOne({ id: '<value>', select: { id: true } }).execute()
db.interaction.create({ data: { entityId: '<value>', contactId: '<value>', type: '<value>', occurredAt: '<value>', summary: '<value>', sentiment: '<value>', tags: '<value>', embeddingText: '<value>', embedding: '<value>', embeddingTextBm25Score: '<value>', typeTrgmSimilarity: '<value>', summaryTrgmSimilarity: '<value>', sentimentTrgmSimilarity: '<value>', embeddingTextTrgmSimilarity: '<value>', embeddingVectorDistance: '<value>', searchScore: '<value>' }, select: { id: true } }).execute()
db.interaction.update({ where: { id: '<value>' }, data: { entityId: '<new>' }, select: { id: true } }).execute()
db.interaction.delete({ where: { id: '<value>' } }).execute()
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
  data: { entityId: 'value', contactId: 'value', type: 'value', occurredAt: 'value', summary: 'value', sentiment: 'value', tags: 'value', embeddingText: 'value', embedding: 'value', embeddingTextBm25Score: 'value', typeTrgmSimilarity: 'value', summaryTrgmSimilarity: 'value', sentimentTrgmSimilarity: 'value', embeddingTextTrgmSimilarity: 'value', embeddingVectorDistance: 'value', searchScore: 'value' },
  select: { id: true }
}).execute();
```
