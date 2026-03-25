# embeddingChunk

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for EmbeddingChunk records via agentic-db CLI

## Usage

```bash
agentic-db embedding-chunk list
agentic-db embedding-chunk get --id <UUID>
agentic-db embedding-chunk create --tableId <UUID> [--databaseId <UUID>] [--embeddingFieldId <UUID>] [--chunksTableId <UUID>] [--chunksTableName <String>] [--contentFieldName <String>] [--dimensions <Int>] [--metric <String>] [--chunkSize <Int>] [--chunkOverlap <Int>] [--chunkStrategy <String>] [--metadataFields <JSON>] [--enqueueChunkingJob <Boolean>] [--chunkingTaskName <String>] [--parentFkFieldId <UUID>]
agentic-db embedding-chunk update --id <UUID> [--databaseId <UUID>] [--tableId <UUID>] [--embeddingFieldId <UUID>] [--chunksTableId <UUID>] [--chunksTableName <String>] [--contentFieldName <String>] [--dimensions <Int>] [--metric <String>] [--chunkSize <Int>] [--chunkOverlap <Int>] [--chunkStrategy <String>] [--metadataFields <JSON>] [--enqueueChunkingJob <Boolean>] [--chunkingTaskName <String>] [--parentFkFieldId <UUID>]
agentic-db embedding-chunk delete --id <UUID>
```

## Examples

### List all embeddingChunk records

```bash
agentic-db embedding-chunk list
```

### Create a embeddingChunk

```bash
agentic-db embedding-chunk create --tableId <UUID> [--databaseId <UUID>] [--embeddingFieldId <UUID>] [--chunksTableId <UUID>] [--chunksTableName <String>] [--contentFieldName <String>] [--dimensions <Int>] [--metric <String>] [--chunkSize <Int>] [--chunkOverlap <Int>] [--chunkStrategy <String>] [--metadataFields <JSON>] [--enqueueChunkingJob <Boolean>] [--chunkingTaskName <String>] [--parentFkFieldId <UUID>]
```

### Get a embeddingChunk by id

```bash
agentic-db embedding-chunk get --id <value>
```
