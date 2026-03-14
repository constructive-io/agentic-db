# session

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for Session records via agent-os CLI

## Usage

```bash
agent-os session list
agent-os session get --id <value>
agent-os session create --entityId <value> --embeddingDistance <value> [--title <value>] [--agentId <value>] [--startedAt <value>] [--endedAt <value>] [--status <value>] [--contextSummary <value>] [--embeddingText <value>] [--embedding <value>]
agent-os session update --id <value> [--entityId <value>] [--title <value>] [--agentId <value>] [--startedAt <value>] [--endedAt <value>] [--status <value>] [--contextSummary <value>] [--embeddingText <value>] [--embedding <value>] [--embeddingDistance <value>]
agent-os session delete --id <value>
```

## Examples

### List all session records

```bash
agent-os session list
```

### Create a session

```bash
agent-os session create --entityId <value> --embeddingDistance <value> [--title <value>] [--agentId <value>] [--startedAt <value>] [--endedAt <value>] [--status <value>] [--contextSummary <value>] [--embeddingText <value>] [--embedding <value>]
```

### Get a session by id

```bash
agent-os session get --id <value>
```
