# placesChunk

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for PlacesChunk records via agentic-db CLI

**Unified Search API fields:** `searchScore`
Fields provided by the Unified Search plugin. Includes full-text search (tsvector/BM25), trigram similarity scores, and the combined searchScore. Computed fields are read-only and cannot be set in create/update operations.

## Usage

```bash
agentic-db places-chunk list
agentic-db places-chunk get --id <UUID>
agentic-db places-chunk create --entityId <UUID> --placesId <UUID> --content <String> --placeId <UUID> [--chunkIndex <Int>] [--embedding <Vector>] [--metadata <JSON>]
agentic-db places-chunk update --id <UUID> [--entityId <UUID>] [--placesId <UUID>] [--content <String>] [--chunkIndex <Int>] [--embedding <Vector>] [--metadata <JSON>] [--placeId <UUID>]
agentic-db places-chunk delete --id <UUID>
```

## Examples

### List all placesChunk records

```bash
agentic-db places-chunk list
```

### Create a placesChunk

```bash
agentic-db places-chunk create --entityId <UUID> --placesId <UUID> --content <String> --placeId <UUID> [--chunkIndex <Int>] [--embedding <Vector>] [--metadata <JSON>]
```

### Get a placesChunk by id

```bash
agentic-db places-chunk get --id <value>
```
