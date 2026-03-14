# chunk

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for Chunk records via agent-os CLI

## Usage

```bash
agent-os chunk list
agent-os chunk get --id <value>
agent-os chunk create --entityId <value> --content <value> --embeddingDistance <value> [--fileId <value>] [--repositoryId <value>] [--startLine <value>] [--endLine <value>] [--embeddingText <value>] [--embedding <value>]
agent-os chunk update --id <value> [--entityId <value>] [--fileId <value>] [--repositoryId <value>] [--content <value>] [--startLine <value>] [--endLine <value>] [--embeddingText <value>] [--embedding <value>] [--embeddingDistance <value>]
agent-os chunk delete --id <value>
```

## Examples

### List all chunk records

```bash
agent-os chunk list
```

### Create a chunk

```bash
agent-os chunk create --entityId <value> --content <value> --embeddingDistance <value> [--fileId <value>] [--repositoryId <value>] [--startLine <value>] [--endLine <value>] [--embeddingText <value>] [--embedding <value>]
```

### Get a chunk by id

```bash
agent-os chunk get --id <value>
```
