# enum

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for Enum records via agentic-db CLI

## Usage

```bash
agentic-db enum list
agentic-db enum get --id <UUID>
agentic-db enum create --databaseId <UUID> --schemaId <UUID> --name <String> [--label <String>] [--description <String>] [--values <String>] [--smartTags <JSON>] [--category <ObjectCategory>] [--module <String>] [--scope <Int>] [--tags <String>]
agentic-db enum update --id <UUID> [--databaseId <UUID>] [--schemaId <UUID>] [--name <String>] [--label <String>] [--description <String>] [--values <String>] [--smartTags <JSON>] [--category <ObjectCategory>] [--module <String>] [--scope <Int>] [--tags <String>]
agentic-db enum delete --id <UUID>
```

## Examples

### List all enum records

```bash
agentic-db enum list
```

### Create a enum

```bash
agentic-db enum create --databaseId <UUID> --schemaId <UUID> --name <String> [--label <String>] [--description <String>] [--values <String>] [--smartTags <JSON>] [--category <ObjectCategory>] [--module <String>] [--scope <Int>] [--tags <String>]
```

### Get a enum by id

```bash
agentic-db enum get --id <value>
```
