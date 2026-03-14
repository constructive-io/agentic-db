# session

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for Session records via agent-db CLI

## Usage

```bash
agent-db session list
agent-db session get --id <value>
agent-db session create --entityId <value> --embeddingDistance <value> [--title <value>] [--agentId <value>] [--startedAt <value>] [--endedAt <value>] [--status <value>] [--contextSummary <value>] [--embeddingText <value>] [--embedding <value>]
agent-db session update --id <value> [--entityId <value>] [--title <value>] [--agentId <value>] [--startedAt <value>] [--endedAt <value>] [--status <value>] [--contextSummary <value>] [--embeddingText <value>] [--embedding <value>] [--embeddingDistance <value>]
agent-db session delete --id <value>
```

## Examples

### List all session records

```bash
agent-db session list
```

### Create a session

```bash
agent-db session create --entityId <value> --embeddingDistance <value> [--title <value>] [--agentId <value>] [--startedAt <value>] [--endedAt <value>] [--status <value>] [--contextSummary <value>] [--embeddingText <value>] [--embedding <value>]
```

### Get a session by id

```bash
agent-db session get --id <value>
```
