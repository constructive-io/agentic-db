# venueImage

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

ORM operations for VenueImage records

## Usage

```typescript
db.venueImage.findMany({ select: { id: true } }).execute()
db.venueImage.findOne({ id: '<UUID>', select: { id: true } }).execute()
db.venueImage.create({ data: { venueId: '<UUID>', imageId: '<UUID>' }, select: { id: true } }).execute()
db.venueImage.update({ where: { id: '<UUID>' }, data: { venueId: '<UUID>' }, select: { id: true } }).execute()
db.venueImage.delete({ where: { id: '<UUID>' } }).execute()
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
  data: { venueId: '<UUID>', imageId: '<UUID>' },
  select: { id: true }
}).execute();
```
