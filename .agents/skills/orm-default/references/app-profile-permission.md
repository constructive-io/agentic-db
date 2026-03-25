# appProfilePermission

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

Join table linking profiles to individual permissions they include

## Usage

```typescript
db.appProfilePermission.findMany({ select: { id: true } }).execute()
db.appProfilePermission.findOne({ id: '<UUID>', select: { id: true } }).execute()
db.appProfilePermission.create({ data: { profileId: '<UUID>', permissionId: '<UUID>' }, select: { id: true } }).execute()
db.appProfilePermission.update({ where: { id: '<UUID>' }, data: { profileId: '<UUID>' }, select: { id: true } }).execute()
db.appProfilePermission.delete({ where: { id: '<UUID>' } }).execute()
```

## Examples

### List all appProfilePermission records

```typescript
const items = await db.appProfilePermission.findMany({
  select: { id: true, profileId: true }
}).execute();
```

### Create a appProfilePermission

```typescript
const item = await db.appProfilePermission.create({
  data: { profileId: '<UUID>', permissionId: '<UUID>' },
  select: { id: true }
}).execute();
```
