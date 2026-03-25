# orgProfile

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

Named permission bundles (roles) that group multiple permissions into reusable profiles

## Usage

```typescript
db.orgProfile.findMany({ select: { id: true } }).execute()
db.orgProfile.findOne({ id: '<UUID>', select: { id: true } }).execute()
db.orgProfile.create({ data: { name: '<String>', slug: '<String>', description: '<String>', permissions: '<BitString>', isSystem: '<Boolean>', isDefault: '<Boolean>', entityId: '<UUID>' }, select: { id: true } }).execute()
db.orgProfile.update({ where: { id: '<UUID>' }, data: { name: '<String>' }, select: { id: true } }).execute()
db.orgProfile.delete({ where: { id: '<UUID>' } }).execute()
```

## Examples

### List all orgProfile records

```typescript
const items = await db.orgProfile.findMany({
  select: { id: true, name: true }
}).execute();
```

### Create a orgProfile

```typescript
const item = await db.orgProfile.create({
  data: { name: '<String>', slug: '<String>', description: '<String>', permissions: '<BitString>', isSystem: '<Boolean>', isDefault: '<Boolean>', entityId: '<UUID>' },
  select: { id: true }
}).execute();
```
