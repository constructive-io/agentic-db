# email

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

ORM operations for Email records

## Usage

```typescript
db.email.findMany({ select: { id: true } }).execute()
db.email.findOne({ id: '<UUID>', select: { id: true } }).execute()
db.email.create({ data: { entityId: '<UUID>', threadId: '<UUID>', providerMessageId: '<String>', fromContactId: '<UUID>', subject: '<String>', bodyText: '<String>', bodyHtml: '<String>', sentAt: '<Datetime>', toRecipients: '<JSON>', ccRecipients: '<JSON>', bccRecipients: '<JSON>', isDraft: '<Boolean>', isRead: '<Boolean>', tags: '<String>', embeddingText: '<String>', searchTsv: '<FullText>', embedding: '<Vector>', embeddingStale: '<Boolean>', emailThreadId: '<UUID>', searchTsvRank: '<Float>', embeddingTextBm25Score: '<Float>', embeddingVectorDistance: '<Float>', providerMessageIdTrgmSimilarity: '<Float>', subjectTrgmSimilarity: '<Float>', bodyTextTrgmSimilarity: '<Float>', bodyHtmlTrgmSimilarity: '<Float>', embeddingTextTrgmSimilarity: '<Float>', searchScore: '<Float>' }, select: { id: true } }).execute()
db.email.update({ where: { id: '<UUID>' }, data: { entityId: '<UUID>' }, select: { id: true } }).execute()
db.email.delete({ where: { id: '<UUID>' } }).execute()
```

## Examples

### List all email records

```typescript
const items = await db.email.findMany({
  select: { id: true, entityId: true }
}).execute();
```

### Create a email

```typescript
const item = await db.email.create({
  data: { entityId: '<UUID>', threadId: '<UUID>', providerMessageId: '<String>', fromContactId: '<UUID>', subject: '<String>', bodyText: '<String>', bodyHtml: '<String>', sentAt: '<Datetime>', toRecipients: '<JSON>', ccRecipients: '<JSON>', bccRecipients: '<JSON>', isDraft: '<Boolean>', isRead: '<Boolean>', tags: '<String>', embeddingText: '<String>', searchTsv: '<FullText>', embedding: '<Vector>', embeddingStale: '<Boolean>', emailThreadId: '<UUID>', searchTsvRank: '<Float>', embeddingTextBm25Score: '<Float>', embeddingVectorDistance: '<Float>', providerMessageIdTrgmSimilarity: '<Float>', subjectTrgmSimilarity: '<Float>', bodyTextTrgmSimilarity: '<Float>', bodyHtmlTrgmSimilarity: '<Float>', embeddingTextTrgmSimilarity: '<Float>', searchScore: '<Float>' },
  select: { id: true }
}).execute();
```
