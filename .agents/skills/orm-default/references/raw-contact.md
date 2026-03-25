# rawContact

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

ORM operations for RawContact records

## Usage

```typescript
db.rawContact.findMany({ select: { id: true } }).execute()
db.rawContact.findOne({ id: '<UUID>', select: { id: true } }).execute()
db.rawContact.create({ data: { entityId: '<UUID>', externalId: '<String>', source: '<String>', firstName: '<String>', lastName: '<String>', fullName: '<String>', headline: '<String>', bio: '<String>', location: '<String>', company: '<String>', jobTitle: '<String>', rawData: '<JSON>', confidence: '<BigFloat>', ingestedAt: '<Datetime>' }, select: { id: true } }).execute()
db.rawContact.update({ where: { id: '<UUID>' }, data: { entityId: '<UUID>' }, select: { id: true } }).execute()
db.rawContact.delete({ where: { id: '<UUID>' } }).execute()
```

## Examples

### List all rawContact records

```typescript
const items = await db.rawContact.findMany({
  select: { id: true, entityId: true }
}).execute();
```

### Create a rawContact

```typescript
const item = await db.rawContact.create({
  data: { entityId: '<UUID>', externalId: '<String>', source: '<String>', firstName: '<String>', lastName: '<String>', fullName: '<String>', headline: '<String>', bio: '<String>', location: '<String>', company: '<String>', jobTitle: '<String>', rawData: '<JSON>', confidence: '<BigFloat>', ingestedAt: '<Datetime>' },
  select: { id: true }
}).execute();
```
