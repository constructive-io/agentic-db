# conversationsChunk

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for ConversationsChunk records via agentic-db CLI

**Unified Search API fields:** `searchScore`
Fields provided by the Unified Search plugin. Includes full-text search (tsvector/BM25), trigram similarity scores, and the combined searchScore. Computed fields are read-only and cannot be set in create/update operations.

## Usage

```bash
agentic-db conversations-chunk list
agentic-db conversations-chunk get --id <UUID>
agentic-db conversations-chunk create --conversationsId <UUID> --content <String> [--chunkIndex <Int>] [--embedding <Vector>] [--metadata <JSON>]
agentic-db conversations-chunk update --id <UUID> [--conversationsId <UUID>] [--content <String>] [--chunkIndex <Int>] [--embedding <Vector>] [--metadata <JSON>]
agentic-db conversations-chunk delete --id <UUID>
```

## Examples

### List all conversationsChunk records

```bash
agentic-db conversations-chunk list
```

### Create a conversationsChunk

```bash
agentic-db conversations-chunk create --conversationsId <UUID> --content <String> [--chunkIndex <Int>] [--embedding <Vector>] [--metadata <JSON>]
```

### Get a conversationsChunk by id

```bash
agentic-db conversations-chunk get --id <value>
```
