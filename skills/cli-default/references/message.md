# message

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for Message records via agent-db CLI

## Usage

```bash
agent-db message list
agent-db message get --id <value>
agent-db message create --entityId <value> --embeddingDistance <value> [--emailAccountId <value>] [--threadId <value>] [--remoteId <value>] [--fromAddress <value>] [--toAddresses <value>] [--subject <value>] [--bodyText <value>] [--receivedAt <value>] [--tags <value>] [--embeddingText <value>] [--embedding <value>]
agent-db message update --id <value> [--entityId <value>] [--emailAccountId <value>] [--threadId <value>] [--remoteId <value>] [--fromAddress <value>] [--toAddresses <value>] [--subject <value>] [--bodyText <value>] [--receivedAt <value>] [--tags <value>] [--embeddingText <value>] [--embedding <value>] [--embeddingDistance <value>]
agent-db message delete --id <value>
```

## Examples

### List all message records

```bash
agent-db message list
```

### Create a message

```bash
agent-db message create --entityId <value> --embeddingDistance <value> [--emailAccountId <value>] [--threadId <value>] [--remoteId <value>] [--fromAddress <value>] [--toAddresses <value>] [--subject <value>] [--bodyText <value>] [--receivedAt <value>] [--tags <value>] [--embeddingText <value>] [--embedding <value>]
```

### Get a message by id

```bash
agent-db message get --id <value>
```
