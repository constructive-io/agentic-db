# memory

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for Memory records via agentic-db CLI

## Usage

```bash
agentic-db memory list
agentic-db memory get --id <value>
agentic-db memory create --entityId <value> --content <value> --tags <value> --embedding <value> --embeddingDistance <value>
agentic-db memory update --id <value> [--entityId <value>] [--content <value>] [--tags <value>] [--embedding <value>] [--embeddingDistance <value>]
agentic-db memory delete --id <value>
```

## Examples

### List all memory records

```bash
agentic-db memory list
```

### Create a memory

```bash
agentic-db memory create --entityId "value" --content "value" --tags "value" --embedding "value" --embeddingDistance "value"
```

### Get a memory by id

```bash
agentic-db memory get --id <value>
```
