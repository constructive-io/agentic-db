# tag

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for Tag records via agentic-db CLI

## Usage

```bash
agentic-db tag list
agentic-db tag get --id <UUID>
agentic-db tag create --entityId <UUID> --name <String> [--color <String>] [--category <String>] [--usageCount <Int>]
agentic-db tag update --id <UUID> [--entityId <UUID>] [--name <String>] [--color <String>] [--category <String>] [--usageCount <Int>]
agentic-db tag delete --id <UUID>
```

## Examples

### List all tag records

```bash
agentic-db tag list
```

### Create a tag

```bash
agentic-db tag create --entityId <UUID> --name <String> [--color <String>] [--category <String>] [--usageCount <Int>]
```

### Get a tag by id

```bash
agentic-db tag get --id <value>
```
