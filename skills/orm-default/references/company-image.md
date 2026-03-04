# companyImage

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

ORM operations for CompanyImage records

## Usage

```typescript
db.companyImage.findMany({ select: { id: true } }).execute()
db.companyImage.findOne({ id: '<value>', select: { id: true } }).execute()
db.companyImage.create({ data: { companyId: '<value>', imageId: '<value>', entityId: '<value>' }, select: { id: true } }).execute()
db.companyImage.update({ where: { id: '<value>' }, data: { companyId: '<new>' }, select: { id: true } }).execute()
db.companyImage.delete({ where: { id: '<value>' } }).execute()
```

## Examples

### List all companyImage records

```typescript
const items = await db.companyImage.findMany({
  select: { id: true, companyId: true }
}).execute();
```

### Create a companyImage

```typescript
const item = await db.companyImage.create({
  data: { companyId: 'value', imageId: 'value', entityId: 'value' },
  select: { id: true }
}).execute();
```
