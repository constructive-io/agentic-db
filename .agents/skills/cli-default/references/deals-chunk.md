# dealsChunk

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for DealsChunk records via agentic-db CLI

**Unified Search API fields:** `searchScore`
Fields provided by the Unified Search plugin. Includes full-text search (tsvector/BM25), trigram similarity scores, and the combined searchScore. Computed fields are read-only and cannot be set in create/update operations.

## Usage

```bash
agentic-db deals-chunk list
agentic-db deals-chunk get --id <UUID>
agentic-db deals-chunk create --entityId <UUID> --dealsId <UUID> --content <String> --dealId <UUID> [--chunkIndex <Int>] [--embedding <Vector>] [--metadata <JSON>]
agentic-db deals-chunk update --id <UUID> [--entityId <UUID>] [--dealsId <UUID>] [--content <String>] [--chunkIndex <Int>] [--embedding <Vector>] [--metadata <JSON>] [--dealId <UUID>]
agentic-db deals-chunk delete --id <UUID>
```

## Examples

### List all dealsChunk records

```bash
agentic-db deals-chunk list
```

### Create a dealsChunk

```bash
agentic-db deals-chunk create --entityId <UUID> --dealsId <UUID> --content <String> --dealId <UUID> [--chunkIndex <Int>] [--embedding <Vector>] [--metadata <JSON>]
```

### Get a dealsChunk by id

```bash
agentic-db deals-chunk get --id <value>
```
