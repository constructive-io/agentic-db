# database

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for Database records via agentic-db CLI

## Usage

```bash
agentic-db database list
agentic-db database get --id <UUID>
agentic-db database create [--ownerId <UUID>] [--schemaHash <String>] [--name <String>] [--label <String>] [--hash <UUID>]
agentic-db database update --id <UUID> [--ownerId <UUID>] [--schemaHash <String>] [--name <String>] [--label <String>] [--hash <UUID>]
agentic-db database delete --id <UUID>
```

## Examples

### List all database records

```bash
agentic-db database list
```

### Create a database

```bash
agentic-db database create [--ownerId <UUID>] [--schemaHash <String>] [--name <String>] [--label <String>] [--hash <UUID>]
```

### Get a database by id

```bash
agentic-db database get --id <value>
```
