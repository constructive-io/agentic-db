# viewGrant

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for ViewGrant records via agentic-db CLI

## Usage

```bash
agentic-db view-grant list
agentic-db view-grant get --id <UUID>
agentic-db view-grant create --viewId <UUID> --granteeName <String> --privilege <String> [--databaseId <UUID>] [--withGrantOption <Boolean>] [--isGrant <Boolean>]
agentic-db view-grant update --id <UUID> [--databaseId <UUID>] [--viewId <UUID>] [--granteeName <String>] [--privilege <String>] [--withGrantOption <Boolean>] [--isGrant <Boolean>]
agentic-db view-grant delete --id <UUID>
```

## Examples

### List all viewGrant records

```bash
agentic-db view-grant list
```

### Create a viewGrant

```bash
agentic-db view-grant create --viewId <UUID> --granteeName <String> --privilege <String> [--databaseId <UUID>] [--withGrantOption <Boolean>] [--isGrant <Boolean>]
```

### Get a viewGrant by id

```bash
agentic-db view-grant get --id <value>
```
