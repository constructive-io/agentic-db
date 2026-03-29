# venuesChunk

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

ORM operations for VenuesChunk records

## Usage

```typescript
db.venuesChunk.findMany({ select: { id: true } }).execute()
db.venuesChunk.findOne({ id: '<UUID>', select: { id: true } }).execute()
db.venuesChunk.create({ data: { entityId: '<UUID>', venuesId: '<UUID>', content: '<String>', chunkIndex: '<Int>', embedding: '<Vector>', metadata: '<JSON>', venueId: '<UUID>', embeddingVectorDistance: '<Float>', searchScore: '<Float>' }, select: { id: true } }).execute()
db.venuesChunk.update({ where: { id: '<UUID>' }, data: { entityId: '<UUID>' }, select: { id: true } }).execute()
db.venuesChunk.delete({ where: { id: '<UUID>' } }).execute()
```

## Examples

### List all venuesChunk records

```typescript
const items = await db.venuesChunk.findMany({
  select: { id: true, entityId: true }
}).execute();
```

### Create a venuesChunk

```typescript
const item = await db.venuesChunk.create({
  data: { entityId: '<UUID>', venuesId: '<UUID>', content: '<String>', chunkIndex: '<Int>', embedding: '<Vector>', metadata: '<JSON>', venueId: '<UUID>', embeddingVectorDistance: '<Float>', searchScore: '<Float>' },
  select: { id: true }
}).execute();
```
