# ORM Client

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

## Stack

- Prisma-like ORM client for a GraphQL API (TypeScript)
- 93 models
- All methods return a QueryBuilder; call `.execute()` to run, or `.unwrap()` to throw on error

## Quick Start

```typescript
import { createClient } from './orm';

const db = createClient({
  endpoint: 'https://api.example.com/graphql',
  headers: { Authorization: 'Bearer <token>' },
});
```

## Error Handling

> **CRITICAL:** `.execute()` returns `{ ok, data, errors }` — it does **NOT** throw.
> A bare `try/catch` around `.execute()` will silently swallow errors.

```typescript
// WRONG — errors are silently lost:
try { const r = await db.model.findMany({...}).execute(); } catch (e) { /* never runs */ }

// RIGHT — .execute().unwrap() throws GraphQLRequestError on failure:
const data = await db.model.findMany({...}).execute().unwrap();

// RIGHT — check .ok for control flow:
const result = await db.model.findMany({...}).execute();
if (!result.ok) { console.error(result.errors); return; }
return result.data;
```

Available helpers (chain after `.execute()`):
- `.execute().unwrap()` — throws on error, returns typed data
- `.execute().unwrapOr(default)` — returns default value on error
- `.execute().unwrapOrElse(fn)` — calls callback with errors on failure

## Resources

- **Full API reference:** [README.md](./README.md) — model docs for all 93 tables
- **Schema types:** [types.ts](./types.ts)
- **ORM client:** [orm.ts](./orm.ts)

## Conventions

- Access models via `db.<ModelName>` (e.g. `db.User`)
- CRUD methods: `findMany`, `findOne`, `create`, `update`, `delete`
- Chain `.execute().unwrap()` to run and throw on error, or `.execute()` alone for discriminated union result
- Custom operations via `db.query.<name>` or `db.mutation.<name>`

## Boundaries

All files in this directory are generated. Do not edit manually.
