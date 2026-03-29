# activityLogsChunk

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for ActivityLogsChunk records via agentic-db CLI

**Unified Search API fields:** `searchScore`
Fields provided by the Unified Search plugin. Includes full-text search (tsvector/BM25), trigram similarity scores, and the combined searchScore. Computed fields are read-only and cannot be set in create/update operations.

## Usage

```bash
agentic-db activity-logs-chunk list
agentic-db activity-logs-chunk get --id <UUID>
agentic-db activity-logs-chunk create --entityId <UUID> --activityLogsId <UUID> --content <String> --activityLogId <UUID> [--chunkIndex <Int>] [--embedding <Vector>] [--metadata <JSON>]
agentic-db activity-logs-chunk update --id <UUID> [--entityId <UUID>] [--activityLogsId <UUID>] [--content <String>] [--chunkIndex <Int>] [--embedding <Vector>] [--metadata <JSON>] [--activityLogId <UUID>]
agentic-db activity-logs-chunk delete --id <UUID>
```

## Examples

### List all activityLogsChunk records

```bash
agentic-db activity-logs-chunk list
```

### Create a activityLogsChunk

```bash
agentic-db activity-logs-chunk create --entityId <UUID> --activityLogsId <UUID> --content <String> --activityLogId <UUID> [--chunkIndex <Int>] [--embedding <Vector>] [--metadata <JSON>]
```

### Get a activityLogsChunk by id

```bash
agentic-db activity-logs-chunk get --id <value>
```
