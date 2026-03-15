# message

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for Message records via agentic-db CLI

## Usage

```bash
agentic-db message list
agentic-db message get --id <value>
agentic-db message create --entityId <value> --threadId <value> --remoteId <value> --from <value> --to <value> --subject <value> --bodyText <value> --receivedAt <value> --tags <value> --embedding <value> --emailAccountId <value> --embeddingDistance <value>
agentic-db message update --id <value> [--entityId <value>] [--threadId <value>] [--remoteId <value>] [--from <value>] [--to <value>] [--subject <value>] [--bodyText <value>] [--receivedAt <value>] [--tags <value>] [--embedding <value>] [--emailAccountId <value>] [--embeddingDistance <value>]
agentic-db message delete --id <value>
```

## Examples

### List all message records

```bash
agentic-db message list
```

### Create a message

```bash
agentic-db message create --entityId "value" --threadId "value" --remoteId "value" --from "value" --to "value" --subject "value" --bodyText "value" --receivedAt "value" --tags "value" --embedding "value" --emailAccountId "value" --embeddingDistance "value"
```

### Get a message by id

```bash
agentic-db message get --id <value>
```
