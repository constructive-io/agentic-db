# autonomyRecordChunk

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for AutonomyRecordChunk records via agentic-db CLI

**Unified Search API fields:** `embeddingTextBm25Score`, `contentTrgmSimilarity`, `embeddingTextTrgmSimilarity`, `searchScore`
Fields provided by the Unified Search plugin. Includes full-text search (tsvector/BM25), trigram similarity scores, and the combined searchScore. Computed fields are read-only and cannot be set in create/update operations.

## Usage

```bash
agentic-db autonomy-record-chunk list
agentic-db autonomy-record-chunk get --id <UUID>
agentic-db autonomy-record-chunk create --entityId <UUID> --chunkIndex <Int> --content <String> --autonomyRecordId <UUID> [--embeddingText <String>] [--embedding <Vector>] [--embeddingStale <Boolean>]
agentic-db autonomy-record-chunk update --id <UUID> [--entityId <UUID>] [--chunkIndex <Int>] [--content <String>] [--embeddingText <String>] [--embedding <Vector>] [--embeddingStale <Boolean>] [--autonomyRecordId <UUID>]
agentic-db autonomy-record-chunk delete --id <UUID>
```

## Examples

### List all autonomyRecordChunk records

```bash
agentic-db autonomy-record-chunk list
```

### Create a autonomyRecordChunk

```bash
agentic-db autonomy-record-chunk create --entityId <UUID> --chunkIndex <Int> --content <String> --autonomyRecordId <UUID> [--embeddingText <String>] [--embedding <Vector>] [--embeddingStale <Boolean>]
```

### Get a autonomyRecordChunk by id

```bash
agentic-db autonomy-record-chunk get --id <value>
```
