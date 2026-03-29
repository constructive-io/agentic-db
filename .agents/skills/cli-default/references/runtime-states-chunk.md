# runtimeStatesChunk

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for RuntimeStatesChunk records via agentic-db CLI

**Unified Search API fields:** `searchScore`
Fields provided by the Unified Search plugin. Includes full-text search (tsvector/BM25), trigram similarity scores, and the combined searchScore. Computed fields are read-only and cannot be set in create/update operations.

## Usage

```bash
agentic-db runtime-states-chunk list
agentic-db runtime-states-chunk get --id <UUID>
agentic-db runtime-states-chunk create --runtimeStatesId <UUID> --content <String> [--chunkIndex <Int>] [--embedding <Vector>] [--metadata <JSON>]
agentic-db runtime-states-chunk update --id <UUID> [--runtimeStatesId <UUID>] [--content <String>] [--chunkIndex <Int>] [--embedding <Vector>] [--metadata <JSON>]
agentic-db runtime-states-chunk delete --id <UUID>
```

## Examples

### List all runtimeStatesChunk records

```bash
agentic-db runtime-states-chunk list
```

### Create a runtimeStatesChunk

```bash
agentic-db runtime-states-chunk create --runtimeStatesId <UUID> --content <String> [--chunkIndex <Int>] [--embedding <Vector>] [--metadata <JSON>]
```

### Get a runtimeStatesChunk by id

```bash
agentic-db runtime-states-chunk get --id <value>
```
