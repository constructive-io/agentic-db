# memoriesChunk

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for MemoriesChunk records via agentic-db CLI

**Unified Search API fields:** `searchScore`
Fields provided by the Unified Search plugin. Includes full-text search (tsvector/BM25), trigram similarity scores, and the combined searchScore. Computed fields are read-only and cannot be set in create/update operations.

## Usage

```bash
agentic-db memories-chunk list
agentic-db memories-chunk get --id <UUID>
agentic-db memories-chunk create --memoriesId <UUID> --content <String> [--chunkIndex <Int>] [--embedding <Vector>] [--metadata <JSON>]
agentic-db memories-chunk update --id <UUID> [--memoriesId <UUID>] [--content <String>] [--chunkIndex <Int>] [--embedding <Vector>] [--metadata <JSON>]
agentic-db memories-chunk delete --id <UUID>
```

## Examples

### List all memoriesChunk records

```bash
agentic-db memories-chunk list
```

### Create a memoriesChunk

```bash
agentic-db memories-chunk create --memoriesId <UUID> --content <String> [--chunkIndex <Int>] [--embedding <Vector>] [--metadata <JSON>]
```

### Get a memoriesChunk by id

```bash
agentic-db memories-chunk get --id <value>
```
