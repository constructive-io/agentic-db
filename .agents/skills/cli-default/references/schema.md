# schema

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for Schema records via agentic-db CLI

## Usage

```bash
agentic-db schema list
agentic-db schema get --id <UUID>
agentic-db schema create --databaseId <UUID> --name <String> --schemaName <String> [--label <String>] [--description <String>] [--smartTags <JSON>] [--category <ObjectCategory>] [--module <String>] [--scope <Int>] [--tags <String>] [--isPublic <Boolean>]
agentic-db schema update --id <UUID> [--databaseId <UUID>] [--name <String>] [--schemaName <String>] [--label <String>] [--description <String>] [--smartTags <JSON>] [--category <ObjectCategory>] [--module <String>] [--scope <Int>] [--tags <String>] [--isPublic <Boolean>]
agentic-db schema delete --id <UUID>
```

## Examples

### List all schema records

```bash
agentic-db schema list
```

### Create a schema

```bash
agentic-db schema create --databaseId <UUID> --name <String> --schemaName <String> [--label <String>] [--description <String>] [--smartTags <JSON>] [--category <ObjectCategory>] [--module <String>] [--scope <Int>] [--tags <String>] [--isPublic <Boolean>]
```

### Get a schema by id

```bash
agentic-db schema get --id <value>
```
