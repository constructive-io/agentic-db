# integration

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

ORM operations for Integration records

## Usage

```typescript
db.integration.findMany({ select: { id: true } }).execute()
db.integration.findOne({ id: '<value>', select: { id: true } }).execute()
db.integration.create({ data: { entityId: '<value>', name: '<value>', provider: '<value>', type: '<value>', credentialsRef: '<value>', config: '<value>', status: '<value>', lastSyncedAt: '<value>' }, select: { id: true } }).execute()
db.integration.update({ where: { id: '<value>' }, data: { entityId: '<new>' }, select: { id: true } }).execute()
db.integration.delete({ where: { id: '<value>' } }).execute()
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
  data: { entityId: 'value', name: 'value', provider: 'value', type: 'value', credentialsRef: 'value', config: 'value', status: 'value', lastSyncedAt: 'value' },
  select: { id: true }
}).execute();
```
