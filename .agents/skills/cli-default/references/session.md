# session

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for Session records via agentic-db CLI

## Usage

```bash
agentic-db session list
agentic-db session get --id <UUID>
agentic-db session create --entityId <UUID> [--title <String>] [--agentId <UUID>] [--startedAt <Datetime>] [--endedAt <Datetime>] [--status <String>] [--contextSummary <String>] [--sessionSummary <String>] [--archivedMessages <JSON>] [--compressionCount <Int>] [--archivedAt <Datetime>] [--extractedMemoryIds <UUID>] [--contextsUsed <JSON>] [--skillsUsed <UUID>] [--embeddingText <String>] [--embedding <Vector>]
agentic-db session update --id <UUID> [--entityId <UUID>] [--title <String>] [--agentId <UUID>] [--startedAt <Datetime>] [--endedAt <Datetime>] [--status <String>] [--contextSummary <String>] [--sessionSummary <String>] [--archivedMessages <JSON>] [--compressionCount <Int>] [--archivedAt <Datetime>] [--extractedMemoryIds <UUID>] [--contextsUsed <JSON>] [--skillsUsed <UUID>] [--embeddingText <String>] [--embedding <Vector>]
agentic-db session delete --id <UUID>
```

## Examples

### List all session records

```bash
agentic-db session list
```

### Create a session

```bash
agentic-db session create --entityId <UUID> [--title <String>] [--agentId <UUID>] [--startedAt <Datetime>] [--endedAt <Datetime>] [--status <String>] [--contextSummary <String>] [--sessionSummary <String>] [--archivedMessages <JSON>] [--compressionCount <Int>] [--archivedAt <Datetime>] [--extractedMemoryIds <UUID>] [--contextsUsed <JSON>] [--skillsUsed <UUID>] [--embeddingText <String>] [--embedding <Vector>]
```

### Get a session by id

```bash
agentic-db session get --id <value>
```
