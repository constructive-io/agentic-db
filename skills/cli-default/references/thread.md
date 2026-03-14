# thread

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for Thread records via agent-os CLI

## Usage

```bash
agent-os thread list
agent-os thread get --id <value>
agent-os thread create --entityId <value> --title <value> --embeddingDistance <value> [--summary <value>] [--status <value>] [--parentThreadId <value>] [--embeddingText <value>] [--embedding <value>]
agent-os thread update --id <value> [--entityId <value>] [--title <value>] [--summary <value>] [--status <value>] [--parentThreadId <value>] [--embeddingText <value>] [--embedding <value>] [--embeddingDistance <value>]
agent-os thread delete --id <value>
```

## Examples

### List all thread records

```bash
agent-os thread list
```

### Create a thread

```bash
agent-os thread create --entityId <value> --title <value> --embeddingDistance <value> [--summary <value>] [--status <value>] [--parentThreadId <value>] [--embeddingText <value>] [--embedding <value>]
```

### Get a thread by id

```bash
agent-os thread get --id <value>
```
