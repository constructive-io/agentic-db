# message

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for Message records via agent-os CLI

## Usage

```bash
agent-os message list
agent-os message get --id <value>
agent-os message create --entityId <value> --threadId <value> --remoteId <value> --from <value> --to <value> --subject <value> --bodyText <value> --receivedAt <value> --tags <value> --embedding <value> --emailAccountId <value> --embeddingDistance <value>
agent-os message update --id <value> [--entityId <value>] [--threadId <value>] [--remoteId <value>] [--from <value>] [--to <value>] [--subject <value>] [--bodyText <value>] [--receivedAt <value>] [--tags <value>] [--embedding <value>] [--emailAccountId <value>] [--embeddingDistance <value>]
agent-os message delete --id <value>
```

## Examples

### List all message records

```bash
agent-os message list
```

### Create a message

```bash
agent-os message create --entityId "value" --threadId "value" --remoteId "value" --from "value" --to "value" --subject "value" --bodyText "value" --receivedAt "value" --tags "value" --embedding "value" --emailAccountId "value" --embeddingDistance "value"
```

### Get a message by id

```bash
agent-os message get --id <value>
```
