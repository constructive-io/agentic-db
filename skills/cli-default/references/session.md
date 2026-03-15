# session

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for Session records via agent-db CLI

## Usage

```bash
agent-db session list
agent-db session get --id <value>
agent-db session create --entityId <value> --uagentTrgmSimilarity <value> --fingerprintModeTrgmSimilarity <value> --csrfSecretTrgmSimilarity <value> --searchScore <value> [--title <value>] [--agentId <value>] [--startedAt <value>] [--endedAt <value>] [--status <value>] [--contextSummary <value>] [--sessionSummary <value>] [--archivedMessages <value>] [--compressionCount <value>] [--archivedAt <value>] [--extractedMemoryIds <value>] [--contextsUsed <value>] [--skillsUsed <value>] [--embeddingText <value>] [--embedding <value>]
agent-db session update --id <value> [--entityId <value>] [--title <value>] [--agentId <value>] [--startedAt <value>] [--endedAt <value>] [--status <value>] [--contextSummary <value>] [--sessionSummary <value>] [--archivedMessages <value>] [--compressionCount <value>] [--archivedAt <value>] [--extractedMemoryIds <value>] [--contextsUsed <value>] [--skillsUsed <value>] [--embeddingText <value>] [--embedding <value>] [--uagentTrgmSimilarity <value>] [--fingerprintModeTrgmSimilarity <value>] [--csrfSecretTrgmSimilarity <value>] [--searchScore <value>]
agent-db session delete --id <value>
```

## Examples

### List all session records

```bash
agent-db session list
```

### Create a session

```bash
agent-db session create --entityId <value> --uagentTrgmSimilarity <value> --fingerprintModeTrgmSimilarity <value> --csrfSecretTrgmSimilarity <value> --searchScore <value> [--title <value>] [--agentId <value>] [--startedAt <value>] [--endedAt <value>] [--status <value>] [--contextSummary <value>] [--sessionSummary <value>] [--archivedMessages <value>] [--compressionCount <value>] [--archivedAt <value>] [--extractedMemoryIds <value>] [--contextsUsed <value>] [--skillsUsed <value>] [--embeddingText <value>] [--embedding <value>]
```

### Get a session by id

```bash
agent-db session get --id <value>
```
