# memory

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for Memory records via agent-db CLI

## Usage

```bash
agent-db memory list
agent-db memory get --id <value>
agent-db memory create --entityId <value> --content <value> --embeddingDistance <value> [--memoryType <value>] [--agentId <value>] [--importance <value>] [--verified <value>] [--source <value>] [--relatedEntityType <value>] [--relatedEntityId <value>] [--tags <value>] [--embeddingText <value>] [--embedding <value>]
agent-db memory update --id <value> [--entityId <value>] [--content <value>] [--memoryType <value>] [--agentId <value>] [--importance <value>] [--verified <value>] [--source <value>] [--relatedEntityType <value>] [--relatedEntityId <value>] [--tags <value>] [--embeddingText <value>] [--embedding <value>] [--embeddingDistance <value>]
agent-db memory delete --id <value>
```

## Examples

### List all memory records

```bash
agent-db memory list
```

### Create a memory

```bash
agent-db memory create --entityId <value> --content <value> --embeddingDistance <value> [--memoryType <value>] [--agentId <value>] [--importance <value>] [--verified <value>] [--source <value>] [--relatedEntityType <value>] [--relatedEntityId <value>] [--tags <value>] [--embeddingText <value>] [--embedding <value>]
```

### Get a memory by id

```bash
agent-db memory get --id <value>
```
