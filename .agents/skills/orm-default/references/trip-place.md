# tripPlace

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

ORM operations for TripPlace records

## Usage

```typescript
db.tripPlace.findMany({ select: { id: true } }).execute()
db.tripPlace.findOne({ id: '<UUID>', select: { id: true } }).execute()
db.tripPlace.create({ data: { tripId: '<UUID>', placeId: '<UUID>', entityId: '<UUID>' }, select: { id: true } }).execute()
db.tripPlace.update({ where: { id: '<UUID>' }, data: { tripId: '<UUID>' }, select: { id: true } }).execute()
db.tripPlace.delete({ where: { id: '<UUID>' } }).execute()
```

## Examples

### List all tripPlace records

```typescript
const items = await db.tripPlace.findMany({
  select: { id: true, tripId: true }
}).execute();
```

### Create a tripPlace

```typescript
const item = await db.tripPlace.create({
  data: { tripId: '<UUID>', placeId: '<UUID>', entityId: '<UUID>' },
  select: { id: true }
}).execute();
```
