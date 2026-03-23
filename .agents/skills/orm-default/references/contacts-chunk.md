# contactsChunk

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

ORM operations for ContactsChunk records

## Usage

```typescript
db.contactsChunk.findMany({ select: { id: true } }).execute()
db.contactsChunk.findOne({ id: '<UUID>', select: { id: true } }).execute()
db.contactsChunk.create({ data: { contactsId: '<UUID>', content: '<String>', chunkIndex: '<Int>', embedding: '<Vector>', metadata: '<JSON>', embeddingVectorDistance: '<Float>', searchScore: '<Float>' }, select: { id: true } }).execute()
db.contactsChunk.update({ where: { id: '<UUID>' }, data: { contactsId: '<UUID>' }, select: { id: true } }).execute()
db.contactsChunk.delete({ where: { id: '<UUID>' } }).execute()
```

## Examples

### List all contactsChunk records

```typescript
const items = await db.contactsChunk.findMany({
  select: { id: true, contactsId: true }
}).execute();
```

### Create a contactsChunk

```typescript
const item = await db.contactsChunk.create({
  data: { contactsId: '<UUID>', content: '<String>', chunkIndex: '<Int>', embedding: '<Vector>', metadata: '<JSON>', embeddingVectorDistance: '<Float>', searchScore: '<Float>' },
  select: { id: true }
}).execute();
```
