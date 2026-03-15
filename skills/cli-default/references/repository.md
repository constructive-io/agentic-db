# repository

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for Repository records via agentic-db CLI

## Usage

```bash
agentic-db repository list
agentic-db repository get --id <value>
agentic-db repository create --entityId <value> --name <value> --url <value> --description <value> --defaultBranch <value> --lastSyncedAt <value> --embedding <value> --embeddingDistance <value>
agentic-db repository update --id <value> [--entityId <value>] [--name <value>] [--url <value>] [--description <value>] [--defaultBranch <value>] [--lastSyncedAt <value>] [--embedding <value>] [--embeddingDistance <value>]
agentic-db repository delete --id <value>
```

## Examples

### List all repository records

```bash
agentic-db repository list
```

### Create a repository

```bash
agentic-db repository create --entityId "value" --name "value" --url "value" --description "value" --defaultBranch "value" --lastSyncedAt "value" --embedding "value" --embeddingDistance "value"
```

### Get a repository by id

```bash
agentic-db repository get --id <value>
```
