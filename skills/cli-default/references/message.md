# message

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for Message records via agent-os CLI

## Usage

```bash
agent-os message list
agent-os message get --id <value>
agent-os message create --entityId <value> --embeddingDistance <value> [--emailAccountId <value>] [--threadId <value>] [--remoteId <value>] [--fromAddress <value>] [--toAddresses <value>] [--subject <value>] [--bodyText <value>] [--receivedAt <value>] [--tags <value>] [--embeddingText <value>] [--embedding <value>]
agent-os message update --id <value> [--entityId <value>] [--emailAccountId <value>] [--threadId <value>] [--remoteId <value>] [--fromAddress <value>] [--toAddresses <value>] [--subject <value>] [--bodyText <value>] [--receivedAt <value>] [--tags <value>] [--embeddingText <value>] [--embedding <value>] [--embeddingDistance <value>]
agent-os message delete --id <value>
```

## Examples

### List all message records

```bash
agent-os message list
```

### Create a message

```bash
agent-os message create --entityId <value> --embeddingDistance <value> [--emailAccountId <value>] [--threadId <value>] [--remoteId <value>] [--fromAddress <value>] [--toAddresses <value>] [--subject <value>] [--bodyText <value>] [--receivedAt <value>] [--tags <value>] [--embeddingText <value>] [--embedding <value>]
```

### Get a message by id

```bash
agent-os message get --id <value>
```
