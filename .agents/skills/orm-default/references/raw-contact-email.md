# rawContactEmail

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

ORM operations for RawContactEmail records

## Usage

```typescript
db.rawContactEmail.findMany({ select: { id: true } }).execute()
db.rawContactEmail.findOne({ id: '<UUID>', select: { id: true } }).execute()
db.rawContactEmail.create({ data: { entityId: '<UUID>', email: '<String>', emailType: '<String>', isPrimary: '<Boolean>', source: '<String>', confidence: '<BigFloat>', rawContactId: '<UUID>' }, select: { id: true } }).execute()
db.rawContactEmail.update({ where: { id: '<UUID>' }, data: { entityId: '<UUID>' }, select: { id: true } }).execute()
db.rawContactEmail.delete({ where: { id: '<UUID>' } }).execute()
```

## Examples

### List all rawContactEmail records

```typescript
const items = await db.rawContactEmail.findMany({
  select: { id: true, entityId: true }
}).execute();
```

### Create a rawContactEmail

```typescript
const item = await db.rawContactEmail.create({
  data: { entityId: '<UUID>', email: '<String>', emailType: '<String>', isPrimary: '<Boolean>', source: '<String>', confidence: '<BigFloat>', rawContactId: '<UUID>' },
  select: { id: true }
}).execute();
```
