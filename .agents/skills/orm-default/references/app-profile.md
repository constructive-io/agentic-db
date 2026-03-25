# appProfile

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

Named permission bundles (roles) that group multiple permissions into reusable profiles

## Usage

```typescript
db.appProfile.findMany({ select: { id: true } }).execute()
db.appProfile.findOne({ id: '<UUID>', select: { id: true } }).execute()
db.appProfile.create({ data: { name: '<String>', slug: '<String>', description: '<String>', permissions: '<BitString>', isSystem: '<Boolean>', isDefault: '<Boolean>' }, select: { id: true } }).execute()
db.appProfile.update({ where: { id: '<UUID>' }, data: { name: '<String>' }, select: { id: true } }).execute()
db.appProfile.delete({ where: { id: '<UUID>' } }).execute()
```

## Examples

### List all appProfile records

```typescript
const items = await db.appProfile.findMany({
  select: { id: true, name: true }
}).execute();
```

### Create a appProfile

```typescript
const item = await db.appProfile.create({
  data: { name: '<String>', slug: '<String>', description: '<String>', permissions: '<BitString>', isSystem: '<Boolean>', isDefault: '<Boolean>' },
  select: { id: true }
}).execute();
```
