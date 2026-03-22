# conversationChunk

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for ConversationChunk records via agentic-db CLI

**Unified Search API fields:** `searchScore`
Fields provided by the Unified Search plugin. Includes full-text search (tsvector/BM25), trigram similarity scores, and the combined searchScore. Computed fields are read-only and cannot be set in create/update operations.

## Usage

```bash
agentic-db conversation-chunk list
agentic-db conversation-chunk get --id <UUID>
agentic-db conversation-chunk create --entityId <UUID> --chunkIndex <Int> --content <String> --conversationId <UUID> [--embeddingText <String>] [--embedding <Vector>] [--embeddingStale <Boolean>]
agentic-db conversation-chunk update --id <UUID> [--entityId <UUID>] [--chunkIndex <Int>] [--content <String>] [--embeddingText <String>] [--embedding <Vector>] [--embeddingStale <Boolean>] [--conversationId <UUID>]
agentic-db conversation-chunk delete --id <UUID>
```

## Examples

### List all conversationChunk records

```bash
agentic-db conversation-chunk list
```

### Create a conversationChunk

```bash
agentic-db conversation-chunk create --entityId <UUID> --chunkIndex <Int> --content <String> --conversationId <UUID> [--embeddingText <String>] [--embedding <Vector>] [--embeddingStale <Boolean>]
```

### Get a conversationChunk by id

```bash
agentic-db conversation-chunk get --id <value>
```
