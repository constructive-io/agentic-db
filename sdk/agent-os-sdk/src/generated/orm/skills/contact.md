# orm-contact

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

ORM operations for Contact records

## Usage

```typescript
db.contact.findMany({ select: { id: true } }).execute()
db.contact.findOne({ id: '<value>', select: { id: true } }).execute()
db.contact.create({ data: { entityId: '<value>', firstName: '<value>', lastName: '<value>', email: '<value>', phone: '<value>', headline: '<value>', bio: '<value>', location: '<value>', embedding: '<value>' }, select: { id: true } }).execute()
db.contact.update({ where: { id: '<value>' }, data: { entityId: '<new>' }, select: { id: true } }).execute()
db.contact.delete({ where: { id: '<value>' } }).execute()
```

## Examples

### List all contact records

```typescript
const items = await db.contact.findMany({
  select: { id: true, entityId: true }
}).execute();
```

### Create a contact

```typescript
const item = await db.contact.create({
  data: { entityId: 'value', firstName: 'value', lastName: 'value', email: 'value', phone: 'value', headline: 'value', bio: 'value', location: 'value', embedding: 'value' },
  select: { id: true }
}).execute();
```
