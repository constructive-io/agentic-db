# touchpointsChunk

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for TouchpointsChunk records via agentic-db CLI

**Unified Search API fields:** `searchScore`
Fields provided by the Unified Search plugin. Includes full-text search (tsvector/BM25), trigram similarity scores, and the combined searchScore. Computed fields are read-only and cannot be set in create/update operations.

## Usage

```bash
agentic-db touchpoints-chunk list
agentic-db touchpoints-chunk get --id <UUID>
agentic-db touchpoints-chunk create --entityId <UUID> --touchpointsId <UUID> --content <String> --touchpointId <UUID> [--chunkIndex <Int>] [--embedding <Vector>] [--metadata <JSON>]
agentic-db touchpoints-chunk update --id <UUID> [--entityId <UUID>] [--touchpointsId <UUID>] [--content <String>] [--chunkIndex <Int>] [--embedding <Vector>] [--metadata <JSON>] [--touchpointId <UUID>]
agentic-db touchpoints-chunk delete --id <UUID>
```

## Examples

### List all touchpointsChunk records

```bash
agentic-db touchpoints-chunk list
```

### Create a touchpointsChunk

```bash
agentic-db touchpoints-chunk create --entityId <UUID> --touchpointsId <UUID> --content <String> --touchpointId <UUID> [--chunkIndex <Int>] [--embedding <Vector>] [--metadata <JSON>]
```

### Get a touchpointsChunk by id

```bash
agentic-db touchpoints-chunk get --id <value>
```
