# trigger

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for Trigger records via agentic-db CLI

## Usage

```bash
agentic-db trigger list
agentic-db trigger get --id <UUID>
agentic-db trigger create --tableId <UUID> --name <String> [--databaseId <UUID>] [--event <String>] [--functionName <String>] [--smartTags <JSON>] [--category <ObjectCategory>] [--module <String>] [--scope <Int>] [--tags <String>]
agentic-db trigger update --id <UUID> [--databaseId <UUID>] [--tableId <UUID>] [--name <String>] [--event <String>] [--functionName <String>] [--smartTags <JSON>] [--category <ObjectCategory>] [--module <String>] [--scope <Int>] [--tags <String>]
agentic-db trigger delete --id <UUID>
```

## Examples

### List all trigger records

```bash
agentic-db trigger list
```

### Create a trigger

```bash
agentic-db trigger create --tableId <UUID> --name <String> [--databaseId <UUID>] [--event <String>] [--functionName <String>] [--smartTags <JSON>] [--category <ObjectCategory>] [--module <String>] [--scope <Int>] [--tags <String>]
```

### Get a trigger by id

```bash
agentic-db trigger get --id <value>
```
