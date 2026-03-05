# chat

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for Chat records via agent-os CLI

## Usage

```bash
agent-os chat list
agent-os chat get --id <value>
agent-os chat create --entityId <value> --title <value> --startedAt <value> --embedding <value> --embeddingDistance <value>
agent-os chat update --id <value> [--entityId <value>] [--title <value>] [--startedAt <value>] [--embedding <value>] [--embeddingDistance <value>]
agent-os chat delete --id <value>
```

## Examples

### List all chat records

```bash
agent-os chat list
```

### Create a chat

```bash
agent-os chat create --entityId "value" --title "value" --startedAt "value" --embedding "value" --embeddingDistance "value"
```

### Get a chat by id

```bash
agent-os chat get --id <value>
```
