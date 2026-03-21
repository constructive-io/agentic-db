# image

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

ORM operations for Image records

## Usage

```typescript
db.image.findMany({ select: { id: true } }).execute()
db.image.findOne({ id: '<UUID>', select: { id: true } }).execute()
db.image.create({ data: { entityId: '<UUID>', url: '<String>', meta: '<JSON>', altText: '<String>', caption: '<String>', embedding: '<Vector>', embeddingVectorDistance: '<Float>', searchScore: '<Float>' }, select: { id: true } }).execute()
db.image.update({ where: { id: '<UUID>' }, data: { entityId: '<UUID>' }, select: { id: true } }).execute()
db.image.delete({ where: { id: '<UUID>' } }).execute()
```

## Examples

### List all image records

```typescript
const items = await db.image.findMany({
  select: { id: true, entityId: true }
}).execute();
```

### Create a image

```typescript
const item = await db.image.create({
  data: { entityId: '<UUID>', url: '<String>', meta: '<JSON>', altText: '<String>', caption: '<String>', embedding: '<Vector>', embeddingVectorDistance: '<Float>', searchScore: '<Float>' },
  select: { id: true }
}).execute();
```
