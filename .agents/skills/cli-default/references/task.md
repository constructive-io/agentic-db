# task

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for Task records via agentic-db CLI

**Unified Search API fields:** `embeddingTextBm25Score`, `titleTrgmSimilarity`, `descriptionTrgmSimilarity`, `statusTrgmSimilarity`, `resultTrgmSimilarity`, `embeddingTextTrgmSimilarity`, `searchScore`
Fields provided by the Unified Search plugin. Includes full-text search (tsvector/BM25), trigram similarity scores, and the combined searchScore. Computed fields are read-only and cannot be set in create/update operations.

## Usage

```bash
agentic-db task list
agentic-db task get --id <UUID>
agentic-db task create --entityId <UUID> --title <String> [--agentId <UUID>] [--description <String>] [--status <String>] [--priority <Int>] [--result <String>] [--startedAt <Datetime>] [--completedAt <Datetime>] [--meta <JSON>] [--embeddingText <String>] [--embedding <Vector>] [--embeddingStale <Boolean>]
agentic-db task update --id <UUID> [--entityId <UUID>] [--agentId <UUID>] [--title <String>] [--description <String>] [--status <String>] [--priority <Int>] [--result <String>] [--startedAt <Datetime>] [--completedAt <Datetime>] [--meta <JSON>] [--embeddingText <String>] [--embedding <Vector>] [--embeddingStale <Boolean>]
agentic-db task delete --id <UUID>
```

## Examples

### List all task records

```bash
agentic-db task list
```

### Create a task

```bash
agentic-db task create --entityId <UUID> --title <String> [--agentId <UUID>] [--description <String>] [--status <String>] [--priority <Int>] [--result <String>] [--startedAt <Datetime>] [--completedAt <Datetime>] [--meta <JSON>] [--embeddingText <String>] [--embedding <Vector>] [--embeddingStale <Boolean>]
```

### Get a task by id

```bash
agentic-db task get --id <value>
```
