# eventVenue

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

ORM operations for EventVenue records

## Usage

```typescript
db.eventVenue.findMany({ select: { id: true } }).execute()
db.eventVenue.findOne({ id: '<UUID>', select: { id: true } }).execute()
db.eventVenue.create({ data: { eventId: '<UUID>', venueId: '<UUID>', entityId: '<UUID>' }, select: { id: true } }).execute()
db.eventVenue.update({ where: { id: '<UUID>' }, data: { eventId: '<UUID>' }, select: { id: true } }).execute()
db.eventVenue.delete({ where: { id: '<UUID>' } }).execute()
```

## Examples

### List all eventVenue records

```typescript
const items = await db.eventVenue.findMany({
  select: { id: true, eventId: true }
}).execute();
```

### Create a eventVenue

```typescript
const item = await db.eventVenue.create({
  data: { eventId: '<UUID>', venueId: '<UUID>', entityId: '<UUID>' },
  select: { id: true }
}).execute();
```
