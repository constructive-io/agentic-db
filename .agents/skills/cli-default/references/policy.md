# policy

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for Policy records via agentic-db CLI

## Usage

```bash
agentic-db policy list
agentic-db policy get --id <UUID>
agentic-db policy create --tableId <UUID> [--databaseId <UUID>] [--name <String>] [--granteeName <String>] [--privilege <String>] [--permissive <Boolean>] [--disabled <Boolean>] [--policyType <String>] [--data <JSON>] [--smartTags <JSON>] [--category <ObjectCategory>] [--module <String>] [--scope <Int>] [--tags <String>]
agentic-db policy update --id <UUID> [--databaseId <UUID>] [--tableId <UUID>] [--name <String>] [--granteeName <String>] [--privilege <String>] [--permissive <Boolean>] [--disabled <Boolean>] [--policyType <String>] [--data <JSON>] [--smartTags <JSON>] [--category <ObjectCategory>] [--module <String>] [--scope <Int>] [--tags <String>]
agentic-db policy delete --id <UUID>
```

## Examples

### List all policy records

```bash
agentic-db policy list
```

### Create a policy

```bash
agentic-db policy create --tableId <UUID> [--databaseId <UUID>] [--name <String>] [--granteeName <String>] [--privilege <String>] [--permissive <Boolean>] [--disabled <Boolean>] [--policyType <String>] [--data <JSON>] [--smartTags <JSON>] [--category <ObjectCategory>] [--module <String>] [--scope <Int>] [--tags <String>]
```

### Get a policy by id

```bash
agentic-db policy get --id <value>
```
