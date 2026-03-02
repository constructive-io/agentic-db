# orm-expense

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

ORM operations for Expense records

## Usage

```typescript
db.expense.findMany({ select: { id: true } }).execute()
db.expense.findOne({ id: '<value>', select: { id: true } }).execute()
db.expense.create({ data: { entityId: '<value>', amount: '<value>', currency: '<value>', date: '<value>', category: '<value>', description: '<value>', merchant: '<value>', receiptUrl: '<value>', embedding: '<value>' }, select: { id: true } }).execute()
db.expense.update({ where: { id: '<value>' }, data: { entityId: '<new>' }, select: { id: true } }).execute()
db.expense.delete({ where: { id: '<value>' } }).execute()
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
  data: { entityId: 'value', amount: 'value', currency: 'value', date: 'value', category: 'value', description: 'value', merchant: 'value', receiptUrl: 'value', embedding: 'value' },
  select: { id: true }
}).execute();
```
