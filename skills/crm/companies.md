---
name: crm-companies
description: CRUD operations for CRM companies
---

# CRM Companies

Manage companies/organizations in the CRM.

## Table Schema

| Field | Type | Notes |
|-------|------|-------|
| `id` | uuid | Primary key |
| `entity_id` | uuid | Org scope |
| `name` | text | Company name |
| `domain` | text | Website domain |
| `industry` | text | |
| `size` | text | Employee count range |
| `description` | text | |
| `logo_url` | text | |
| `created_at` | timestamptz | |
| `updated_at` | timestamptz | |

## Insert Company

```typescript
async function insertCompany(db, data: {
  entityId: string;
  name: string;
  domain?: string;
  industry?: string;
}) {
  return db.company.create({
    data,
    select: { id: true, name: true },
  }).execute();
}
```

## List Companies

```typescript
async function listCompanies(db, entityId: string, limit = 50) {
  return db.company.findMany({
    where: { entityId: { equalTo: entityId } },
    first: limit,
    orderBy: [{ name: 'ASC' }],
    select: { id: true, name: true, domain: true, industry: true },
  }).execute();
}
```

## Link Contact to Company

```typescript
async function linkContactToCompany(db, data: {
  entityId: string;
  contactId: string;
  companyId: string;
  role?: string;
}) {
  return db.contactCompany.create({
    data: {
      entityId: data.entityId,
      contactId: data.contactId,
      companyId: data.companyId,
    },
    select: { contactId: true, companyId: true },
  }).execute();
}
```
