# viewTable

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for ViewTable records via agentic-db CLI

## Usage

```bash
agentic-db view-table list
agentic-db view-table get --id <UUID>
agentic-db view-table create --viewId <UUID> --tableId <UUID> [--joinOrder <Int>]
agentic-db view-table update --id <UUID> [--viewId <UUID>] [--tableId <UUID>] [--joinOrder <Int>]
agentic-db view-table delete --id <UUID>
```

## Examples

### List all viewTable records

```bash
agentic-db view-table list
```

### Create a viewTable

```bash
agentic-db view-table create --viewId <UUID> --tableId <UUID> [--joinOrder <Int>]
```

### Get a viewTable by id

```bash
agentic-db view-table get --id <value>
```
