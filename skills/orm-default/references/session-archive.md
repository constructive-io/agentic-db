# sessionArchive

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

ORM operations for SessionArchive records

## Usage

```typescript
db.sessionArchive.findMany({ select: { id: true } }).execute()
db.sessionArchive.findOne({ id: '<value>', select: { id: true } }).execute()
db.sessionArchive.create({ data: { entityId: '<value>', sessionId: '<value>', archiveIndex: '<value>', summary: '<value>', messageRangeStart: '<value>', messageRangeEnd: '<value>', rawMessages: '<value>', embeddingText: '<value>', embedding: '<value>', summaryTrgmSimilarity: '<value>', embeddingTextTrgmSimilarity: '<value>', embeddingVectorDistance: '<value>', searchScore: '<value>' }, select: { id: true } }).execute()
db.sessionArchive.update({ where: { id: '<value>' }, data: { entityId: '<new>' }, select: { id: true } }).execute()
db.sessionArchive.delete({ where: { id: '<value>' } }).execute()
```

## Examples

### List all sessionArchive records

```typescript
const items = await db.sessionArchive.findMany({
  select: { id: true, entityId: true }
}).execute();
```

### Create a sessionArchive

```typescript
const item = await db.sessionArchive.create({
  data: { entityId: 'value', sessionId: 'value', archiveIndex: 'value', summary: 'value', messageRangeStart: 'value', messageRangeEnd: 'value', rawMessages: 'value', embeddingText: 'value', embedding: 'value', summaryTrgmSimilarity: 'value', embeddingTextTrgmSimilarity: 'value', embeddingVectorDistance: 'value', searchScore: 'value' },
  select: { id: true }
}).execute();
```
