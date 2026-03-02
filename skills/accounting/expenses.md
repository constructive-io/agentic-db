---
name: accounting-expenses
description: CRUD operations for expense tracking
---

# Accounting Expenses

Track business expenses with categorization.

## Table Schema

| Field | Type | Notes |
|-------|------|-------|
| `id` | uuid | Primary key |
| `description` | text | Expense description |
| `amount` | numeric | Amount (null if pending) |
| `currency` | text | Default 'USD' |
| `category` | enum | food, coffee, drinks, transport, accommodation, entertainment, software, hardware, office, marketing, health, misc |
| `merchant` | text | |
| `tags` | text[] | |
| `occurred_at` | date | When expense occurred |
| `payment_method` | text | |
| `is_business` | bool | |
| `receipt_url` | text | |
| `notes` | text | |
| `created_at` | timestamptz | |
| `updated_at` | timestamptz | |

## Insert Expense

```typescript
async function insertExpense(db, data: {
  description: string;
  amount?: number;
  category: string;
  occurredAt: Date;
  isBusiness?: boolean;
  notes?: string;
}) {
  return db.expense.create({
    data: {
      description: data.description,
      amount: data.amount,
      category: data.category,
      occurredAt: data.occurredAt.toISOString().split('T')[0],
      isBusiness: data.isBusiness ?? true,
      notes: data.notes,
    },
    select: { id: true, description: true },
  }).execute();
}
```

## List Expenses by Date Range

```typescript
async function listExpenses(db, startDate: Date, endDate: Date) {
  return db.expense.findMany({
    where: {
      occurredAt: {
        greaterThanOrEqualTo: startDate.toISOString().split('T')[0],
        lessThanOrEqualTo: endDate.toISOString().split('T')[0],
      },
    },
    orderBy: [{ occurredAt: 'DESC' }],
    select: {
      id: true,
      description: true,
      amount: true,
      category: true,
      occurredAt: true,
      isBusiness: true,
    },
  }).execute();
}
```

## Categories

Valid expense categories:
- `food` — Meals
- `coffee` — Coffee/drinks
- `transport` — Transportation
- `accommodation` — Hotels, lodging
- `software` — Subscriptions, licenses
- `hardware` — Equipment
- `office` — Office supplies
- `misc` — Other
