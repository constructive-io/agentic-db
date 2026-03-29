# runtimeLogsChunk

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for RuntimeLogsChunk records via agentic-db CLI

**Unified Search API fields:** `searchScore`
Fields provided by the Unified Search plugin. Includes full-text search (tsvector/BM25), trigram similarity scores, and the combined searchScore. Computed fields are read-only and cannot be set in create/update operations.

## Usage

```bash
agentic-db runtime-logs-chunk list
agentic-db runtime-logs-chunk get --id <UUID>
agentic-db runtime-logs-chunk create --entityId <UUID> --runtimeLogsId <UUID> --content <String> --runtimeLogId <UUID> [--chunkIndex <Int>] [--embedding <Vector>] [--metadata <JSON>]
agentic-db runtime-logs-chunk update --id <UUID> [--entityId <UUID>] [--runtimeLogsId <UUID>] [--content <String>] [--chunkIndex <Int>] [--embedding <Vector>] [--metadata <JSON>] [--runtimeLogId <UUID>]
agentic-db runtime-logs-chunk delete --id <UUID>
```

## Examples

### List all runtimeLogsChunk records

```bash
agentic-db runtime-logs-chunk list
```

### Create a runtimeLogsChunk

```bash
agentic-db runtime-logs-chunk create --entityId <UUID> --runtimeLogsId <UUID> --content <String> --runtimeLogId <UUID> [--chunkIndex <Int>] [--embedding <Vector>] [--metadata <JSON>]
```

### Get a runtimeLogsChunk by id

```bash
agentic-db runtime-logs-chunk get --id <value>
```
