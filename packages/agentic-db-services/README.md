# @agentic-db/services

<p align="center" width="100%">
  <img height="250" src="https://raw.githubusercontent.com/constructive-io/constructive/refs/heads/main/assets/outline-logo.svg" />
</p>

<p align="center" width="100%">
  <a href="https://github.com/constructive-io/agentic-db/actions/workflows/integration-test.yml">
    <img height="20" src="https://github.com/constructive-io/agentic-db/actions/workflows/integration-test.yml/badge.svg" />
  </a>
  <a href="https://www.npmjs.com/package/@agentic-db/services"><img height="20" src="https://img.shields.io/npm/v/@agentic-db/services"/></a>
</p>

Services metadata extension for `agentic-db`. This pgpm module registers API endpoints, domains, and site configuration in the Constructive `services` schema so the GraphQL server knows how to route requests.

This module is automatically deployed as a dependency when you deploy `agentic-db` with `--recursive`.

## What It Does

- Registers the `agentic.localhost` API endpoint (app schema)
- Registers the `auth.localhost` API endpoint (auth schema)
- Configures domain routing for the PostGraphile GraphQL server
- Links database schemas to their corresponding API surfaces

## Deploy

This module is typically deployed alongside `agentic-db`:

```bash
# Deploy both modules together (recommended)
pgpm deploy --createdb --database agentic-db --yes --recursive --package agentic-db
```

To deploy this module independently:

```bash
# Standalone deploy (requires agentic-db already deployed)
pgpm deploy --database agentic-db --yes --package agentic-db-services
```

### Module Dependencies

```
agentic-db-services
  requires: plpgsql, metaschema-schema, metaschema-modules, services
```

## Developing

```bash
# Run tests
pnpm test

# Watch mode
pnpm test:watch
```

## Credits

Built by the [Constructive](https://constructive.io) team -- creators of modular Postgres tooling for secure, composable backends. Contribute on [GitHub](https://github.com/constructive-io).

## Disclaimer

AS DESCRIBED IN THE LICENSES, THE SOFTWARE IS PROVIDED "AS IS", AT YOUR OWN RISK, AND WITHOUT WARRANTIES OF ANY KIND.

No developer or entity involved in creating this software will be liable for any claims or damages whatsoever associated with your use, inability to use, or your interaction with other users of the code, including any direct, indirect, incidental, special, exemplary, punitive or consequential damages, or loss of profits, cryptocurrencies, tokens, or anything else of value.
