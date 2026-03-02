# orm-repository

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

ORM operations for Repository records

## Usage

```typescript
db.repository.findMany({ select: { id: true } }).execute()
db.repository.findOne({ id: '<value>', select: { id: true } }).execute()
db.repository.create({ data: { entityId: '<value>', name: '<value>', url: '<value>', description: '<value>', defaultBranch: '<value>', lastSyncedAt: '<value>', embedding: '<value>' }, select: { id: true } }).execute()
db.repository.update({ where: { id: '<value>' }, data: { entityId: '<new>' }, select: { id: true } }).execute()
db.repository.delete({ where: { id: '<value>' } }).execute()
```

## Examples

### List all repository records

```typescript
const items = await db.repository.findMany({
  select: { id: true, entityId: true }
}).execute();
```

### Create a repository

```typescript
const item = await db.repository.create({
  data: { entityId: 'value', name: 'value', url: 'value', description: 'value', defaultBranch: 'value', lastSyncedAt: 'value', embedding: 'value' },
  select: { id: true }
}).execute();
```
