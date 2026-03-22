# tripChunk

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for TripChunk records via agentic-db CLI

**Unified Search API fields:** `searchScore`
Fields provided by the Unified Search plugin. Includes full-text search (tsvector/BM25), trigram similarity scores, and the combined searchScore. Computed fields are read-only and cannot be set in create/update operations.

## Usage

```bash
agentic-db trip-chunk list
agentic-db trip-chunk get --id <UUID>
agentic-db trip-chunk create --entityId <UUID> --chunkIndex <Int> --content <String> --tripId <UUID> [--embeddingText <String>] [--embedding <Vector>] [--embeddingStale <Boolean>]
agentic-db trip-chunk update --id <UUID> [--entityId <UUID>] [--chunkIndex <Int>] [--content <String>] [--embeddingText <String>] [--embedding <Vector>] [--embeddingStale <Boolean>] [--tripId <UUID>]
agentic-db trip-chunk delete --id <UUID>
```

## Examples

### List all tripChunk records

```bash
agentic-db trip-chunk list
```

### Create a tripChunk

```bash
agentic-db trip-chunk create --entityId <UUID> --chunkIndex <Int> --content <String> --tripId <UUID> [--embeddingText <String>] [--embedding <Vector>] [--embeddingStale <Boolean>]
```

### Get a tripChunk by id

```bash
agentic-db trip-chunk get --id <value>
```
