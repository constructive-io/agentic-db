# expense

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

ORM operations for Expense records

## Usage

```typescript
db.expense.findMany({ select: { id: true } }).execute()
db.expense.findOne({ id: '<UUID>', select: { id: true } }).execute()
db.expense.create({ data: { entityId: '<UUID>', amount: '<BigFloat>', currency: '<String>', date: '<Date>', category: '<String>', description: '<String>', merchant: '<String>', receiptUrl: '<String>', isRecurring: '<Boolean>', tags: '<String>' }, select: { id: true } }).execute()
db.expense.update({ where: { id: '<UUID>' }, data: { entityId: '<UUID>' }, select: { id: true } }).execute()
db.expense.delete({ where: { id: '<UUID>' } }).execute()
```

## Examples

### List all expense records

```typescript
const items = await db.expense.findMany({
  select: { id: true, entityId: true }
}).execute();
```

### Create a expense

```typescript
const item = await db.expense.create({
  data: { entityId: '<UUID>', amount: '<BigFloat>', currency: '<String>', date: '<Date>', category: '<String>', description: '<String>', merchant: '<String>', receiptUrl: '<String>', isRecurring: '<Boolean>', tags: '<String>' },
  select: { id: true }
}).execute();
```
