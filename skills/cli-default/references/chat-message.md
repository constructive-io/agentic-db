# chatMessage

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for ChatMessage records via agentic-db CLI

## Usage

```bash
agentic-db chat-message list
agentic-db chat-message get --id <value>
agentic-db chat-message create --entityId <value> --role <value> --content <value> --toolCalls <value> --embedding <value> --chatId <value> --embeddingDistance <value>
agentic-db chat-message update --id <value> [--entityId <value>] [--role <value>] [--content <value>] [--toolCalls <value>] [--embedding <value>] [--chatId <value>] [--embeddingDistance <value>]
agentic-db chat-message delete --id <value>
```

## Examples

### List all chatMessage records

```bash
agentic-db chat-message list
```

### Create a chatMessage

```bash
agentic-db chat-message create --entityId "value" --role "value" --content "value" --toolCalls "value" --embedding "value" --chatId "value" --embeddingDistance "value"
```

### Get a chatMessage by id

```bash
agentic-db chat-message get --id <value>
```
