# contactEvent

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

ORM operations for ContactEvent records

## Usage

```typescript
db.contactEvent.findMany({ select: { id: true } }).execute()
db.contactEvent.findOne({ id: '<value>', select: { id: true } }).execute()
db.contactEvent.create({ data: { contactId: '<value>', eventId: '<value>', entityId: '<value>' }, select: { id: true } }).execute()
db.contactEvent.update({ where: { id: '<value>' }, data: { contactId: '<new>' }, select: { id: true } }).execute()
db.contactEvent.delete({ where: { id: '<value>' } }).execute()
```

## Examples

### List all contactEvent records

```typescript
const items = await db.contactEvent.findMany({
  select: { id: true, contactId: true }
}).execute();
```

### Create a contactEvent

```typescript
const item = await db.contactEvent.create({
  data: { contactId: 'value', eventId: 'value', entityId: 'value' },
  select: { id: true }
}).execute();
```
