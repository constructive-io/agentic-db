# session

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for Session records via agentic-db CLI

## Usage

```bash
agentic-db session list
agentic-db session get --id <value>
agentic-db session create --entityId <value> --title <value> --startedAt <value> --endedAt <value> --status <value> --contextSummary <value> --embedding <value> --embeddingDistance <value>
agentic-db session update --id <value> [--entityId <value>] [--title <value>] [--startedAt <value>] [--endedAt <value>] [--status <value>] [--contextSummary <value>] [--embedding <value>] [--embeddingDistance <value>]
agentic-db session delete --id <value>
```

## Examples

### List all session records

```bash
agentic-db session list
```

### Create a session

```bash
agentic-db session create --entityId "value" --title "value" --startedAt "value" --endedAt "value" --status "value" --contextSummary "value" --embedding "value" --embeddingDistance "value"
```

### Get a session by id

```bash
agentic-db session get --id <value>
```
