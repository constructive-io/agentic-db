# ORM Client

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

## Stack

- Prisma-like ORM client for a GraphQL API (TypeScript)
- 118 models
- All methods return a query builder; call `.execute()` to run

## Quick Start

```typescript
import { createClient } from './orm';

const db = createClient({
  endpoint: 'https://api.example.com/graphql',
  headers: { Authorization: 'Bearer <token>' },
});
```

## Resources

- **Full API reference:** [README.md](./README.md) — model docs for all 118 tables
- **Schema types:** [types.ts](./types.ts)
- **ORM client:** [orm.ts](./orm.ts)

## Conventions

- Access models via `db.<ModelName>` (e.g. `db.User`)
- CRUD methods: `findMany`, `findOne`, `create`, `update`, `delete`
- Always call `.execute()` to run the query
- Custom operations via `db.query.<name>` or `db.mutation.<name>`

## Boundaries

All files in this directory are generated. Do not edit manually.
