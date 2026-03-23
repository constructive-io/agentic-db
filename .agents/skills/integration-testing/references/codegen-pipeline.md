# Codegen Pipeline

The ORM tests use a **runtime codegen pipeline** that generates a TypeScript ORM client from a live PostGraphile schema at test time. This is the same pattern used in `constructive-io/constructive/graphql/orm-test`.

## Pipeline Steps

The `runCodegenAndLoad()` function in `__tests__/helpers/codegen-helper.ts` executes:

### 1. Introspection

Runs `SCHEMA_INTROSPECTION_QUERY` (from `@constructive-io/graphql-query`) against the live graphile-test schema to get the full GraphQL introspection result.

```typescript
const introspectionResult = await query<{ __schema: any }>({
  query: SCHEMA_INTROSPECTION_QUERY,
});
```

### 2. Table Inference

Uses `inferTablesFromIntrospection()` to extract table metadata (names, fields, types, relations) from the introspection result.

```typescript
const tables = inferTablesFromIntrospection(introspection);
```

### 3. Type Registry

Uses `transformSchemaToOperations()` to build a type registry for input type generation.

```typescript
const { typeRegistry } = transformSchemaToOperations(introspection);
```

### 4. ORM Generation

Calls `generateOrm()` from `@constructive-io/graphql-codegen` to produce TypeScript files for all table models.

```typescript
const ormResult = generateOrm({
  tables,
  customOperations: { queries: [], mutations: [], typeRegistry },
  config: {
    codegen: { comments: true, condition: true },
  },
});
```

**Note:** `generateOrm` is not re-exported from the public barrel. It must be resolved via the dist path:

```typescript
const codegenRoot = path.dirname(
  require.resolve('@constructive-io/graphql-codegen'),
);
const { generateOrm } = require(
  path.join(codegenRoot, 'core/codegen/orm/index.js'),
);
```

### 5. Write + Compile

Generated TypeScript files are written to `__generated__/<name>/`, then compiled to JavaScript using `ts.transpileModule()`.

### 6. Load

The compiled `index.js` is loaded via `require()` to get the `createClient` factory.

## Output

The pipeline produces a `createClient` function that, when called with an adapter, returns an ORM client with typed models:

```typescript
const adapter = new GraphileTestAdapter(query);
const orm = createClient({ adapter });

// orm.contact.findMany(...)
// orm.note.create(...)
// orm.agent.findMany(...)
```

## Generated Directory

Output goes to `__generated__/orm/` (or whatever name is passed). This directory is:
- **Gitignored** via `__generated__/` in `.gitignore`
- **Cleaned** before each test run (deleted and recreated)
- **Cached** cleared from `require.cache` before loading

## Key Libraries

| Library | Import | Purpose |
|---|---|---|
| `@constructive-io/graphql-query` | `SCHEMA_INTROSPECTION_QUERY`, `inferTablesFromIntrospection`, `transformSchemaToOperations` | Introspection + table inference |
| `@constructive-io/graphql-codegen` | `generateOrm` (via dist path) | ORM TypeScript generation |
| `typescript` | `ts.transpileModule` | Compile generated TS to JS |
