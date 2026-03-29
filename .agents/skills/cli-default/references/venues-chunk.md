# venuesChunk

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for VenuesChunk records via agentic-db CLI

**Unified Search API fields:** `searchScore`
Fields provided by the Unified Search plugin. Includes full-text search (tsvector/BM25), trigram similarity scores, and the combined searchScore. Computed fields are read-only and cannot be set in create/update operations.

## Usage

```bash
agentic-db venues-chunk list
agentic-db venues-chunk get --id <UUID>
agentic-db venues-chunk create --venuesId <UUID> --content <String> [--chunkIndex <Int>] [--embedding <Vector>] [--metadata <JSON>]
agentic-db venues-chunk update --id <UUID> [--venuesId <UUID>] [--content <String>] [--chunkIndex <Int>] [--embedding <Vector>] [--metadata <JSON>]
agentic-db venues-chunk delete --id <UUID>
```

## Examples

### List all venuesChunk records

```bash
agentic-db venues-chunk list
```

### Create a venuesChunk

```bash
agentic-db venues-chunk create --venuesId <UUID> --content <String> [--chunkIndex <Int>] [--embedding <Vector>] [--metadata <JSON>]
```

### Get a venuesChunk by id

```bash
agentic-db venues-chunk get --id <value>
```
