# list

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for List records via agent-os CLI

## Usage

```bash
agent-os list list
agent-os list get --id <value>
agent-os list create --entityId <value> --name <value> --embeddingDistance <value> [--description <value>] [--type <value>] [--tags <value>] [--embeddingText <value>] [--embedding <value>]
agent-os list update --id <value> [--entityId <value>] [--name <value>] [--description <value>] [--type <value>] [--tags <value>] [--embeddingText <value>] [--embedding <value>] [--embeddingDistance <value>]
agent-os list delete --id <value>
```

## Examples

### List all list records

```bash
agent-os list list
```

### Create a list

```bash
agent-os list create --entityId <value> --name <value> --embeddingDistance <value> [--description <value>] [--type <value>] [--tags <value>] [--embeddingText <value>] [--embedding <value>]
```

### Get a list by id

```bash
agent-os list get --id <value>
```
