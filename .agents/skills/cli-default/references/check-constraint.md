# checkConstraint

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for CheckConstraint records via agentic-db CLI

## Usage

```bash
agentic-db check-constraint list
agentic-db check-constraint get --id <UUID>
agentic-db check-constraint create --tableId <UUID> --fieldIds <UUID> [--databaseId <UUID>] [--name <String>] [--type <String>] [--expr <JSON>] [--smartTags <JSON>] [--category <ObjectCategory>] [--module <String>] [--scope <Int>] [--tags <String>]
agentic-db check-constraint update --id <UUID> [--databaseId <UUID>] [--tableId <UUID>] [--name <String>] [--type <String>] [--fieldIds <UUID>] [--expr <JSON>] [--smartTags <JSON>] [--category <ObjectCategory>] [--module <String>] [--scope <Int>] [--tags <String>]
agentic-db check-constraint delete --id <UUID>
```

## Examples

### List all checkConstraint records

```bash
agentic-db check-constraint list
```

### Create a checkConstraint

```bash
agentic-db check-constraint create --tableId <UUID> --fieldIds <UUID> [--databaseId <UUID>] [--name <String>] [--type <String>] [--expr <JSON>] [--smartTags <JSON>] [--category <ObjectCategory>] [--module <String>] [--scope <Int>] [--tags <String>]
```

### Get a checkConstraint by id

```bash
agentic-db check-constraint get --id <value>
```
