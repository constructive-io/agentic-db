# threadChunk

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for ThreadChunk records via agentic-db CLI

**Unified Search API fields:** `embeddingTextBm25Score`, `contentTrgmSimilarity`, `embeddingTextTrgmSimilarity`, `searchScore`
Fields provided by the Unified Search plugin. Includes full-text search (tsvector/BM25), trigram similarity scores, and the combined searchScore. Computed fields are read-only and cannot be set in create/update operations.

## Usage

```bash
agentic-db thread-chunk list
agentic-db thread-chunk get --id <UUID>
agentic-db thread-chunk create --entityId <UUID> --chunkIndex <Int> --content <String> --threadId <UUID> [--embeddingText <String>] [--embedding <Vector>]
agentic-db thread-chunk update --id <UUID> [--entityId <UUID>] [--chunkIndex <Int>] [--content <String>] [--embeddingText <String>] [--embedding <Vector>] [--threadId <UUID>]
agentic-db thread-chunk delete --id <UUID>
```

## Examples

### List all threadChunk records

```bash
agentic-db thread-chunk list
```

### Create a threadChunk

```bash
agentic-db thread-chunk create --entityId <UUID> --chunkIndex <Int> --content <String> --threadId <UUID> [--embeddingText <String>] [--embedding <Vector>]
```

### Get a threadChunk by id

```bash
agentic-db thread-chunk get --id <value>
```
