# interaction

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for Interaction records via agent-db CLI

## Usage

```bash
agent-db interaction list
agent-db interaction get --id <value>
agent-db interaction create --entityId <value> --contactId <value> --type <value> --occurredAt <value> --embeddingDistance <value> [--summary <value>] [--sentiment <value>] [--tags <value>] [--embeddingText <value>] [--embedding <value>]
agent-db interaction update --id <value> [--entityId <value>] [--contactId <value>] [--type <value>] [--occurredAt <value>] [--summary <value>] [--sentiment <value>] [--tags <value>] [--embeddingText <value>] [--embedding <value>] [--embeddingDistance <value>]
agent-db interaction delete --id <value>
```

## Examples

### List all interaction records

```bash
agent-db interaction list
```

### Create a interaction

```bash
agent-db interaction create --entityId <value> --contactId <value> --type <value> --occurredAt <value> --embeddingDistance <value> [--summary <value>] [--sentiment <value>] [--tags <value>] [--embeddingText <value>] [--embedding <value>]
```

### Get a interaction by id

```bash
agent-db interaction get --id <value>
```
