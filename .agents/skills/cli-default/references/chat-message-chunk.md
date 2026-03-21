# chatMessageChunk

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for ChatMessageChunk records via agentic-db CLI

**Unified Search API fields:** `embeddingTextBm25Score`, `contentTrgmSimilarity`, `embeddingTextTrgmSimilarity`, `searchScore`
Fields provided by the Unified Search plugin. Includes full-text search (tsvector/BM25), trigram similarity scores, and the combined searchScore. Computed fields are read-only and cannot be set in create/update operations.

## Usage

```bash
agentic-db chat-message-chunk list
agentic-db chat-message-chunk get --id <UUID>
agentic-db chat-message-chunk create --entityId <UUID> --chunkIndex <Int> --content <String> --chatMessageId <UUID> [--embeddingText <String>] [--embedding <Vector>]
agentic-db chat-message-chunk update --id <UUID> [--entityId <UUID>] [--chunkIndex <Int>] [--content <String>] [--embeddingText <String>] [--embedding <Vector>] [--chatMessageId <UUID>]
agentic-db chat-message-chunk delete --id <UUID>
```

## Examples

### List all chatMessageChunk records

```bash
agentic-db chat-message-chunk list
```

### Create a chatMessageChunk

```bash
agentic-db chat-message-chunk create --entityId <UUID> --chunkIndex <Int> --content <String> --chatMessageId <UUID> [--embeddingText <String>] [--embedding <Vector>]
```

### Get a chatMessageChunk by id

```bash
agentic-db chat-message-chunk get --id <value>
```
