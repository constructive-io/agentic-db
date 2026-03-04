# venueImage

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

ORM operations for VenueImage records

## Usage

```typescript
db.venueImage.findMany({ select: { id: true } }).execute()
db.venueImage.findOne({ id: '<value>', select: { id: true } }).execute()
db.venueImage.create({ data: { venueId: '<value>', imageId: '<value>', entityId: '<value>' }, select: { id: true } }).execute()
db.venueImage.update({ where: { id: '<value>' }, data: { venueId: '<new>' }, select: { id: true } }).execute()
db.venueImage.delete({ where: { id: '<value>' } }).execute()
```

## Examples

### List all venueImage records

```typescript
const items = await db.venueImage.findMany({
  select: { id: true, venueId: true }
}).execute();
```

### Create a venueImage

```typescript
const item = await db.venueImage.create({
  data: { venueId: 'value', imageId: 'value', entityId: 'value' },
  select: { id: true }
}).execute();
```
