# reminderChunk

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for ReminderChunk records via agentic-db CLI

**Unified Search API fields:** `embeddingTextBm25Score`, `contentTrgmSimilarity`, `embeddingTextTrgmSimilarity`, `searchScore`
Fields provided by the Unified Search plugin. Includes full-text search (tsvector/BM25), trigram similarity scores, and the combined searchScore. Computed fields are read-only and cannot be set in create/update operations.

## Usage

```bash
agentic-db reminder-chunk list
agentic-db reminder-chunk get --id <UUID>
agentic-db reminder-chunk create --entityId <UUID> --chunkIndex <Int> --content <String> --reminderId <UUID> [--embeddingText <String>] [--embedding <Vector>]
agentic-db reminder-chunk update --id <UUID> [--entityId <UUID>] [--chunkIndex <Int>] [--content <String>] [--embeddingText <String>] [--embedding <Vector>] [--reminderId <UUID>]
agentic-db reminder-chunk delete --id <UUID>
```

## Examples

### List all reminderChunk records

```bash
agentic-db reminder-chunk list
```

### Create a reminderChunk

```bash
agentic-db reminder-chunk create --entityId <UUID> --chunkIndex <Int> --content <String> --reminderId <UUID> [--embeddingText <String>] [--embedding <Vector>]
```

### Get a reminderChunk by id

```bash
agentic-db reminder-chunk get --id <value>
```
