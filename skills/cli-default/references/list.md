# list

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for List records via agent-db CLI

## Usage

```bash
agent-db list list
agent-db list get --id <value>
agent-db list create --entityId <value> --name <value> --embeddingDistance <value> [--description <value>] [--type <value>] [--tags <value>] [--embeddingText <value>] [--embedding <value>]
agent-db list update --id <value> [--entityId <value>] [--name <value>] [--description <value>] [--type <value>] [--tags <value>] [--embeddingText <value>] [--embedding <value>] [--embeddingDistance <value>]
agent-db list delete --id <value>
```

## Examples

### List all list records

```bash
agent-db list list
```

### Create a list

```bash
agent-db list create --entityId <value> --name <value> --embeddingDistance <value> [--description <value>] [--type <value>] [--tags <value>] [--embeddingText <value>] [--embedding <value>]
```

### Get a list by id

```bash
agent-db list get --id <value>
```
