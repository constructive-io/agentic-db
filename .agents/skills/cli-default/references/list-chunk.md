# listChunk

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for ListChunk records via agentic-db CLI

**Unified Search API fields:** `embeddingTextBm25Score`, `contentTrgmSimilarity`, `embeddingTextTrgmSimilarity`, `searchScore`
Fields provided by the Unified Search plugin. Includes full-text search (tsvector/BM25), trigram similarity scores, and the combined searchScore. Computed fields are read-only and cannot be set in create/update operations.

## Usage

```bash
agentic-db list-chunk list
agentic-db list-chunk get --id <UUID>
agentic-db list-chunk create --entityId <UUID> --chunkIndex <Int> --content <String> --listId <UUID> [--embeddingText <String>] [--embedding <Vector>]
agentic-db list-chunk update --id <UUID> [--entityId <UUID>] [--chunkIndex <Int>] [--content <String>] [--embeddingText <String>] [--embedding <Vector>] [--listId <UUID>]
agentic-db list-chunk delete --id <UUID>
```

## Examples

### List all listChunk records

```bash
agentic-db list-chunk list
```

### Create a listChunk

```bash
agentic-db list-chunk create --entityId <UUID> --chunkIndex <Int> --content <String> --listId <UUID> [--embeddingText <String>] [--embedding <Vector>]
```

### Get a listChunk by id

```bash
agentic-db list-chunk get --id <value>
```
