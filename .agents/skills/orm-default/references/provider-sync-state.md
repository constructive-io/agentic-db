# providerSyncState

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

ORM operations for ProviderSyncState records

## Usage

```typescript
db.providerSyncState.findMany({ select: { id: true } }).execute()
db.providerSyncState.findOne({ id: '<UUID>', select: { id: true } }).execute()
db.providerSyncState.create({ data: { entityId: '<UUID>', provider: '<String>', resourceType: '<String>', syncCursor: '<String>', historyId: '<String>', lastSyncAt: '<Datetime>', status: '<String>' }, select: { id: true } }).execute()
db.providerSyncState.update({ where: { id: '<UUID>' }, data: { entityId: '<UUID>' }, select: { id: true } }).execute()
db.providerSyncState.delete({ where: { id: '<UUID>' } }).execute()
```

## Examples

### List all providerSyncState records

```typescript
const items = await db.providerSyncState.findMany({
  select: { id: true, entityId: true }
}).execute();
```

### Create a providerSyncState

```typescript
const item = await db.providerSyncState.create({
  data: { entityId: '<UUID>', provider: '<String>', resourceType: '<String>', syncCursor: '<String>', historyId: '<String>', lastSyncAt: '<Datetime>', status: '<String>' },
  select: { id: true }
}).execute();
```
