# itineraryItemsChunk

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for ItineraryItemsChunk records via agentic-db CLI

**Unified Search API fields:** `searchScore`
Fields provided by the Unified Search plugin. Includes full-text search (tsvector/BM25), trigram similarity scores, and the combined searchScore. Computed fields are read-only and cannot be set in create/update operations.

## Usage

```bash
agentic-db itinerary-items-chunk list
agentic-db itinerary-items-chunk get --id <UUID>
agentic-db itinerary-items-chunk create --itineraryItemsId <UUID> --content <String> [--chunkIndex <Int>] [--embedding <Vector>] [--metadata <JSON>]
agentic-db itinerary-items-chunk update --id <UUID> [--itineraryItemsId <UUID>] [--content <String>] [--chunkIndex <Int>] [--embedding <Vector>] [--metadata <JSON>]
agentic-db itinerary-items-chunk delete --id <UUID>
```

## Examples

### List all itineraryItemsChunk records

```bash
agentic-db itinerary-items-chunk list
```

### Create a itineraryItemsChunk

```bash
agentic-db itinerary-items-chunk create --itineraryItemsId <UUID> --content <String> [--chunkIndex <Int>] [--embedding <Vector>] [--metadata <JSON>]
```

### Get a itineraryItemsChunk by id

```bash
agentic-db itinerary-items-chunk get --id <value>
```
