# orgProfilePermission

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

Join table linking profiles to individual permissions they include

## Usage

```typescript
db.orgProfilePermission.findMany({ select: { id: true } }).execute()
db.orgProfilePermission.findOne({ id: '<UUID>', select: { id: true } }).execute()
db.orgProfilePermission.create({ data: { profileId: '<UUID>', permissionId: '<UUID>' }, select: { id: true } }).execute()
db.orgProfilePermission.update({ where: { id: '<UUID>' }, data: { profileId: '<UUID>' }, select: { id: true } }).execute()
db.orgProfilePermission.delete({ where: { id: '<UUID>' } }).execute()
```

## Examples

### List all orgProfilePermission records

```typescript
const items = await db.orgProfilePermission.findMany({
  select: { id: true, profileId: true }
}).execute();
```

### Create a orgProfilePermission

```typescript
const item = await db.orgProfilePermission.create({
  data: { profileId: '<UUID>', permissionId: '<UUID>' },
  select: { id: true }
}).execute();
```
