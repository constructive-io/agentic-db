# runtimeStateChunk

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for RuntimeStateChunk records via agentic-db CLI

**Unified Search API fields:** `searchScore`
Fields provided by the Unified Search plugin. Includes full-text search (tsvector/BM25), trigram similarity scores, and the combined searchScore. Computed fields are read-only and cannot be set in create/update operations.

## Usage

```bash
agentic-db runtime-state-chunk list
agentic-db runtime-state-chunk get --id <UUID>
agentic-db runtime-state-chunk create --entityId <UUID> --chunkIndex <Int> --content <String> --runtimeStateId <UUID> [--embeddingText <String>] [--embedding <Vector>] [--embeddingStale <Boolean>]
agentic-db runtime-state-chunk update --id <UUID> [--entityId <UUID>] [--chunkIndex <Int>] [--content <String>] [--embeddingText <String>] [--embedding <Vector>] [--embeddingStale <Boolean>] [--runtimeStateId <UUID>]
agentic-db runtime-state-chunk delete --id <UUID>
```

## Examples

### List all runtimeStateChunk records

```bash
agentic-db runtime-state-chunk list
```

### Create a runtimeStateChunk

```bash
agentic-db runtime-state-chunk create --entityId <UUID> --chunkIndex <Int> --content <String> --runtimeStateId <UUID> [--embeddingText <String>] [--embedding <Vector>] [--embeddingStale <Boolean>]
```

### Get a runtimeStateChunk by id

```bash
agentic-db runtime-state-chunk get --id <value>
```
