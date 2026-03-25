# table

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for Table records via agentic-db CLI

## Usage

```bash
agentic-db table list
agentic-db table get --id <UUID>
agentic-db table create --schemaId <UUID> --name <String> [--databaseId <UUID>] [--label <String>] [--description <String>] [--smartTags <JSON>] [--category <ObjectCategory>] [--module <String>] [--scope <Int>] [--useRls <Boolean>] [--timestamps <Boolean>] [--peoplestamps <Boolean>] [--pluralName <String>] [--singularName <String>] [--tags <String>] [--inheritsId <UUID>]
agentic-db table update --id <UUID> [--databaseId <UUID>] [--schemaId <UUID>] [--name <String>] [--label <String>] [--description <String>] [--smartTags <JSON>] [--category <ObjectCategory>] [--module <String>] [--scope <Int>] [--useRls <Boolean>] [--timestamps <Boolean>] [--peoplestamps <Boolean>] [--pluralName <String>] [--singularName <String>] [--tags <String>] [--inheritsId <UUID>]
agentic-db table delete --id <UUID>
```

## Examples

### List all table records

```bash
agentic-db table list
```

### Create a table

```bash
agentic-db table create --schemaId <UUID> --name <String> [--databaseId <UUID>] [--label <String>] [--description <String>] [--smartTags <JSON>] [--category <ObjectCategory>] [--module <String>] [--scope <Int>] [--useRls <Boolean>] [--timestamps <Boolean>] [--peoplestamps <Boolean>] [--pluralName <String>] [--singularName <String>] [--tags <String>] [--inheritsId <UUID>]
```

### Get a table by id

```bash
agentic-db table get --id <value>
```
