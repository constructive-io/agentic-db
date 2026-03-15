# thread

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

ORM operations for Thread records

## Usage

```typescript
db.thread.findMany({ select: { id: true } }).execute()
db.thread.findOne({ id: '<value>', select: { id: true } }).execute()
db.thread.create({ data: { entityId: '<value>', title: '<value>', summary: '<value>', status: '<value>', parentThreadId: '<value>', embeddingText: '<value>', embedding: '<value>', titleTrgmSimilarity: '<value>', summaryTrgmSimilarity: '<value>', statusTrgmSimilarity: '<value>', embeddingTextTrgmSimilarity: '<value>', embeddingVectorDistance: '<value>', searchScore: '<value>' }, select: { id: true } }).execute()
db.thread.update({ where: { id: '<value>' }, data: { entityId: '<new>' }, select: { id: true } }).execute()
db.thread.delete({ where: { id: '<value>' } }).execute()
```

## Examples

### List all thread records

```typescript
const items = await db.thread.findMany({
  select: { id: true, entityId: true }
}).execute();
```

### Create a thread

```typescript
const item = await db.thread.create({
  data: { entityId: 'value', title: 'value', summary: 'value', status: 'value', parentThreadId: 'value', embeddingText: 'value', embedding: 'value', titleTrgmSimilarity: 'value', summaryTrgmSimilarity: 'value', statusTrgmSimilarity: 'value', embeddingTextTrgmSimilarity: 'value', embeddingVectorDistance: 'value', searchScore: 'value' },
  select: { id: true }
}).execute();
```
