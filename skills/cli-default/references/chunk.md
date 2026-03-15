# chunk

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for Chunk records via agentic-db CLI

## Usage

```bash
agentic-db chunk list
agentic-db chunk get --id <value>
agentic-db chunk create --entityId <value> --content <value> --startLine <value> --endLine <value> --embedding <value> --fileId <value> --repositoryId <value> --embeddingDistance <value>
agentic-db chunk update --id <value> [--entityId <value>] [--content <value>] [--startLine <value>] [--endLine <value>] [--embedding <value>] [--fileId <value>] [--repositoryId <value>] [--embeddingDistance <value>]
agentic-db chunk delete --id <value>
```

## Examples

### List all chunk records

```bash
agentic-db chunk list
```

### Create a chunk

```bash
agentic-db chunk create --entityId "value" --content "value" --startLine "value" --endLine "value" --embedding "value" --fileId "value" --repositoryId "value" --embeddingDistance "value"
```

### Get a chunk by id

```bash
agentic-db chunk get --id <value>
```
