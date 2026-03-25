# rawContactUrl

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

ORM operations for RawContactUrl records

## Usage

```typescript
db.rawContactUrl.findMany({ select: { id: true } }).execute()
db.rawContactUrl.findOne({ id: '<UUID>', select: { id: true } }).execute()
db.rawContactUrl.create({ data: { entityId: '<UUID>', url: '<String>', urlType: '<String>', source: '<String>', confidence: '<BigFloat>', rawContactId: '<UUID>' }, select: { id: true } }).execute()
db.rawContactUrl.update({ where: { id: '<UUID>' }, data: { entityId: '<UUID>' }, select: { id: true } }).execute()
db.rawContactUrl.delete({ where: { id: '<UUID>' } }).execute()
```

## Examples

### List all rawContactUrl records

```typescript
const items = await db.rawContactUrl.findMany({
  select: { id: true, entityId: true }
}).execute();
```

### Create a rawContactUrl

```typescript
const item = await db.rawContactUrl.create({
  data: { entityId: '<UUID>', url: '<String>', urlType: '<String>', source: '<String>', confidence: '<BigFloat>', rawContactId: '<UUID>' },
  select: { id: true }
}).execute();
```
