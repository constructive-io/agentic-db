# foreignKeyConstraint

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for ForeignKeyConstraint records via agentic-db CLI

## Usage

```bash
agentic-db foreign-key-constraint list
agentic-db foreign-key-constraint get --id <UUID>
agentic-db foreign-key-constraint create --tableId <UUID> --fieldIds <UUID> --refTableId <UUID> --refFieldIds <UUID> [--databaseId <UUID>] [--name <String>] [--description <String>] [--smartTags <JSON>] [--type <String>] [--deleteAction <String>] [--updateAction <String>] [--category <ObjectCategory>] [--module <String>] [--scope <Int>] [--tags <String>]
agentic-db foreign-key-constraint update --id <UUID> [--databaseId <UUID>] [--tableId <UUID>] [--name <String>] [--description <String>] [--smartTags <JSON>] [--type <String>] [--fieldIds <UUID>] [--refTableId <UUID>] [--refFieldIds <UUID>] [--deleteAction <String>] [--updateAction <String>] [--category <ObjectCategory>] [--module <String>] [--scope <Int>] [--tags <String>]
agentic-db foreign-key-constraint delete --id <UUID>
```

## Examples

### List all foreignKeyConstraint records

```bash
agentic-db foreign-key-constraint list
```

### Create a foreignKeyConstraint

```bash
agentic-db foreign-key-constraint create --tableId <UUID> --fieldIds <UUID> --refTableId <UUID> --refFieldIds <UUID> [--databaseId <UUID>] [--name <String>] [--description <String>] [--smartTags <JSON>] [--type <String>] [--deleteAction <String>] [--updateAction <String>] [--category <ObjectCategory>] [--module <String>] [--scope <Int>] [--tags <String>]
```

### Get a foreignKeyConstraint by id

```bash
agentic-db foreign-key-constraint get --id <value>
```
