# sessionArchiveChunk

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for SessionArchiveChunk records via agentic-db CLI

**Unified Search API fields:** `embeddingTextBm25Score`, `contentTrgmSimilarity`, `embeddingTextTrgmSimilarity`, `searchScore`
Fields provided by the Unified Search plugin. Includes full-text search (tsvector/BM25), trigram similarity scores, and the combined searchScore. Computed fields are read-only and cannot be set in create/update operations.

## Usage

```bash
agentic-db session-archive-chunk list
agentic-db session-archive-chunk get --id <UUID>
agentic-db session-archive-chunk create --entityId <UUID> --chunkIndex <Int> --content <String> --sessionArchiveId <UUID> [--embeddingText <String>] [--embedding <Vector>]
agentic-db session-archive-chunk update --id <UUID> [--entityId <UUID>] [--chunkIndex <Int>] [--content <String>] [--embeddingText <String>] [--embedding <Vector>] [--sessionArchiveId <UUID>]
agentic-db session-archive-chunk delete --id <UUID>
```

## Examples

### List all sessionArchiveChunk records

```bash
agentic-db session-archive-chunk list
```

### Create a sessionArchiveChunk

```bash
agentic-db session-archive-chunk create --entityId <UUID> --chunkIndex <Int> --content <String> --sessionArchiveId <UUID> [--embeddingText <String>] [--embedding <Vector>]
```

### Get a sessionArchiveChunk by id

```bash
agentic-db session-archive-chunk get --id <value>
```
