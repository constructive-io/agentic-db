# agentTask

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for AgentTask records via agentic-db CLI

**Unified Search API fields:** `embeddingTextBm25Score`, `titleTrgmSimilarity`, `descriptionTrgmSimilarity`, `statusTrgmSimilarity`, `resultTrgmSimilarity`, `embeddingTextTrgmSimilarity`, `searchScore`
Fields provided by the Unified Search plugin. Includes full-text search (tsvector/BM25), trigram similarity scores, and the combined searchScore. Computed fields are read-only and cannot be set in create/update operations.

## Usage

```bash
agentic-db agent-task list
agentic-db agent-task get --id <UUID>
agentic-db agent-task create --entityId <UUID> --agentId <UUID> --title <String> [--description <String>] [--status <String>] [--priority <Int>] [--result <String>] [--startedAt <Datetime>] [--completedAt <Datetime>] [--meta <JSON>] [--embeddingText <String>] [--embedding <Vector>] [--embeddingStale <Boolean>]
agentic-db agent-task update --id <UUID> [--entityId <UUID>] [--agentId <UUID>] [--title <String>] [--description <String>] [--status <String>] [--priority <Int>] [--result <String>] [--startedAt <Datetime>] [--completedAt <Datetime>] [--meta <JSON>] [--embeddingText <String>] [--embedding <Vector>] [--embeddingStale <Boolean>]
agentic-db agent-task delete --id <UUID>
```

## Examples

### List all agentTask records

```bash
agentic-db agent-task list
```

### Create a agentTask

```bash
agentic-db agent-task create --entityId <UUID> --agentId <UUID> --title <String> [--description <String>] [--status <String>] [--priority <Int>] [--result <String>] [--startedAt <Datetime>] [--completedAt <Datetime>] [--meta <JSON>] [--embeddingText <String>] [--embedding <Vector>] [--embeddingStale <Boolean>]
```

### Get a agentTask by id

```bash
agentic-db agent-task get --id <value>
```
