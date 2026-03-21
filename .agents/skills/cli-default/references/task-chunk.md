# taskChunk

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for TaskChunk records via agentic-db CLI

**Unified Search API fields:** `embeddingTextBm25Score`, `contentTrgmSimilarity`, `embeddingTextTrgmSimilarity`, `searchScore`
Fields provided by the Unified Search plugin. Includes full-text search (tsvector/BM25), trigram similarity scores, and the combined searchScore. Computed fields are read-only and cannot be set in create/update operations.

## Usage

```bash
agentic-db task-chunk list
agentic-db task-chunk get --id <UUID>
agentic-db task-chunk create --entityId <UUID> --chunkIndex <Int> --content <String> --taskId <UUID> [--embeddingText <String>] [--embedding <Vector>]
agentic-db task-chunk update --id <UUID> [--entityId <UUID>] [--chunkIndex <Int>] [--content <String>] [--embeddingText <String>] [--embedding <Vector>] [--taskId <UUID>]
agentic-db task-chunk delete --id <UUID>
```

## Examples

### List all taskChunk records

```bash
agentic-db task-chunk list
```

### Create a taskChunk

```bash
agentic-db task-chunk create --entityId <UUID> --chunkIndex <Int> --content <String> --taskId <UUID> [--embeddingText <String>] [--embedding <Vector>]
```

### Get a taskChunk by id

```bash
agentic-db task-chunk get --id <value>
```
