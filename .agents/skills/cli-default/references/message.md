# message

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for Message records via agentic-db CLI

## Usage

```bash
agentic-db message list
agentic-db message get --id <UUID>
agentic-db message create --entityId <UUID> --conversationId <UUID> --role <String> --content <String> [--tokenCount <Int>] [--meta <JSON>] [--toolCalls <JSON>] [--toolResults <JSON>]
agentic-db message update --id <UUID> [--entityId <UUID>] [--conversationId <UUID>] [--role <String>] [--content <String>] [--tokenCount <Int>] [--meta <JSON>] [--toolCalls <JSON>] [--toolResults <JSON>]
agentic-db message delete --id <UUID>
```

## Examples

### List all message records

```bash
agentic-db message list
```

### Create a message

```bash
agentic-db message create --entityId <UUID> --conversationId <UUID> --role <String> --content <String> [--tokenCount <Int>] [--meta <JSON>] [--toolCalls <JSON>] [--toolResults <JSON>]
```

### Get a message by id

```bash
agentic-db message get --id <value>
```
