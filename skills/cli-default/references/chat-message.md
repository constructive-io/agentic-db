# chatMessage

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for ChatMessage records via agent-db CLI

## Usage

```bash
agent-db chat-message list
agent-db chat-message get --id <value>
agent-db chat-message create --entityId <value> --embeddingDistance <value> [--chatId <value>] [--threadId <value>] [--role <value>] [--content <value>] [--toolCalls <value>] [--embeddingText <value>] [--embedding <value>]
agent-db chat-message update --id <value> [--entityId <value>] [--chatId <value>] [--threadId <value>] [--role <value>] [--content <value>] [--toolCalls <value>] [--embeddingText <value>] [--embedding <value>] [--embeddingDistance <value>]
agent-db chat-message delete --id <value>
```

## Examples

### List all chatMessage records

```bash
agent-db chat-message list
```

### Create a chatMessage

```bash
agent-db chat-message create --entityId <value> --embeddingDistance <value> [--chatId <value>] [--threadId <value>] [--role <value>] [--content <value>] [--toolCalls <value>] [--embeddingText <value>] [--embedding <value>]
```

### Get a chatMessage by id

```bash
agent-db chat-message get --id <value>
```
