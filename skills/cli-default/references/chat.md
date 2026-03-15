# chat

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for Chat records via agentic-db CLI

## Usage

```bash
agentic-db chat list
agentic-db chat get --id <value>
agentic-db chat create --entityId <value> --title <value> --startedAt <value> --embedding <value> --embeddingDistance <value>
agentic-db chat update --id <value> [--entityId <value>] [--title <value>] [--startedAt <value>] [--embedding <value>] [--embeddingDistance <value>]
agentic-db chat delete --id <value>
```

## Examples

### List all chat records

```bash
agentic-db chat list
```

### Create a chat

```bash
agentic-db chat create --entityId "value" --title "value" --startedAt "value" --embedding "value" --embeddingDistance "value"
```

### Get a chat by id

```bash
agentic-db chat get --id <value>
```
