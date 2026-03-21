# venueLink

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

ORM operations for VenueLink records

## Usage

```typescript
db.venueLink.findMany({ select: { id: true } }).execute()
db.venueLink.findOne({ id: '<UUID>', select: { id: true } }).execute()
db.venueLink.create({ data: { entityId: '<UUID>', title: '<String>', url: '<String>', embedding: '<Vector>', venueId: '<UUID>', embeddingVectorDistance: '<Float>', searchScore: '<Float>' }, select: { id: true } }).execute()
db.venueLink.update({ where: { id: '<UUID>' }, data: { entityId: '<UUID>' }, select: { id: true } }).execute()
db.venueLink.delete({ where: { id: '<UUID>' } }).execute()
```

## Examples

### List all venueLink records

```typescript
const items = await db.venueLink.findMany({
  select: { id: true, entityId: true }
}).execute();
```

### Create a venueLink

```typescript
const item = await db.venueLink.create({
  data: { entityId: '<UUID>', title: '<String>', url: '<String>', embedding: '<Vector>', venueId: '<UUID>', embeddingVectorDistance: '<Float>', searchScore: '<Float>' },
  select: { id: true }
}).execute();
```
