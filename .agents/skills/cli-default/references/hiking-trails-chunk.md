# hikingTrailsChunk

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for HikingTrailsChunk records via agentic-db CLI

**Unified Search API fields:** `searchScore`
Fields provided by the Unified Search plugin. Includes full-text search (tsvector/BM25), trigram similarity scores, and the combined searchScore. Computed fields are read-only and cannot be set in create/update operations.

## Usage

```bash
agentic-db hiking-trails-chunk list
agentic-db hiking-trails-chunk get --id <UUID>
agentic-db hiking-trails-chunk create --hikingTrailsId <UUID> --content <String> [--chunkIndex <Int>] [--embedding <Vector>] [--metadata <JSON>]
agentic-db hiking-trails-chunk update --id <UUID> [--hikingTrailsId <UUID>] [--content <String>] [--chunkIndex <Int>] [--embedding <Vector>] [--metadata <JSON>]
agentic-db hiking-trails-chunk delete --id <UUID>
```

## Examples

### List all hikingTrailsChunk records

```bash
agentic-db hiking-trails-chunk list
```

### Create a hikingTrailsChunk

```bash
agentic-db hiking-trails-chunk create --hikingTrailsId <UUID> --content <String> [--chunkIndex <Int>] [--embedding <Vector>] [--metadata <JSON>]
```

### Get a hikingTrailsChunk by id

```bash
agentic-db hiking-trails-chunk get --id <value>
```
