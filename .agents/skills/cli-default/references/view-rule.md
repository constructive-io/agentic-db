# viewRule

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for ViewRule records via agentic-db CLI

## Usage

```bash
agentic-db view-rule list
agentic-db view-rule get --id <UUID>
agentic-db view-rule create --viewId <UUID> --name <String> --event <String> [--databaseId <UUID>] [--action <String>]
agentic-db view-rule update --id <UUID> [--databaseId <UUID>] [--viewId <UUID>] [--name <String>] [--event <String>] [--action <String>]
agentic-db view-rule delete --id <UUID>
```

## Examples

### List all viewRule records

```bash
agentic-db view-rule list
```

### Create a viewRule

```bash
agentic-db view-rule create --viewId <UUID> --name <String> --event <String> [--databaseId <UUID>] [--action <String>]
```

### Get a viewRule by id

```bash
agentic-db view-rule get --id <value>
```
