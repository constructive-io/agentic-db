# expenseContact

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

ORM operations for ExpenseContact records

## Usage

```typescript
db.expenseContact.findMany({ select: { id: true } }).execute()
db.expenseContact.findOne({ id: '<value>', select: { id: true } }).execute()
db.expenseContact.create({ data: { expenseId: '<value>', contactId: '<value>', entityId: '<value>' }, select: { id: true } }).execute()
db.expenseContact.update({ where: { id: '<value>' }, data: { expenseId: '<new>' }, select: { id: true } }).execute()
db.expenseContact.delete({ where: { id: '<value>' } }).execute()
```

## Examples

### List all expenseContact records

```typescript
const items = await db.expenseContact.findMany({
  select: { id: true, expenseId: true }
}).execute();
```

### Create a expenseContact

```typescript
const item = await db.expenseContact.create({
  data: { expenseId: 'value', contactId: 'value', entityId: 'value' },
  select: { id: true }
}).execute();
```
