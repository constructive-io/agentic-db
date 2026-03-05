# memory

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for Memory records via agent-os CLI

## Usage

```bash
agent-os memory list
agent-os memory get --id <value>
agent-os memory create --entityId <value> --content <value> --tags <value> --embedding <value> --embeddingDistance <value>
agent-os memory update --id <value> [--entityId <value>] [--content <value>] [--tags <value>] [--embedding <value>] [--embeddingDistance <value>]
agent-os memory delete --id <value>
```

## Examples

### List all memory records

```bash
agent-os memory list
```

### Create a memory

```bash
agent-os memory create --entityId "value" --content "value" --tags "value" --embedding "value" --embeddingDistance "value"
```

### Get a memory by id

```bash
agent-os memory get --id <value>
```
