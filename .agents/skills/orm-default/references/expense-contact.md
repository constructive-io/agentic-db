# expenseContact

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

ORM operations for ExpenseContact records

## Usage

```typescript
db.expenseContact.findMany({ select: { id: true } }).execute()
db.expenseContact.findOne({ id: '<UUID>', select: { id: true } }).execute()
db.expenseContact.create({ data: { expenseId: '<UUID>', contactId: '<UUID>', entityId: '<UUID>' }, select: { id: true } }).execute()
db.expenseContact.update({ where: { id: '<UUID>' }, data: { expenseId: '<UUID>' }, select: { id: true } }).execute()
db.expenseContact.delete({ where: { id: '<UUID>' } }).execute()
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
  data: { expenseId: '<UUID>', contactId: '<UUID>', entityId: '<UUID>' },
  select: { id: true }
}).execute();
```
