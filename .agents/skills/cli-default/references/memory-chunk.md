# memoryChunk

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for MemoryChunk records via agentic-db CLI

**Unified Search API fields:** `searchScore`
Fields provided by the Unified Search plugin. Includes full-text search (tsvector/BM25), trigram similarity scores, and the combined searchScore. Computed fields are read-only and cannot be set in create/update operations.

## Usage

```bash
agentic-db memory-chunk list
agentic-db memory-chunk get --id <UUID>
agentic-db memory-chunk create --entityId <UUID> --chunkIndex <Int> --content <String> --memoryId <UUID> [--embeddingText <String>] [--embedding <Vector>] [--embeddingStale <Boolean>]
agentic-db memory-chunk update --id <UUID> [--entityId <UUID>] [--chunkIndex <Int>] [--content <String>] [--embeddingText <String>] [--embedding <Vector>] [--embeddingStale <Boolean>] [--memoryId <UUID>]
agentic-db memory-chunk delete --id <UUID>
```

## Examples

### List all memoryChunk records

```bash
agentic-db memory-chunk list
```

### Create a memoryChunk

```bash
agentic-db memory-chunk create --entityId <UUID> --chunkIndex <Int> --content <String> --memoryId <UUID> [--embeddingText <String>] [--embedding <Vector>] [--embeddingStale <Boolean>]
```

### Get a memoryChunk by id

```bash
agentic-db memory-chunk get --id <value>
```
