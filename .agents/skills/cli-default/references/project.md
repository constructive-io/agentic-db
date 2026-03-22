# project

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for Project records via agentic-db CLI

**Unified Search API fields:** `embeddingTextBm25Score`, `nameTrgmSimilarity`, `descriptionTrgmSimilarity`, `statusTrgmSimilarity`, `projectTypeTrgmSimilarity`, `embeddingTextTrgmSimilarity`, `searchScore`
Fields provided by the Unified Search plugin. Includes full-text search (tsvector/BM25), trigram similarity scores, and the combined searchScore. Computed fields are read-only and cannot be set in create/update operations.

## Usage

```bash
agentic-db project list
agentic-db project get --id <UUID>
agentic-db project create --entityId <UUID> --name <String> [--description <String>] [--status <String>] [--projectType <String>] [--priority <Int>] [--startedAt <Datetime>] [--targetDate <Datetime>] [--completedAt <Datetime>] [--config <JSON>] [--tags <String>] [--embeddingText <String>] [--embedding <Vector>] [--embeddingStale <Boolean>]
agentic-db project update --id <UUID> [--entityId <UUID>] [--name <String>] [--description <String>] [--status <String>] [--projectType <String>] [--priority <Int>] [--startedAt <Datetime>] [--targetDate <Datetime>] [--completedAt <Datetime>] [--config <JSON>] [--tags <String>] [--embeddingText <String>] [--embedding <Vector>] [--embeddingStale <Boolean>]
agentic-db project delete --id <UUID>
```

## Examples

### List all project records

```bash
agentic-db project list
```

### Create a project

```bash
agentic-db project create --entityId <UUID> --name <String> [--description <String>] [--status <String>] [--projectType <String>] [--priority <Int>] [--startedAt <Datetime>] [--targetDate <Datetime>] [--completedAt <Datetime>] [--config <JSON>] [--tags <String>] [--embeddingText <String>] [--embedding <Vector>] [--embeddingStale <Boolean>]
```

### Get a project by id

```bash
agentic-db project get --id <value>
```
