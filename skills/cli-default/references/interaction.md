# interaction

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for Interaction records via agent-os CLI

## Usage

```bash
agent-os interaction list
agent-os interaction get --id <value>
agent-os interaction create --entityId <value> --contactId <value> --type <value> --occurredAt <value> --embeddingDistance <value> [--summary <value>] [--sentiment <value>] [--tags <value>] [--embeddingText <value>] [--embedding <value>]
agent-os interaction update --id <value> [--entityId <value>] [--contactId <value>] [--type <value>] [--occurredAt <value>] [--summary <value>] [--sentiment <value>] [--tags <value>] [--embeddingText <value>] [--embedding <value>] [--embeddingDistance <value>]
agent-os interaction delete --id <value>
```

## Examples

### List all interaction records

```bash
agent-os interaction list
```

### Create a interaction

```bash
agent-os interaction create --entityId <value> --contactId <value> --type <value> --occurredAt <value> --embeddingDistance <value> [--summary <value>] [--sentiment <value>] [--tags <value>] [--embeddingText <value>] [--embedding <value>]
```

### Get a interaction by id

```bash
agent-os interaction get --id <value>
```
