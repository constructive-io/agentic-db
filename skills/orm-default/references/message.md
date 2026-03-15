# message

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

ORM operations for Message records

## Usage

```typescript
db.message.findMany({ select: { id: true } }).execute()
db.message.findOne({ id: '<value>', select: { id: true } }).execute()
db.message.create({ data: { entityId: '<value>', emailAccountId: '<value>', threadId: '<value>', remoteId: '<value>', fromAddress: '<value>', toAddresses: '<value>', subject: '<value>', bodyText: '<value>', receivedAt: '<value>', tags: '<value>', embeddingText: '<value>', embedding: '<value>', threadIdTrgmSimilarity: '<value>', remoteIdTrgmSimilarity: '<value>', fromAddressTrgmSimilarity: '<value>', subjectTrgmSimilarity: '<value>', bodyTextTrgmSimilarity: '<value>', embeddingTextTrgmSimilarity: '<value>', embeddingVectorDistance: '<value>', searchScore: '<value>' }, select: { id: true } }).execute()
db.message.update({ where: { id: '<value>' }, data: { entityId: '<new>' }, select: { id: true } }).execute()
db.message.delete({ where: { id: '<value>' } }).execute()
```

## Examples

### List all message records

```typescript
const items = await db.message.findMany({
  select: { id: true, entityId: true }
}).execute();
```

### Create a message

```typescript
const item = await db.message.create({
  data: { entityId: 'value', emailAccountId: 'value', threadId: 'value', remoteId: 'value', fromAddress: 'value', toAddresses: 'value', subject: 'value', bodyText: 'value', receivedAt: 'value', tags: 'value', embeddingText: 'value', embedding: 'value', threadIdTrgmSimilarity: 'value', remoteIdTrgmSimilarity: 'value', fromAddressTrgmSimilarity: 'value', subjectTrgmSimilarity: 'value', bodyTextTrgmSimilarity: 'value', embeddingTextTrgmSimilarity: 'value', embeddingVectorDistance: 'value', searchScore: 'value' },
  select: { id: true }
}).execute();
```
