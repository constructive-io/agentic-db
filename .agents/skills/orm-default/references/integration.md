# integration

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

ORM operations for Integration records

## Usage

```typescript
db.integration.findMany({ select: { id: true } }).execute()
db.integration.findOne({ id: '<UUID>', select: { id: true } }).execute()
db.integration.create({ data: { entityId: '<UUID>', name: '<String>', provider: '<String>', type: '<String>', credentialsRef: '<String>', config: '<JSON>', status: '<String>', lastSyncedAt: '<Datetime>' }, select: { id: true } }).execute()
db.integration.update({ where: { id: '<UUID>' }, data: { entityId: '<UUID>' }, select: { id: true } }).execute()
db.integration.delete({ where: { id: '<UUID>' } }).execute()
```

## Examples

### List all integration records

```typescript
const items = await db.integration.findMany({
  select: { id: true, entityId: true }
}).execute();
```

### Create a integration

```typescript
const item = await db.integration.create({
  data: { entityId: '<UUID>', name: '<String>', provider: '<String>', type: '<String>', credentialsRef: '<String>', config: '<JSON>', status: '<String>', lastSyncedAt: '<Datetime>' },
  select: { id: true }
}).execute();
```
