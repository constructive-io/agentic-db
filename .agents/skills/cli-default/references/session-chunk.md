# sessionChunk

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for SessionChunk records via agentic-db CLI

**Unified Search API fields:** `embeddingTextBm25Score`, `contentTrgmSimilarity`, `embeddingTextTrgmSimilarity`, `searchScore`
Fields provided by the Unified Search plugin. Includes full-text search (tsvector/BM25), trigram similarity scores, and the combined searchScore. Computed fields are read-only and cannot be set in create/update operations.

## Usage

```bash
agentic-db session-chunk list
agentic-db session-chunk get --id <UUID>
agentic-db session-chunk create --entityId <UUID> --chunkIndex <Int> --content <String> --sessionId <UUID> [--embeddingText <String>] [--embedding <Vector>]
agentic-db session-chunk update --id <UUID> [--entityId <UUID>] [--chunkIndex <Int>] [--content <String>] [--embeddingText <String>] [--embedding <Vector>] [--sessionId <UUID>]
agentic-db session-chunk delete --id <UUID>
```

## Examples

### List all sessionChunk records

```bash
agentic-db session-chunk list
```

### Create a sessionChunk

```bash
agentic-db session-chunk create --entityId <UUID> --chunkIndex <Int> --content <String> --sessionId <UUID> [--embeddingText <String>] [--embedding <Vector>]
```

### Get a sessionChunk by id

```bash
agentic-db session-chunk get --id <value>
```
