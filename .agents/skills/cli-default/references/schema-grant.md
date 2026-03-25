# schemaGrant

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for SchemaGrant records via agentic-db CLI

## Usage

```bash
agentic-db schema-grant list
agentic-db schema-grant get --id <UUID>
agentic-db schema-grant create --schemaId <UUID> --granteeName <String> [--databaseId <UUID>]
agentic-db schema-grant update --id <UUID> [--databaseId <UUID>] [--schemaId <UUID>] [--granteeName <String>]
agentic-db schema-grant delete --id <UUID>
```

## Examples

### List all schemaGrant records

```bash
agentic-db schema-grant list
```

### Create a schemaGrant

```bash
agentic-db schema-grant create --schemaId <UUID> --granteeName <String> [--databaseId <UUID>]
```

### Get a schemaGrant by id

```bash
agentic-db schema-grant get --id <value>
```
