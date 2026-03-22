# deal

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

ORM operations for Deal records

## Usage

```typescript
db.deal.findMany({ select: { id: true } }).execute()
db.deal.findOne({ id: '<UUID>', select: { id: true } }).execute()
db.deal.create({ data: { entityId: '<UUID>', name: '<String>', stage: '<String>', value: '<BigFloat>', currency: '<String>', expectedCloseDate: '<Datetime>', notesText: '<String>', tags: '<String>', embeddingText: '<String>', embedding: '<Vector>', embeddingStale: '<Boolean>', embeddingVectorDistance: '<Float>', searchScore: '<Float>' }, select: { id: true } }).execute()
db.deal.update({ where: { id: '<UUID>' }, data: { entityId: '<UUID>' }, select: { id: true } }).execute()
db.deal.delete({ where: { id: '<UUID>' } }).execute()
```

## Examples

### List all deal records

```typescript
const items = await db.deal.findMany({
  select: { id: true, entityId: true }
}).execute();
```

### Create a deal

```typescript
const item = await db.deal.create({
  data: { entityId: '<UUID>', name: '<String>', stage: '<String>', value: '<BigFloat>', currency: '<String>', expectedCloseDate: '<Datetime>', notesText: '<String>', tags: '<String>', embeddingText: '<String>', embedding: '<Vector>', embeddingStale: '<Boolean>', embeddingVectorDistance: '<Float>', searchScore: '<Float>' },
  select: { id: true }
}).execute();
```
