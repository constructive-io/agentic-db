# placeChunk

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for PlaceChunk records via agentic-db CLI

**Unified Search API fields:** `embeddingTextBm25Score`, `contentTrgmSimilarity`, `embeddingTextTrgmSimilarity`, `searchScore`
Fields provided by the Unified Search plugin. Includes full-text search (tsvector/BM25), trigram similarity scores, and the combined searchScore. Computed fields are read-only and cannot be set in create/update operations.

## Usage

```bash
agentic-db place-chunk list
agentic-db place-chunk get --id <UUID>
agentic-db place-chunk create --entityId <UUID> --chunkIndex <Int> --content <String> --placeId <UUID> [--embeddingText <String>] [--embedding <Vector>] [--embeddingStale <Boolean>]
agentic-db place-chunk update --id <UUID> [--entityId <UUID>] [--chunkIndex <Int>] [--content <String>] [--embeddingText <String>] [--embedding <Vector>] [--embeddingStale <Boolean>] [--placeId <UUID>]
agentic-db place-chunk delete --id <UUID>
```

## Examples

### List all placeChunk records

```bash
agentic-db place-chunk list
```

### Create a placeChunk

```bash
agentic-db place-chunk create --entityId <UUID> --chunkIndex <Int> --content <String> --placeId <UUID> [--embeddingText <String>] [--embedding <Vector>] [--embeddingStale <Boolean>]
```

### Get a placeChunk by id

```bash
agentic-db place-chunk get --id <value>
```
