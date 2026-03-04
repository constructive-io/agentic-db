# orm-memory

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

ORM operations for Memory records

## Usage

```typescript
db.memory.findMany({ select: { id: true } }).execute()
db.memory.findOne({ id: '<value>', select: { id: true } }).execute()
db.memory.create({ data: { entityId: '<value>', content: '<value>', tags: '<value>', embedding: '<value>', embeddingDistance: '<value>' }, select: { id: true } }).execute()
db.memory.update({ where: { id: '<value>' }, data: { entityId: '<new>' }, select: { id: true } }).execute()
db.memory.delete({ where: { id: '<value>' } }).execute()
```

## Examples

### List all memory records

```typescript
const items = await db.memory.findMany({
  select: { id: true, entityId: true }
}).execute();
```

### Create a memory

```typescript
const item = await db.memory.create({
  data: { entityId: 'value', content: 'value', tags: 'value', embedding: 'value', embeddingDistance: 'value' },
  select: { id: true }
}).execute();
```
