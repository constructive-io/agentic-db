# tableGrant

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for TableGrant records via agentic-db CLI

## Usage

```bash
agentic-db table-grant list
agentic-db table-grant get --id <UUID>
agentic-db table-grant create --tableId <UUID> --privilege <String> --granteeName <String> [--databaseId <UUID>] [--fieldIds <UUID>] [--isGrant <Boolean>]
agentic-db table-grant update --id <UUID> [--databaseId <UUID>] [--tableId <UUID>] [--privilege <String>] [--granteeName <String>] [--fieldIds <UUID>] [--isGrant <Boolean>]
agentic-db table-grant delete --id <UUID>
```

## Examples

### List all tableGrant records

```bash
agentic-db table-grant list
```

### Create a tableGrant

```bash
agentic-db table-grant create --tableId <UUID> --privilege <String> --granteeName <String> [--databaseId <UUID>] [--fieldIds <UUID>] [--isGrant <Boolean>]
```

### Get a tableGrant by id

```bash
agentic-db table-grant get --id <value>
```
