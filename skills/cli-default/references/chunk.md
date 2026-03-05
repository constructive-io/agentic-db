# chunk

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for Chunk records via agent-os CLI

## Usage

```bash
agent-os chunk list
agent-os chunk get --id <value>
agent-os chunk create --entityId <value> --content <value> --startLine <value> --endLine <value> --embedding <value> --fileId <value> --repositoryId <value> --embeddingDistance <value>
agent-os chunk update --id <value> [--entityId <value>] [--content <value>] [--startLine <value>] [--endLine <value>] [--embedding <value>] [--fileId <value>] [--repositoryId <value>] [--embeddingDistance <value>]
agent-os chunk delete --id <value>
```

## Examples

### List all chunk records

```bash
agent-os chunk list
```

### Create a chunk

```bash
agent-os chunk create --entityId "value" --content "value" --startLine "value" --endLine "value" --embedding "value" --fileId "value" --repositoryId "value" --embeddingDistance "value"
```

### Get a chunk by id

```bash
agent-os chunk get --id <value>
```
