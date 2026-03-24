# emailThreadsChunk

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for EmailThreadsChunk records via agentic-db CLI

**Unified Search API fields:** `searchScore`
Fields provided by the Unified Search plugin. Includes full-text search (tsvector/BM25), trigram similarity scores, and the combined searchScore. Computed fields are read-only and cannot be set in create/update operations.

## Usage

```bash
agentic-db email-threads-chunk list
agentic-db email-threads-chunk get --id <UUID>
agentic-db email-threads-chunk create --emailThreadsId <UUID> --content <String> [--chunkIndex <Int>] [--embedding <Vector>] [--metadata <JSON>]
agentic-db email-threads-chunk update --id <UUID> [--emailThreadsId <UUID>] [--content <String>] [--chunkIndex <Int>] [--embedding <Vector>] [--metadata <JSON>]
agentic-db email-threads-chunk delete --id <UUID>
```

## Examples

### List all emailThreadsChunk records

```bash
agentic-db email-threads-chunk list
```

### Create a emailThreadsChunk

```bash
agentic-db email-threads-chunk create --emailThreadsId <UUID> --content <String> [--chunkIndex <Int>] [--embedding <Vector>] [--metadata <JSON>]
```

### Get a emailThreadsChunk by id

```bash
agentic-db email-threads-chunk get --id <value>
```
