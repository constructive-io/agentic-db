# GraphileTestAdapter

The `GraphileTestAdapter` bridges the generated ORM client to `graphile-test`'s query function.

## Implementation

File: `__tests__/helpers/graphile-adapter.ts`

```typescript
import type { GraphQLQueryFnObj } from 'graphile-test';
import type {
  GraphQLAdapter,
  GraphQLError,
  QueryResult,
} from '@constructive-io/graphql-types';

export class GraphileTestAdapter implements GraphQLAdapter {
  constructor(private queryFn: GraphQLQueryFnObj) {}

  async execute<T>(
    document: string,
    variables?: Record<string, unknown>,
  ): Promise<QueryResult<T>> {
    const result = await this.queryFn<T>({ query: document, variables });

    if (result.errors && result.errors.length > 0) {
      return {
        ok: false,
        data: null,
        errors: result.errors as unknown as GraphQLError[],
      };
    }

    return {
      ok: true,
      data: result.data as T,
      errors: undefined,
    };
  }
}
```

## How It Works

1. The generated ORM client expects a `GraphQLAdapter` (from `@constructive-io/graphql-types`)
2. The adapter's `execute()` method receives a GraphQL document string and optional variables
3. It forwards these to `graphile-test`'s `query()` function which executes against the live PostGraphile schema
4. Results are wrapped in the `QueryResult<T>` format (`ok`, `data`, `errors`)

## Usage in Tests

```typescript
const connections = await getConnectionsObject({
  schemas: SCHEMAS,
  useRoot: true,
  authRole: 'postgres',
  preset: { extends: [ConstructivePreset] },
}, [seed.sqlfile([sql('schema.sql'), sql('test-data.sql')])]);

const { createClient } = await runCodegenAndLoad(connections.query, 'orm');
const adapter = new GraphileTestAdapter(connections.query);
const orm = createClient({ adapter });
```

## Key Types

| Type | Package | Purpose |
|---|---|---|
| `GraphQLAdapter` | `@constructive-io/graphql-types` | Interface the ORM expects |
| `QueryResult<T>` | `@constructive-io/graphql-types` | Result wrapper with `ok`, `data`, `errors` |
| `GraphQLError` | `@constructive-io/graphql-types` | Error type |
| `GraphQLQueryFnObj` | `graphile-test` | Query function from `getConnectionsObject()` |
