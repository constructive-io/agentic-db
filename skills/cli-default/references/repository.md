# repository

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for Repository records via agent-os CLI

## Usage

```bash
agent-os repository list
agent-os repository get --id <value>
agent-os repository create --entityId <value> --name <value> --embeddingDistance <value> [--url <value>] [--description <value>] [--defaultBranch <value>] [--lastSyncedAt <value>] [--tags <value>] [--embeddingText <value>] [--embedding <value>]
agent-os repository update --id <value> [--entityId <value>] [--name <value>] [--url <value>] [--description <value>] [--defaultBranch <value>] [--lastSyncedAt <value>] [--tags <value>] [--embeddingText <value>] [--embedding <value>] [--embeddingDistance <value>]
agent-os repository delete --id <value>
```

## Examples

### List all repository records

```bash
agent-os repository list
```

### Create a repository

```bash
agent-os repository create --entityId <value> --name <value> --embeddingDistance <value> [--url <value>] [--description <value>] [--defaultBranch <value>] [--lastSyncedAt <value>] [--tags <value>] [--embeddingText <value>] [--embedding <value>]
```

### Get a repository by id

```bash
agent-os repository get --id <value>
```
