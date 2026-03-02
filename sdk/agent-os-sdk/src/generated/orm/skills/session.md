# orm-session

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

ORM operations for Session records

## Usage

```typescript
db.session.findMany({ select: { id: true } }).execute()
db.session.findOne({ id: '<value>', select: { id: true } }).execute()
db.session.create({ data: { entityId: '<value>', title: '<value>', startedAt: '<value>', endedAt: '<value>', status: '<value>', contextSummary: '<value>', embedding: '<value>' }, select: { id: true } }).execute()
db.session.update({ where: { id: '<value>' }, data: { entityId: '<new>' }, select: { id: true } }).execute()
db.session.delete({ where: { id: '<value>' } }).execute()
```

## Examples

### List all session records

```typescript
const items = await db.session.findMany({
  select: { id: true, entityId: true }
}).execute();
```

### Create a session

```typescript
const item = await db.session.create({
  data: { entityId: 'value', title: 'value', startedAt: 'value', endedAt: 'value', status: 'value', contextSummary: 'value', embedding: 'value' },
  select: { id: true }
}).execute();
```
