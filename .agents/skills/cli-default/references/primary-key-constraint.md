# primaryKeyConstraint

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for PrimaryKeyConstraint records via agentic-db CLI

## Usage

```bash
agentic-db primary-key-constraint list
agentic-db primary-key-constraint get --id <UUID>
agentic-db primary-key-constraint create --tableId <UUID> --fieldIds <UUID> [--databaseId <UUID>] [--name <String>] [--type <String>] [--smartTags <JSON>] [--category <ObjectCategory>] [--module <String>] [--scope <Int>] [--tags <String>]
agentic-db primary-key-constraint update --id <UUID> [--databaseId <UUID>] [--tableId <UUID>] [--name <String>] [--type <String>] [--fieldIds <UUID>] [--smartTags <JSON>] [--category <ObjectCategory>] [--module <String>] [--scope <Int>] [--tags <String>]
agentic-db primary-key-constraint delete --id <UUID>
```

## Examples

### List all primaryKeyConstraint records

```bash
agentic-db primary-key-constraint list
```

### Create a primaryKeyConstraint

```bash
agentic-db primary-key-constraint create --tableId <UUID> --fieldIds <UUID> [--databaseId <UUID>] [--name <String>] [--type <String>] [--smartTags <JSON>] [--category <ObjectCategory>] [--module <String>] [--scope <Int>] [--tags <String>]
```

### Get a primaryKeyConstraint by id

```bash
agentic-db primary-key-constraint get --id <value>
```
