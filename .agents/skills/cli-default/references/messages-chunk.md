# messagesChunk

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for MessagesChunk records via agentic-db CLI

**Unified Search API fields:** `searchScore`
Fields provided by the Unified Search plugin. Includes full-text search (tsvector/BM25), trigram similarity scores, and the combined searchScore. Computed fields are read-only and cannot be set in create/update operations.

## Usage

```bash
agentic-db messages-chunk list
agentic-db messages-chunk get --id <UUID>
agentic-db messages-chunk create --messagesId <UUID> --content <String> [--chunkIndex <Int>] [--embedding <Vector>] [--metadata <JSON>]
agentic-db messages-chunk update --id <UUID> [--messagesId <UUID>] [--content <String>] [--chunkIndex <Int>] [--embedding <Vector>] [--metadata <JSON>]
agentic-db messages-chunk delete --id <UUID>
```

## Examples

### List all messagesChunk records

```bash
agentic-db messages-chunk list
```

### Create a messagesChunk

```bash
agentic-db messages-chunk create --messagesId <UUID> --content <String> [--chunkIndex <Int>] [--embedding <Vector>] [--metadata <JSON>]
```

### Get a messagesChunk by id

```bash
agentic-db messages-chunk get --id <value>
```
