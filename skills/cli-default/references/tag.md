# tag

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for Tag records via agent-db CLI

## Usage

```bash
agent-db tag list
agent-db tag get --id <value>
agent-db tag create --entityId <value> --name <value> [--color <value>] [--category <value>] [--usageCount <value>]
agent-db tag update --id <value> [--entityId <value>] [--name <value>] [--color <value>] [--category <value>] [--usageCount <value>]
agent-db tag delete --id <value>
```

## Examples

### List all tag records

```bash
agent-db tag list
```

### Create a tag

```bash
agent-db tag create --entityId <value> --name <value> [--color <value>] [--category <value>] [--usageCount <value>]
```

### Get a tag by id

```bash
agent-db tag get --id <value>
```
