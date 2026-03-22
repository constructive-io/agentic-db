# itineraryItemChunk

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for ItineraryItemChunk records via agentic-db CLI

**Unified Search API fields:** `embeddingTextBm25Score`, `contentTrgmSimilarity`, `embeddingTextTrgmSimilarity`, `searchScore`
Fields provided by the Unified Search plugin. Includes full-text search (tsvector/BM25), trigram similarity scores, and the combined searchScore. Computed fields are read-only and cannot be set in create/update operations.

## Usage

```bash
agentic-db itinerary-item-chunk list
agentic-db itinerary-item-chunk get --id <UUID>
agentic-db itinerary-item-chunk create --entityId <UUID> --chunkIndex <Int> --content <String> --itineraryItemId <UUID> [--embeddingText <String>] [--embedding <Vector>] [--embeddingStale <Boolean>]
agentic-db itinerary-item-chunk update --id <UUID> [--entityId <UUID>] [--chunkIndex <Int>] [--content <String>] [--embeddingText <String>] [--embedding <Vector>] [--embeddingStale <Boolean>] [--itineraryItemId <UUID>]
agentic-db itinerary-item-chunk delete --id <UUID>
```

## Examples

### List all itineraryItemChunk records

```bash
agentic-db itinerary-item-chunk list
```

### Create a itineraryItemChunk

```bash
agentic-db itinerary-item-chunk create --entityId <UUID> --chunkIndex <Int> --content <String> --itineraryItemId <UUID> [--embeddingText <String>] [--embedding <Vector>] [--embeddingStale <Boolean>]
```

### Get a itineraryItemChunk by id

```bash
agentic-db itinerary-item-chunk get --id <value>
```
