# index

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for Index records via agentic-db CLI

## Usage

```bash
agentic-db index list
agentic-db index get --id <UUID>
agentic-db index create --databaseId <UUID> --tableId <UUID> [--name <String>] [--fieldIds <UUID>] [--includeFieldIds <UUID>] [--accessMethod <String>] [--indexParams <JSON>] [--whereClause <JSON>] [--isUnique <Boolean>] [--options <JSON>] [--opClasses <String>] [--smartTags <JSON>] [--category <ObjectCategory>] [--module <String>] [--scope <Int>] [--tags <String>]
agentic-db index update --id <UUID> [--databaseId <UUID>] [--tableId <UUID>] [--name <String>] [--fieldIds <UUID>] [--includeFieldIds <UUID>] [--accessMethod <String>] [--indexParams <JSON>] [--whereClause <JSON>] [--isUnique <Boolean>] [--options <JSON>] [--opClasses <String>] [--smartTags <JSON>] [--category <ObjectCategory>] [--module <String>] [--scope <Int>] [--tags <String>]
agentic-db index delete --id <UUID>
```

## Examples

### List all index records

```bash
agentic-db index list
```

### Create a index

```bash
agentic-db index create --databaseId <UUID> --tableId <UUID> [--name <String>] [--fieldIds <UUID>] [--includeFieldIds <UUID>] [--accessMethod <String>] [--indexParams <JSON>] [--whereClause <JSON>] [--isUnique <Boolean>] [--options <JSON>] [--opClasses <String>] [--smartTags <JSON>] [--category <ObjectCategory>] [--module <String>] [--scope <Int>] [--tags <String>]
```

### Get a index by id

```bash
agentic-db index get --id <value>
```
