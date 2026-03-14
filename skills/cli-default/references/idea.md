# idea

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for Idea records via agent-os CLI

## Usage

```bash
agent-os idea list
agent-os idea get --id <value>
agent-os idea create --entityId <value> --content <value> --embeddingDistance <value> [--source <value>] [--status <value>] [--tags <value>] [--embeddingText <value>] [--embedding <value>]
agent-os idea update --id <value> [--entityId <value>] [--content <value>] [--source <value>] [--status <value>] [--tags <value>] [--embeddingText <value>] [--embedding <value>] [--embeddingDistance <value>]
agent-os idea delete --id <value>
```

## Examples

### List all idea records

```bash
agent-os idea list
```

### Create a idea

```bash
agent-os idea create --entityId <value> --content <value> --embeddingDistance <value> [--source <value>] [--status <value>] [--tags <value>] [--embeddingText <value>] [--embedding <value>]
```

### Get a idea by id

```bash
agent-os idea get --id <value>
```
