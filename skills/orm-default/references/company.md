# company

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

ORM operations for Company records

## Usage

```typescript
db.company.findMany({ select: { id: true } }).execute()
db.company.findOne({ id: '<value>', select: { id: true } }).execute()
db.company.create({ data: { entityId: '<value>', name: '<value>', domain: '<value>', industry: '<value>', description: '<value>', tags: '<value>', embeddingText: '<value>', embedding: '<value>', searchTsv: '<value>', mainImageId: '<value>', searchTsvRank: '<value>', embeddingTextBm25Score: '<value>', nameTrgmSimilarity: '<value>', domainTrgmSimilarity: '<value>', industryTrgmSimilarity: '<value>', descriptionTrgmSimilarity: '<value>', embeddingTextTrgmSimilarity: '<value>', embeddingVectorDistance: '<value>', searchScore: '<value>' }, select: { id: true } }).execute()
db.company.update({ where: { id: '<value>' }, data: { entityId: '<new>' }, select: { id: true } }).execute()
db.company.delete({ where: { id: '<value>' } }).execute()
```

## Examples

### List all company records

```typescript
const items = await db.company.findMany({
  select: { id: true, entityId: true }
}).execute();
```

### Create a company

```typescript
const item = await db.company.create({
  data: { entityId: 'value', name: 'value', domain: 'value', industry: 'value', description: 'value', tags: 'value', embeddingText: 'value', embedding: 'value', searchTsv: 'value', mainImageId: 'value', searchTsvRank: 'value', embeddingTextBm25Score: 'value', nameTrgmSimilarity: 'value', domainTrgmSimilarity: 'value', industryTrgmSimilarity: 'value', descriptionTrgmSimilarity: 'value', embeddingTextTrgmSimilarity: 'value', embeddingVectorDistance: 'value', searchScore: 'value' },
  select: { id: true }
}).execute();
```
