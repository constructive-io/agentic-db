# contactCompany

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

ORM operations for ContactCompany records

## Usage

```typescript
db.contactCompany.findMany({ select: { id: true } }).execute()
db.contactCompany.findOne({ id: '<value>', select: { id: true } }).execute()
db.contactCompany.create({ data: { contactId: '<value>', companyId: '<value>', entityId: '<value>' }, select: { id: true } }).execute()
db.contactCompany.update({ where: { id: '<value>' }, data: { contactId: '<new>' }, select: { id: true } }).execute()
db.contactCompany.delete({ where: { id: '<value>' } }).execute()
```

## Examples

### List all contactCompany records

```typescript
const items = await db.contactCompany.findMany({
  select: { id: true, contactId: true }
}).execute();
```

### Create a contactCompany

```typescript
const item = await db.contactCompany.create({
  data: { contactId: 'value', companyId: 'value', entityId: 'value' },
  select: { id: true }
}).execute();
```
