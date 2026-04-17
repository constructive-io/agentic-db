---
name: crm-companies
description: CRUD and M:N relationships on the CRM `companies` table via the generated ORM.
---

# CRM Companies

Represents an organization / workplace. Like contacts, embedding columns are
maintained by the Postgres trigger → `@agentic-db/worker` pipeline — you only
need to provide `embeddingText` (or a raw `embedding`).

## Imports

```typescript
import { createClient } from '@agentic-db/sdk';

const db = createClient({
  endpoint: process.env.AGENTIC_DB_GRAPHQL_URL!,
  headers: { Authorization: `Bearer ${process.env.AGENTIC_DB_TOKEN!}` },
});
```

## Available fields

| Field | Type | Notes |
|-------|------|-------|
| `name` | string | required on create |
| `domain` | string | canonical website domain |
| `industry` | string | |
| `description` | string | feeds the embedder by default |
| `tags` | string[] | |
| `mainImageId` | uuid | FK to `images` |
| `embeddingText`, `embedding` | string, number[768] | auto-populated by worker |

There is **no** `size` or `logoUrl` column. Use `description` for free-form
details and `mainImageId` for a pre-uploaded logo.

## Create a company

```typescript
const created = await db.company
  .create({
    data: {
      name: 'Acme Co',
      domain: 'acme.com',
      industry: 'Enterprise Software',
      description: 'Industrial platform for high-throughput PostgreSQL.',
      tags: ['enterprise', 'postgres'],
      embeddingText: 'Acme Co — enterprise software, postgres platform',
    },
    select: { id: true, name: true, domain: true },
  })
  .execute();
```

## List / filter companies

```typescript
const recent = await db.company
  .findMany({
    where: { industry: { equalTo: 'Enterprise Software' } },
    orderBy: ['CREATED_AT_DESC'],
    first: 50,
    select: { id: true, name: true, domain: true, industry: true },
  })
  .execute();
```

## Link a contact to a company (M:N)

The junction table `contactCompany` has `contactId` and `companyId` only — no
`entityId` / `role`. Add richer relationship metadata through
`contactRelationship` or a separate `notes` row if needed.

```typescript
await db.contactCompany
  .create({
    data: { contactId: contact.id, companyId: company.id },
    select: { contactId: true, companyId: true },
  })
  .execute();
```

## Walk the relation from a company

```typescript
const withContacts = await db.company
  .findOne({
    id: companyId,
    select: {
      id: true,
      name: true,
      contacts: {
        select: { id: true, firstName: true, lastName: true },
      },
    },
  })
  .execute();
```

## Tested contracts

See `describe('Company CRUD')` and the contact ↔ company junction tests in
[`packages/integration-tests/__tests__/orm.test.ts`](../../packages/integration-tests/__tests__/orm.test.ts).
