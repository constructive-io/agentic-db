# venueLink

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

ORM operations for VenueLink records

## Usage

```typescript
db.venueLink.findMany({ select: { id: true } }).execute()
db.venueLink.findOne({ id: '<value>', select: { id: true } }).execute()
db.venueLink.create({ data: { entityId: '<value>', title: '<value>', url: '<value>', embedding: '<value>', venueId: '<value>', embeddingDistance: '<value>' }, select: { id: true } }).execute()
db.venueLink.update({ where: { id: '<value>' }, data: { entityId: '<new>' }, select: { id: true } }).execute()
db.venueLink.delete({ where: { id: '<value>' } }).execute()
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
  data: { entityId: 'value', title: 'value', url: 'value', embedding: 'value', venueId: 'value', embeddingDistance: 'value' },
  select: { id: true }
}).execute();
```
