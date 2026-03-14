# list

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

ORM operations for List records

## Usage

```typescript
db.list.findMany({ select: { id: true } }).execute()
db.list.findOne({ id: '<value>', select: { id: true } }).execute()
db.list.create({ data: { entityId: '<value>', name: '<value>', description: '<value>', type: '<value>', tags: '<value>', embeddingText: '<value>', embedding: '<value>', embeddingDistance: '<value>' }, select: { id: true } }).execute()
db.list.update({ where: { id: '<value>' }, data: { entityId: '<new>' }, select: { id: true } }).execute()
db.list.delete({ where: { id: '<value>' } }).execute()
```

## Examples

### List all list records

```typescript
const items = await db.list.findMany({
  select: { id: true, entityId: true }
}).execute();
```

### Create a list

```typescript
const item = await db.list.create({
  data: { entityId: 'value', name: 'value', description: 'value', type: 'value', tags: 'value', embeddingText: 'value', embedding: 'value', embeddingDistance: 'value' },
  select: { id: true }
}).execute();
```
