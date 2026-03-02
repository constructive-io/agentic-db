# orm-dealContact

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

ORM operations for DealContact records

## Usage

```typescript
db.dealContact.findMany({ select: { id: true } }).execute()
db.dealContact.findOne({ id: '<value>', select: { id: true } }).execute()
db.dealContact.create({ data: { dealId: '<value>', contactId: '<value>', entityId: '<value>' }, select: { id: true } }).execute()
db.dealContact.update({ where: { id: '<value>' }, data: { dealId: '<new>' }, select: { id: true } }).execute()
db.dealContact.delete({ where: { id: '<value>' } }).execute()
```

## Examples

### List all dealContact records

```typescript
const items = await db.dealContact.findMany({
  select: { id: true, dealId: true }
}).execute();
```

### Create a dealContact

```typescript
const item = await db.dealContact.create({
  data: { dealId: 'value', contactId: 'value', entityId: 'value' },
  select: { id: true }
}).execute();
```
