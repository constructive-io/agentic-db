# contactLink

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

ORM operations for ContactLink records

## Usage

```typescript
db.contactLink.findMany({ select: { id: true } }).execute()
db.contactLink.findOne({ id: '<UUID>', select: { id: true } }).execute()
db.contactLink.create({ data: { entityId: '<UUID>', title: '<String>', url: '<String>', embedding: '<Vector>', embeddingStale: '<Boolean>', contactId: '<UUID>', embeddingVectorDistance: '<Float>', searchScore: '<Float>' }, select: { id: true } }).execute()
db.contactLink.update({ where: { id: '<UUID>' }, data: { entityId: '<UUID>' }, select: { id: true } }).execute()
db.contactLink.delete({ where: { id: '<UUID>' } }).execute()
```

## Examples

### List all contactLink records

```typescript
const items = await db.contactLink.findMany({
  select: { id: true, entityId: true }
}).execute();
```

### Create a contactLink

```typescript
const item = await db.contactLink.create({
  data: { entityId: '<UUID>', title: '<String>', url: '<String>', embedding: '<Vector>', embeddingStale: '<Boolean>', contactId: '<UUID>', embeddingVectorDistance: '<Float>', searchScore: '<Float>' },
  select: { id: true }
}).execute();
```
