# emailAttachment

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

ORM operations for EmailAttachment records

## Usage

```typescript
db.emailAttachment.findMany({ select: { id: true } }).execute()
db.emailAttachment.findOne({ id: '<UUID>', select: { id: true } }).execute()
db.emailAttachment.create({ data: { entityId: '<UUID>', filename: '<String>', contentType: '<String>', sizeBytes: '<Int>', storageUrl: '<String>', providerAttachmentId: '<String>', emailId: '<UUID>' }, select: { id: true } }).execute()
db.emailAttachment.update({ where: { id: '<UUID>' }, data: { entityId: '<UUID>' }, select: { id: true } }).execute()
db.emailAttachment.delete({ where: { id: '<UUID>' } }).execute()
```

## Examples

### List all emailAttachment records

```typescript
const items = await db.emailAttachment.findMany({
  select: { id: true, entityId: true }
}).execute();
```

### Create a emailAttachment

```typescript
const item = await db.emailAttachment.create({
  data: { entityId: '<UUID>', filename: '<String>', contentType: '<String>', sizeBytes: '<Int>', storageUrl: '<String>', providerAttachmentId: '<String>', emailId: '<UUID>' },
  select: { id: true }
}).execute();
```
