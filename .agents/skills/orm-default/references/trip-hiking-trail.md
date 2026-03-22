# tripHikingTrail

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

ORM operations for TripHikingTrail records

## Usage

```typescript
db.tripHikingTrail.findMany({ select: { id: true } }).execute()
db.tripHikingTrail.findOne({ id: '<UUID>', select: { id: true } }).execute()
db.tripHikingTrail.create({ data: { tripId: '<UUID>', hikingTrailId: '<UUID>', entityId: '<UUID>' }, select: { id: true } }).execute()
db.tripHikingTrail.update({ where: { id: '<UUID>' }, data: { tripId: '<UUID>' }, select: { id: true } }).execute()
db.tripHikingTrail.delete({ where: { id: '<UUID>' } }).execute()
```

## Examples

### List all tripHikingTrail records

```typescript
const items = await db.tripHikingTrail.findMany({
  select: { id: true, tripId: true }
}).execute();
```

### Create a tripHikingTrail

```typescript
const item = await db.tripHikingTrail.create({
  data: { tripId: '<UUID>', hikingTrailId: '<UUID>', entityId: '<UUID>' },
  select: { id: true }
}).execute();
```
