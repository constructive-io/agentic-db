# eventVenue

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

ORM operations for EventVenue records

## Usage

```typescript
db.eventVenue.findMany({ select: { id: true } }).execute()
db.eventVenue.findOne({ id: '<value>', select: { id: true } }).execute()
db.eventVenue.create({ data: { eventId: '<value>', venueId: '<value>', entityId: '<value>' }, select: { id: true } }).execute()
db.eventVenue.update({ where: { id: '<value>' }, data: { eventId: '<new>' }, select: { id: true } }).execute()
db.eventVenue.delete({ where: { id: '<value>' } }).execute()
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
  data: { eventId: 'value', venueId: 'value', entityId: 'value' },
  select: { id: true }
}).execute();
```
