# dealChunk

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for DealChunk records via agentic-db CLI

**Unified Search API fields:** `embeddingTextBm25Score`, `contentTrgmSimilarity`, `embeddingTextTrgmSimilarity`, `searchScore`
Fields provided by the Unified Search plugin. Includes full-text search (tsvector/BM25), trigram similarity scores, and the combined searchScore. Computed fields are read-only and cannot be set in create/update operations.

## Usage

```bash
agentic-db deal-chunk list
agentic-db deal-chunk get --id <UUID>
agentic-db deal-chunk create --entityId <UUID> --chunkIndex <Int> --content <String> --dealId <UUID> [--embeddingText <String>] [--embedding <Vector>] [--embeddingStale <Boolean>]
agentic-db deal-chunk update --id <UUID> [--entityId <UUID>] [--chunkIndex <Int>] [--content <String>] [--embeddingText <String>] [--embedding <Vector>] [--embeddingStale <Boolean>] [--dealId <UUID>]
agentic-db deal-chunk delete --id <UUID>
```

## Examples

### List all dealChunk records

```bash
agentic-db deal-chunk list
```

### Create a dealChunk

```bash
agentic-db deal-chunk create --entityId <UUID> --chunkIndex <Int> --content <String> --dealId <UUID> [--embeddingText <String>] [--embedding <Vector>] [--embeddingStale <Boolean>]
```

### Get a dealChunk by id

```bash
agentic-db deal-chunk get --id <value>
```
