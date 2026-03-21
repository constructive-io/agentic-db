# message

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

ORM operations for Message records

## Usage

```typescript
db.message.findMany({ select: { id: true } }).execute()
db.message.findOne({ id: '<UUID>', select: { id: true } }).execute()
db.message.create({ data: { entityId: '<UUID>', emailAccountId: '<UUID>', threadId: '<String>', remoteId: '<String>', fromAddress: '<String>', toAddresses: '<String>', subject: '<String>', bodyText: '<String>', receivedAt: '<Datetime>', tags: '<String>', embeddingText: '<String>', embedding: '<Vector>', bodyTextBm25Score: '<Float>', embeddingTextBm25Score: '<Float>', embeddingVectorDistance: '<Float>', threadIdTrgmSimilarity: '<Float>', remoteIdTrgmSimilarity: '<Float>', fromAddressTrgmSimilarity: '<Float>', subjectTrgmSimilarity: '<Float>', bodyTextTrgmSimilarity: '<Float>', embeddingTextTrgmSimilarity: '<Float>', searchScore: '<Float>' }, select: { id: true } }).execute()
db.message.update({ where: { id: '<UUID>' }, data: { entityId: '<UUID>' }, select: { id: true } }).execute()
db.message.delete({ where: { id: '<UUID>' } }).execute()
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
  data: { entityId: '<UUID>', emailAccountId: '<UUID>', threadId: '<String>', remoteId: '<String>', fromAddress: '<String>', toAddresses: '<String>', subject: '<String>', bodyText: '<String>', receivedAt: '<Datetime>', tags: '<String>', embeddingText: '<String>', embedding: '<Vector>', bodyTextBm25Score: '<Float>', embeddingTextBm25Score: '<Float>', embeddingVectorDistance: '<Float>', threadIdTrgmSimilarity: '<Float>', remoteIdTrgmSimilarity: '<Float>', fromAddressTrgmSimilarity: '<Float>', subjectTrgmSimilarity: '<Float>', bodyTextTrgmSimilarity: '<Float>', embeddingTextTrgmSimilarity: '<Float>', searchScore: '<Float>' },
  select: { id: true }
}).execute();
```
