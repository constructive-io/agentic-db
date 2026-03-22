# activityLogChunk

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for ActivityLogChunk records via agentic-db CLI

**Unified Search API fields:** `embeddingTextBm25Score`, `contentTrgmSimilarity`, `embeddingTextTrgmSimilarity`, `searchScore`
Fields provided by the Unified Search plugin. Includes full-text search (tsvector/BM25), trigram similarity scores, and the combined searchScore. Computed fields are read-only and cannot be set in create/update operations.

## Usage

```bash
agentic-db activity-log-chunk list
agentic-db activity-log-chunk get --id <UUID>
agentic-db activity-log-chunk create --entityId <UUID> --chunkIndex <Int> --content <String> --activityLogId <UUID> [--embeddingText <String>] [--embedding <Vector>]
agentic-db activity-log-chunk update --id <UUID> [--entityId <UUID>] [--chunkIndex <Int>] [--content <String>] [--embeddingText <String>] [--embedding <Vector>] [--activityLogId <UUID>]
agentic-db activity-log-chunk delete --id <UUID>
```

## Examples

### List all activityLogChunk records

```bash
agentic-db activity-log-chunk list
```

### Create a activityLogChunk

```bash
agentic-db activity-log-chunk create --entityId <UUID> --chunkIndex <Int> --content <String> --activityLogId <UUID> [--embeddingText <String>] [--embedding <Vector>]
```

### Get a activityLogChunk by id

```bash
agentic-db activity-log-chunk get --id <value>
```
