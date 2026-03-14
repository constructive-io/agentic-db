# projectContact

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

ORM operations for ProjectContact records

## Usage

```typescript
db.projectContact.findMany({ select: { id: true } }).execute()
db.projectContact.findOne({ id: '<value>', select: { id: true } }).execute()
db.projectContact.create({ data: { projectId: '<value>', contactId: '<value>', entityId: '<value>' }, select: { id: true } }).execute()
db.projectContact.update({ where: { id: '<value>' }, data: { projectId: '<new>' }, select: { id: true } }).execute()
db.projectContact.delete({ where: { id: '<value>' } }).execute()
```

## Examples

### List all projectContact records

```typescript
const items = await db.projectContact.findMany({
  select: { id: true, projectId: true }
}).execute();
```

### Create a projectContact

```typescript
const item = await db.projectContact.create({
  data: { projectId: 'value', contactId: 'value', entityId: 'value' },
  select: { id: true }
}).execute();
```
