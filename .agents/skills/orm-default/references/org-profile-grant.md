# orgProfileGrant

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

Audit log of profile assignments and revocations for members

## Usage

```typescript
db.orgProfileGrant.findMany({ select: { id: true } }).execute()
db.orgProfileGrant.findOne({ id: '<UUID>', select: { id: true } }).execute()
db.orgProfileGrant.create({ data: { membershipId: '<UUID>', profileId: '<UUID>', entityId: '<UUID>', grantorId: '<UUID>', isGrant: '<Boolean>' }, select: { id: true } }).execute()
db.orgProfileGrant.update({ where: { id: '<UUID>' }, data: { membershipId: '<UUID>' }, select: { id: true } }).execute()
db.orgProfileGrant.delete({ where: { id: '<UUID>' } }).execute()
```

## Examples

### List all orgProfileGrant records

```typescript
const items = await db.orgProfileGrant.findMany({
  select: { id: true, membershipId: true }
}).execute();
```

### Create a orgProfileGrant

```typescript
const item = await db.orgProfileGrant.create({
  data: { membershipId: '<UUID>', profileId: '<UUID>', entityId: '<UUID>', grantorId: '<UUID>', isGrant: '<Boolean>' },
  select: { id: true }
}).execute();
```
