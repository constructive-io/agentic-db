# tripsChunk

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for TripsChunk records via agentic-db CLI

**Unified Search API fields:** `searchScore`
Fields provided by the Unified Search plugin. Includes full-text search (tsvector/BM25), trigram similarity scores, and the combined searchScore. Computed fields are read-only and cannot be set in create/update operations.

## Usage

```bash
agentic-db trips-chunk list
agentic-db trips-chunk get --id <UUID>
agentic-db trips-chunk create --tripsId <UUID> --content <String> [--chunkIndex <Int>] [--embedding <Vector>] [--metadata <JSON>]
agentic-db trips-chunk update --id <UUID> [--tripsId <UUID>] [--content <String>] [--chunkIndex <Int>] [--embedding <Vector>] [--metadata <JSON>]
agentic-db trips-chunk delete --id <UUID>
```

## Examples

### List all tripsChunk records

```bash
agentic-db trips-chunk list
```

### Create a tripsChunk

```bash
agentic-db trips-chunk create --tripsId <UUID> --content <String> [--chunkIndex <Int>] [--embedding <Vector>] [--metadata <JSON>]
```

### Get a tripsChunk by id

```bash
agentic-db trips-chunk get --id <value>
```
