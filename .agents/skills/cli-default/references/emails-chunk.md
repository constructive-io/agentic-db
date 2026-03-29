# emailsChunk

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for EmailsChunk records via agentic-db CLI

**Unified Search API fields:** `searchScore`
Fields provided by the Unified Search plugin. Includes full-text search (tsvector/BM25), trigram similarity scores, and the combined searchScore. Computed fields are read-only and cannot be set in create/update operations.

## Usage

```bash
agentic-db emails-chunk list
agentic-db emails-chunk get --id <UUID>
agentic-db emails-chunk create --emailsId <UUID> --content <String> [--chunkIndex <Int>] [--embedding <Vector>] [--metadata <JSON>]
agentic-db emails-chunk update --id <UUID> [--emailsId <UUID>] [--content <String>] [--chunkIndex <Int>] [--embedding <Vector>] [--metadata <JSON>]
agentic-db emails-chunk delete --id <UUID>
```

## Examples

### List all emailsChunk records

```bash
agentic-db emails-chunk list
```

### Create a emailsChunk

```bash
agentic-db emails-chunk create --emailsId <UUID> --content <String> [--chunkIndex <Int>] [--embedding <Vector>] [--metadata <JSON>]
```

### Get a emailsChunk by id

```bash
agentic-db emails-chunk get --id <value>
```
