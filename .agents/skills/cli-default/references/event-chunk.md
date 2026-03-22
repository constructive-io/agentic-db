# eventChunk

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for EventChunk records via agentic-db CLI

**Unified Search API fields:** `embeddingTextBm25Score`, `contentTrgmSimilarity`, `embeddingTextTrgmSimilarity`, `searchScore`
Fields provided by the Unified Search plugin. Includes full-text search (tsvector/BM25), trigram similarity scores, and the combined searchScore. Computed fields are read-only and cannot be set in create/update operations.

## Usage

```bash
agentic-db event-chunk list
agentic-db event-chunk get --id <UUID>
agentic-db event-chunk create --entityId <UUID> --chunkIndex <Int> --content <String> --eventId <UUID> [--embeddingText <String>] [--embedding <Vector>] [--embeddingStale <Boolean>]
agentic-db event-chunk update --id <UUID> [--entityId <UUID>] [--chunkIndex <Int>] [--content <String>] [--embeddingText <String>] [--embedding <Vector>] [--embeddingStale <Boolean>] [--eventId <UUID>]
agentic-db event-chunk delete --id <UUID>
```

## Examples

### List all eventChunk records

```bash
agentic-db event-chunk list
```

### Create a eventChunk

```bash
agentic-db event-chunk create --entityId <UUID> --chunkIndex <Int> --content <String> --eventId <UUID> [--embeddingText <String>] [--embedding <Vector>] [--embeddingStale <Boolean>]
```

### Get a eventChunk by id

```bash
agentic-db event-chunk get --id <value>
```
