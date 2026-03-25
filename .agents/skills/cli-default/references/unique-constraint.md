# uniqueConstraint

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for UniqueConstraint records via agentic-db CLI

## Usage

```bash
agentic-db unique-constraint list
agentic-db unique-constraint get --id <UUID>
agentic-db unique-constraint create --tableId <UUID> --fieldIds <UUID> [--databaseId <UUID>] [--name <String>] [--description <String>] [--smartTags <JSON>] [--type <String>] [--category <ObjectCategory>] [--module <String>] [--scope <Int>] [--tags <String>]
agentic-db unique-constraint update --id <UUID> [--databaseId <UUID>] [--tableId <UUID>] [--name <String>] [--description <String>] [--smartTags <JSON>] [--type <String>] [--fieldIds <UUID>] [--category <ObjectCategory>] [--module <String>] [--scope <Int>] [--tags <String>]
agentic-db unique-constraint delete --id <UUID>
```

## Examples

### List all uniqueConstraint records

```bash
agentic-db unique-constraint list
```

### Create a uniqueConstraint

```bash
agentic-db unique-constraint create --tableId <UUID> --fieldIds <UUID> [--databaseId <UUID>] [--name <String>] [--description <String>] [--smartTags <JSON>] [--type <String>] [--category <ObjectCategory>] [--module <String>] [--scope <Int>] [--tags <String>]
```

### Get a uniqueConstraint by id

```bash
agentic-db unique-constraint get --id <value>
```
