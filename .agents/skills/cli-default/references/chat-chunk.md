# chatChunk

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for ChatChunk records via agentic-db CLI

**Unified Search API fields:** `embeddingTextBm25Score`, `contentTrgmSimilarity`, `embeddingTextTrgmSimilarity`, `searchScore`
Fields provided by the Unified Search plugin. Includes full-text search (tsvector/BM25), trigram similarity scores, and the combined searchScore. Computed fields are read-only and cannot be set in create/update operations.

## Usage

```bash
agentic-db chat-chunk list
agentic-db chat-chunk get --id <UUID>
agentic-db chat-chunk create --entityId <UUID> --chunkIndex <Int> --content <String> --chatId <UUID> [--embeddingText <String>] [--embedding <Vector>]
agentic-db chat-chunk update --id <UUID> [--entityId <UUID>] [--chunkIndex <Int>] [--content <String>] [--embeddingText <String>] [--embedding <Vector>] [--chatId <UUID>]
agentic-db chat-chunk delete --id <UUID>
```

## Examples

### List all chatChunk records

```bash
agentic-db chat-chunk list
```

### Create a chatChunk

```bash
agentic-db chat-chunk create --entityId <UUID> --chunkIndex <Int> --content <String> --chatId <UUID> [--embeddingText <String>] [--embedding <Vector>]
```

### Get a chatChunk by id

```bash
agentic-db chat-chunk get --id <value>
```
