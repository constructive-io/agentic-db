# hikingTrailChunk

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for HikingTrailChunk records via agentic-db CLI

**Unified Search API fields:** `embeddingTextBm25Score`, `contentTrgmSimilarity`, `embeddingTextTrgmSimilarity`, `searchScore`
Fields provided by the Unified Search plugin. Includes full-text search (tsvector/BM25), trigram similarity scores, and the combined searchScore. Computed fields are read-only and cannot be set in create/update operations.

## Usage

```bash
agentic-db hiking-trail-chunk list
agentic-db hiking-trail-chunk get --id <UUID>
agentic-db hiking-trail-chunk create --entityId <UUID> --chunkIndex <Int> --content <String> --hikingTrailId <UUID> [--embeddingText <String>] [--embedding <Vector>] [--embeddingStale <Boolean>]
agentic-db hiking-trail-chunk update --id <UUID> [--entityId <UUID>] [--chunkIndex <Int>] [--content <String>] [--embeddingText <String>] [--embedding <Vector>] [--embeddingStale <Boolean>] [--hikingTrailId <UUID>]
agentic-db hiking-trail-chunk delete --id <UUID>
```

## Examples

### List all hikingTrailChunk records

```bash
agentic-db hiking-trail-chunk list
```

### Create a hikingTrailChunk

```bash
agentic-db hiking-trail-chunk create --entityId <UUID> --chunkIndex <Int> --content <String> --hikingTrailId <UUID> [--embeddingText <String>] [--embedding <Vector>] [--embeddingStale <Boolean>]
```

### Get a hikingTrailChunk by id

```bash
agentic-db hiking-trail-chunk get --id <value>
```
