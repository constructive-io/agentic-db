# rawContact

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

ORM operations for RawContact records

## Usage

```typescript
db.rawContact.findMany({ select: { id: true } }).execute()
db.rawContact.findOne({ id: '<UUID>', select: { id: true } }).execute()
db.rawContact.create({ data: { entityId: '<UUID>', externalId: '<String>', source: '<String>', firstName: '<String>', lastName: '<String>', email: '<String>', phone: '<String>', company: '<String>', title: '<String>', location: '<String>', linkedinUrl: '<String>', twitterHandle: '<String>', website: '<String>', confidence: '<BigFloat>', rawData: '<JSON>', ingestedAt: '<Datetime>' }, select: { id: true } }).execute()
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
  data: { entityId: '<UUID>', externalId: '<String>', source: '<String>', firstName: '<String>', lastName: '<String>', email: '<String>', phone: '<String>', company: '<String>', title: '<String>', location: '<String>', linkedinUrl: '<String>', twitterHandle: '<String>', website: '<String>', confidence: '<BigFloat>', rawData: '<JSON>', ingestedAt: '<Datetime>' },
  select: { id: true }
}).execute();
```
