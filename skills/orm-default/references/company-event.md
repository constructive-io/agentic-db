# companyEvent

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

ORM operations for CompanyEvent records

## Usage

```typescript
db.companyEvent.findMany({ select: { id: true } }).execute()
db.companyEvent.findOne({ id: '<value>', select: { id: true } }).execute()
db.companyEvent.create({ data: { companyId: '<value>', eventId: '<value>', entityId: '<value>' }, select: { id: true } }).execute()
db.companyEvent.update({ where: { id: '<value>' }, data: { companyId: '<new>' }, select: { id: true } }).execute()
db.companyEvent.delete({ where: { id: '<value>' } }).execute()
```

## Examples

### List all companyEvent records

```typescript
const items = await db.companyEvent.findMany({
  select: { id: true, companyId: true }
}).execute();
```

### Create a companyEvent

```typescript
const item = await db.companyEvent.create({
  data: { companyId: 'value', eventId: 'value', entityId: 'value' },
  select: { id: true }
}).execute();
```
