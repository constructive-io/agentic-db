# autonomyRecordsChunk

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for AutonomyRecordsChunk records via agentic-db CLI

**Unified Search API fields:** `searchScore`
Fields provided by the Unified Search plugin. Includes full-text search (tsvector/BM25), trigram similarity scores, and the combined searchScore. Computed fields are read-only and cannot be set in create/update operations.

## Usage

```bash
agentic-db autonomy-records-chunk list
agentic-db autonomy-records-chunk get --id <UUID>
agentic-db autonomy-records-chunk create --entityId <UUID> --autonomyRecordsId <UUID> --content <String> --autonomyRecordId <UUID> [--chunkIndex <Int>] [--embedding <Vector>] [--metadata <JSON>]
agentic-db autonomy-records-chunk update --id <UUID> [--entityId <UUID>] [--autonomyRecordsId <UUID>] [--content <String>] [--chunkIndex <Int>] [--embedding <Vector>] [--metadata <JSON>] [--autonomyRecordId <UUID>]
agentic-db autonomy-records-chunk delete --id <UUID>
```

## Examples

### List all autonomyRecordsChunk records

```bash
agentic-db autonomy-records-chunk list
```

### Create a autonomyRecordsChunk

```bash
agentic-db autonomy-records-chunk create --entityId <UUID> --autonomyRecordsId <UUID> --content <String> --autonomyRecordId <UUID> [--chunkIndex <Int>] [--embedding <Vector>] [--metadata <JSON>]
```

### Get a autonomyRecordsChunk by id

```bash
agentic-db autonomy-records-chunk get --id <value>
```
