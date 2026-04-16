# emailRecipient

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

ORM operations for EmailRecipient records

## Usage

```typescript
db.emailRecipient.findMany({ select: { id: true } }).execute()
db.emailRecipient.findOne({ id: '<UUID>', select: { id: true } }).execute()
db.emailRecipient.create({ data: { emailId: '<UUID>', contactId: '<UUID>' }, select: { id: true } }).execute()
db.emailRecipient.update({ where: { id: '<UUID>' }, data: { emailId: '<UUID>' }, select: { id: true } }).execute()
db.emailRecipient.delete({ where: { id: '<UUID>' } }).execute()
```

## Examples

### List all emailRecipient records

```typescript
const items = await db.emailRecipient.findMany({
  select: { id: true, emailId: true }
}).execute();
```

### Create a emailRecipient

```typescript
const item = await db.emailRecipient.create({
  data: { emailId: '<UUID>', contactId: '<UUID>' },
  select: { id: true }
}).execute();
```
