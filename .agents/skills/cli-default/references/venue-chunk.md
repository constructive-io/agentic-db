# venueChunk

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for VenueChunk records via agentic-db CLI

**Unified Search API fields:** `searchScore`
Fields provided by the Unified Search plugin. Includes full-text search (tsvector/BM25), trigram similarity scores, and the combined searchScore. Computed fields are read-only and cannot be set in create/update operations.

## Usage

```bash
agentic-db venue-chunk list
agentic-db venue-chunk get --id <UUID>
agentic-db venue-chunk create --entityId <UUID> --chunkIndex <Int> --content <String> --venueId <UUID> [--embeddingText <String>] [--embedding <Vector>] [--embeddingStale <Boolean>]
agentic-db venue-chunk update --id <UUID> [--entityId <UUID>] [--chunkIndex <Int>] [--content <String>] [--embeddingText <String>] [--embedding <Vector>] [--embeddingStale <Boolean>] [--venueId <UUID>]
agentic-db venue-chunk delete --id <UUID>
```

## Examples

### List all venueChunk records

```bash
agentic-db venue-chunk list
```

### Create a venueChunk

```bash
agentic-db venue-chunk create --entityId <UUID> --chunkIndex <Int> --content <String> --venueId <UUID> [--embeddingText <String>] [--embedding <Vector>] [--embeddingStale <Boolean>]
```

### Get a venueChunk by id

```bash
agentic-db venue-chunk get --id <value>
```
