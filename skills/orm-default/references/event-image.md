# eventImage

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

ORM operations for EventImage records

## Usage

```typescript
db.eventImage.findMany({ select: { id: true } }).execute()
db.eventImage.findOne({ id: '<value>', select: { id: true } }).execute()
db.eventImage.create({ data: { eventId: '<value>', imageId: '<value>', entityId: '<value>' }, select: { id: true } }).execute()
db.eventImage.update({ where: { id: '<value>' }, data: { eventId: '<new>' }, select: { id: true } }).execute()
db.eventImage.delete({ where: { id: '<value>' } }).execute()
```

## Examples

### List all eventImage records

```typescript
const items = await db.eventImage.findMany({
  select: { id: true, eventId: true }
}).execute();
```

### Create a eventImage

```typescript
const item = await db.eventImage.create({
  data: { eventId: 'value', imageId: 'value', entityId: 'value' },
  select: { id: true }
}).execute();
```
