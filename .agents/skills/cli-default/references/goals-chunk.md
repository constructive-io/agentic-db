# goalsChunk

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for GoalsChunk records via agentic-db CLI

**Unified Search API fields:** `searchScore`
Fields provided by the Unified Search plugin. Includes full-text search (tsvector/BM25), trigram similarity scores, and the combined searchScore. Computed fields are read-only and cannot be set in create/update operations.

## Usage

```bash
agentic-db goals-chunk list
agentic-db goals-chunk get --id <UUID>
agentic-db goals-chunk create --entityId <UUID> --goalsId <UUID> --content <String> --goalId <UUID> [--chunkIndex <Int>] [--embedding <Vector>] [--metadata <JSON>]
agentic-db goals-chunk update --id <UUID> [--entityId <UUID>] [--goalsId <UUID>] [--content <String>] [--chunkIndex <Int>] [--embedding <Vector>] [--metadata <JSON>] [--goalId <UUID>]
agentic-db goals-chunk delete --id <UUID>
```

## Examples

### List all goalsChunk records

```bash
agentic-db goals-chunk list
```

### Create a goalsChunk

```bash
agentic-db goals-chunk create --entityId <UUID> --goalsId <UUID> --content <String> --goalId <UUID> [--chunkIndex <Int>] [--embedding <Vector>] [--metadata <JSON>]
```

### Get a goalsChunk by id

```bash
agentic-db goals-chunk get --id <value>
```
