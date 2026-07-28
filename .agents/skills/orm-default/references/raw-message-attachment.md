# rawMessageAttachment

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

ORM operations for RawMessageAttachment records

## Usage

```typescript
db.rawMessageAttachment.findMany({ select: { id: true } }).execute()
db.rawMessageAttachment.findOne({ id: '<UUID>', select: { id: true } }).execute()
db.rawMessageAttachment.create({ data: { filename: '<String>', contentType: '<String>', sizeBytes: '<Int>', storageUrl: '<String>', providerAttachmentId: '<String>', rawMessageId: '<UUID>' }, select: { id: true } }).execute()
db.rawMessageAttachment.update({ where: { id: '<UUID>' }, data: { filename: '<String>' }, select: { id: true } }).execute()
db.rawMessageAttachment.delete({ where: { id: '<UUID>' } }).execute()
```

## Examples

### List all rawMessageAttachment records

```typescript
const items = await db.rawMessageAttachment.findMany({
  select: { id: true, filename: true }
}).execute();
```

### Create a rawMessageAttachment

```typescript
const item = await db.rawMessageAttachment.create({
  data: { filename: '<String>', contentType: '<String>', sizeBytes: '<Int>', storageUrl: '<String>', providerAttachmentId: '<String>', rawMessageId: '<UUID>' },
  select: { id: true }
}).execute();
```
