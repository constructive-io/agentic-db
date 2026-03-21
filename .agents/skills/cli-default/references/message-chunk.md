# messageChunk

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for MessageChunk records via agentic-db CLI

**Unified Search API fields:** `embeddingTextBm25Score`, `contentTrgmSimilarity`, `embeddingTextTrgmSimilarity`, `searchScore`
Fields provided by the Unified Search plugin. Includes full-text search (tsvector/BM25), trigram similarity scores, and the combined searchScore. Computed fields are read-only and cannot be set in create/update operations.

## Usage

```bash
agentic-db message-chunk list
agentic-db message-chunk get --id <UUID>
agentic-db message-chunk create --entityId <UUID> --chunkIndex <Int> --content <String> --messageId <UUID> [--embeddingText <String>] [--embedding <Vector>]
agentic-db message-chunk update --id <UUID> [--entityId <UUID>] [--chunkIndex <Int>] [--content <String>] [--embeddingText <String>] [--embedding <Vector>] [--messageId <UUID>]
agentic-db message-chunk delete --id <UUID>
```

## Examples

### List all messageChunk records

```bash
agentic-db message-chunk list
```

### Create a messageChunk

```bash
agentic-db message-chunk create --entityId <UUID> --chunkIndex <Int> --content <String> --messageId <UUID> [--embeddingText <String>] [--embedding <Vector>]
```

### Get a messageChunk by id

```bash
agentic-db message-chunk get --id <value>
```
