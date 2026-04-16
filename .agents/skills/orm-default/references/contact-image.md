# contactImage

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

ORM operations for ContactImage records

## Usage

```typescript
db.contactImage.findMany({ select: { id: true } }).execute()
db.contactImage.findOne({ id: '<UUID>', select: { id: true } }).execute()
db.contactImage.create({ data: { contactId: '<UUID>', imageId: '<UUID>' }, select: { id: true } }).execute()
db.contactImage.update({ where: { id: '<UUID>' }, data: { contactId: '<UUID>' }, select: { id: true } }).execute()
db.contactImage.delete({ where: { id: '<UUID>' } }).execute()
```

## Examples

### List all contactImage records

```typescript
const items = await db.contactImage.findMany({
  select: { id: true, contactId: true }
}).execute();
```

### Create a contactImage

```typescript
const item = await db.contactImage.create({
  data: { contactId: '<UUID>', imageId: '<UUID>' },
  select: { id: true }
}).execute();
```
