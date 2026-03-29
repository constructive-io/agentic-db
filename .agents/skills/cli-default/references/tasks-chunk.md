# tasksChunk

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for TasksChunk records via agentic-db CLI

**Unified Search API fields:** `searchScore`
Fields provided by the Unified Search plugin. Includes full-text search (tsvector/BM25), trigram similarity scores, and the combined searchScore. Computed fields are read-only and cannot be set in create/update operations.

## Usage

```bash
agentic-db tasks-chunk list
agentic-db tasks-chunk get --id <UUID>
agentic-db tasks-chunk create --entityId <UUID> --tasksId <UUID> --content <String> --taskId <UUID> [--chunkIndex <Int>] [--embedding <Vector>] [--metadata <JSON>]
agentic-db tasks-chunk update --id <UUID> [--entityId <UUID>] [--tasksId <UUID>] [--content <String>] [--chunkIndex <Int>] [--embedding <Vector>] [--metadata <JSON>] [--taskId <UUID>]
agentic-db tasks-chunk delete --id <UUID>
```

## Examples

### List all tasksChunk records

```bash
agentic-db tasks-chunk list
```

### Create a tasksChunk

```bash
agentic-db tasks-chunk create --entityId <UUID> --tasksId <UUID> --content <String> --taskId <UUID> [--chunkIndex <Int>] [--embedding <Vector>] [--metadata <JSON>]
```

### Get a tasksChunk by id

```bash
agentic-db tasks-chunk get --id <value>
```
