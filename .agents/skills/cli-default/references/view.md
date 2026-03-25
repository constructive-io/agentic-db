# view

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for View records via agentic-db CLI

## Usage

```bash
agentic-db view list
agentic-db view get --id <UUID>
agentic-db view create --schemaId <UUID> --name <String> --viewType <String> [--databaseId <UUID>] [--tableId <UUID>] [--data <JSON>] [--filterType <String>] [--filterData <JSON>] [--securityInvoker <Boolean>] [--isReadOnly <Boolean>] [--smartTags <JSON>] [--category <ObjectCategory>] [--module <String>] [--scope <Int>] [--tags <String>]
agentic-db view update --id <UUID> [--databaseId <UUID>] [--schemaId <UUID>] [--name <String>] [--tableId <UUID>] [--viewType <String>] [--data <JSON>] [--filterType <String>] [--filterData <JSON>] [--securityInvoker <Boolean>] [--isReadOnly <Boolean>] [--smartTags <JSON>] [--category <ObjectCategory>] [--module <String>] [--scope <Int>] [--tags <String>]
agentic-db view delete --id <UUID>
```

## Examples

### List all view records

```bash
agentic-db view list
```

### Create a view

```bash
agentic-db view create --schemaId <UUID> --name <String> --viewType <String> [--databaseId <UUID>] [--tableId <UUID>] [--data <JSON>] [--filterType <String>] [--filterData <JSON>] [--securityInvoker <Boolean>] [--isReadOnly <Boolean>] [--smartTags <JSON>] [--category <ObjectCategory>] [--module <String>] [--scope <Int>] [--tags <String>]
```

### Get a view by id

```bash
agentic-db view get --id <value>
```
