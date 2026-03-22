# runtimeLogChunk

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for RuntimeLogChunk records via agentic-db CLI

**Unified Search API fields:** `searchScore`
Fields provided by the Unified Search plugin. Includes full-text search (tsvector/BM25), trigram similarity scores, and the combined searchScore. Computed fields are read-only and cannot be set in create/update operations.

## Usage

```bash
agentic-db runtime-log-chunk list
agentic-db runtime-log-chunk get --id <UUID>
agentic-db runtime-log-chunk create --entityId <UUID> --chunkIndex <Int> --content <String> --runtimeLogId <UUID> [--embeddingText <String>] [--embedding <Vector>] [--embeddingStale <Boolean>]
agentic-db runtime-log-chunk update --id <UUID> [--entityId <UUID>] [--chunkIndex <Int>] [--content <String>] [--embeddingText <String>] [--embedding <Vector>] [--embeddingStale <Boolean>] [--runtimeLogId <UUID>]
agentic-db runtime-log-chunk delete --id <UUID>
```

## Examples

### List all runtimeLogChunk records

```bash
agentic-db runtime-log-chunk list
```

### Create a runtimeLogChunk

```bash
agentic-db runtime-log-chunk create --entityId <UUID> --chunkIndex <Int> --content <String> --runtimeLogId <UUID> [--embeddingText <String>] [--embedding <Vector>] [--embeddingStale <Boolean>]
```

### Get a runtimeLogChunk by id

```bash
agentic-db runtime-log-chunk get --id <value>
```
