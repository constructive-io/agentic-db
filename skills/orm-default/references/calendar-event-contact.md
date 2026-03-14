# calendarEventContact

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

ORM operations for CalendarEventContact records

## Usage

```typescript
db.calendarEventContact.findMany({ select: { id: true } }).execute()
db.calendarEventContact.findOne({ id: '<value>', select: { id: true } }).execute()
db.calendarEventContact.create({ data: { calendarEventId: '<value>', contactId: '<value>', entityId: '<value>' }, select: { id: true } }).execute()
db.calendarEventContact.update({ where: { id: '<value>' }, data: { calendarEventId: '<new>' }, select: { id: true } }).execute()
db.calendarEventContact.delete({ where: { id: '<value>' } }).execute()
```

## Examples

### List all calendarEventContact records

```typescript
const items = await db.calendarEventContact.findMany({
  select: { id: true, calendarEventId: true }
}).execute();
```

### Create a calendarEventContact

```typescript
const item = await db.calendarEventContact.create({
  data: { calendarEventId: 'value', contactId: 'value', entityId: 'value' },
  select: { id: true }
}).execute();
```
