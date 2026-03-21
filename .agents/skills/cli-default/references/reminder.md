# reminder

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for Reminder records via agentic-db CLI

**Unified Search API fields:** `embeddingTextBm25Score`, `titleTrgmSimilarity`, `recurrenceTrgmSimilarity`, `statusTrgmSimilarity`, `embeddingTextTrgmSimilarity`, `searchScore`
Fields provided by the Unified Search plugin. Includes full-text search (tsvector/BM25), trigram similarity scores, and the combined searchScore. Computed fields are read-only and cannot be set in create/update operations.

## Usage

```bash
agentic-db reminder list
agentic-db reminder get --id <UUID>
agentic-db reminder create --entityId <UUID> --title <String> [--dueAt <Datetime>] [--completedAt <Datetime>] [--recurrence <String>] [--status <String>] [--embeddingText <String>] [--embedding <Vector>]
agentic-db reminder update --id <UUID> [--entityId <UUID>] [--title <String>] [--dueAt <Datetime>] [--completedAt <Datetime>] [--recurrence <String>] [--status <String>] [--embeddingText <String>] [--embedding <Vector>]
agentic-db reminder delete --id <UUID>
```

## Examples

### List all reminder records

```bash
agentic-db reminder list
```

### Create a reminder

```bash
agentic-db reminder create --entityId <UUID> --title <String> [--dueAt <Datetime>] [--completedAt <Datetime>] [--recurrence <String>] [--status <String>] [--embeddingText <String>] [--embedding <Vector>]
```

### Get a reminder by id

```bash
agentic-db reminder get --id <value>
```
