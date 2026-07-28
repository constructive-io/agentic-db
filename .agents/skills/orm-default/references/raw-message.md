# rawMessage

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

ORM operations for RawMessage records

## Usage

```typescript
db.rawMessage.findMany({ select: { id: true } }).execute()
db.rawMessage.findOne({ id: '<UUID>', select: { id: true } }).execute()
db.rawMessage.create({ data: { provider: '<String>', externalId: '<String>', externalThreadId: '<String>', senderHandle: '<String>', senderDisplayName: '<String>', recipients: '<JSON>', subject: '<String>', bodyText: '<String>', sentAt: '<Datetime>', rawData: '<JSON>', triageStatus: '<String>', triageScore: '<BigFloat>', triageNotes: '<String>', labels: '<String>', ingestedAt: '<Datetime>', senderContactId: '<UUID>', promotedEmailId: '<UUID>', promotedConversationId: '<UUID>' }, select: { id: true } }).execute()
db.rawMessage.update({ where: { id: '<UUID>' }, data: { provider: '<String>' }, select: { id: true } }).execute()
db.rawMessage.delete({ where: { id: '<UUID>' } }).execute()
```

## Examples

### List all rawMessage records

```typescript
const items = await db.rawMessage.findMany({
  select: { id: true, provider: true }
}).execute();
```

### Create a rawMessage

```typescript
const item = await db.rawMessage.create({
  data: { provider: '<String>', externalId: '<String>', externalThreadId: '<String>', senderHandle: '<String>', senderDisplayName: '<String>', recipients: '<JSON>', subject: '<String>', bodyText: '<String>', sentAt: '<Datetime>', rawData: '<JSON>', triageStatus: '<String>', triageScore: '<BigFloat>', triageNotes: '<String>', labels: '<String>', ingestedAt: '<Datetime>', senderContactId: '<UUID>', promotedEmailId: '<UUID>', promotedConversationId: '<UUID>' },
  select: { id: true }
}).execute();
```
