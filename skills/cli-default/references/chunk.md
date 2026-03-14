# chunk

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for Chunk records via agent-db CLI

## Usage

```bash
agent-db chunk list
agent-db chunk get --id <value>
agent-db chunk create --entityId <value> --content <value> --embeddingDistance <value> [--fileId <value>] [--repositoryId <value>] [--startLine <value>] [--endLine <value>] [--embeddingText <value>] [--embedding <value>]
agent-db chunk update --id <value> [--entityId <value>] [--fileId <value>] [--repositoryId <value>] [--content <value>] [--startLine <value>] [--endLine <value>] [--embeddingText <value>] [--embedding <value>] [--embeddingDistance <value>]
agent-db chunk delete --id <value>
```

## Examples

### List all chunk records

```bash
agent-db chunk list
```

### Create a chunk

```bash
agent-db chunk create --entityId <value> --content <value> --embeddingDistance <value> [--fileId <value>] [--repositoryId <value>] [--startLine <value>] [--endLine <value>] [--embeddingText <value>] [--embedding <value>]
```

### Get a chunk by id

```bash
agent-db chunk get --id <value>
```
