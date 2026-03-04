# image

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

ORM operations for Image records

## Usage

```typescript
db.image.findMany({ select: { id: true } }).execute()
db.image.findOne({ id: '<value>', select: { id: true } }).execute()
db.image.create({ data: { entityId: '<value>', url: '<value>', meta: '<value>', altText: '<value>', caption: '<value>', embedding: '<value>', embeddingDistance: '<value>' }, select: { id: true } }).execute()
db.image.update({ where: { id: '<value>' }, data: { entityId: '<new>' }, select: { id: true } }).execute()
db.image.delete({ where: { id: '<value>' } }).execute()
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
  data: { entityId: 'value', url: 'value', meta: 'value', altText: 'value', caption: 'value', embedding: 'value', embeddingDistance: 'value' },
  select: { id: true }
}).execute();
```
