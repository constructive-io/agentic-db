# eventsChunk

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for EventsChunk records via agentic-db CLI

**Unified Search API fields:** `searchScore`
Fields provided by the Unified Search plugin. Includes full-text search (tsvector/BM25), trigram similarity scores, and the combined searchScore. Computed fields are read-only and cannot be set in create/update operations.

## Usage

```bash
agentic-db events-chunk list
agentic-db events-chunk get --id <UUID>
agentic-db events-chunk create --eventsId <UUID> --content <String> [--chunkIndex <Int>] [--embedding <Vector>] [--metadata <JSON>]
agentic-db events-chunk update --id <UUID> [--eventsId <UUID>] [--content <String>] [--chunkIndex <Int>] [--embedding <Vector>] [--metadata <JSON>]
agentic-db events-chunk delete --id <UUID>
```

## Examples

### List all eventsChunk records

```bash
agentic-db events-chunk list
```

### Create a eventsChunk

```bash
agentic-db events-chunk create --eventsId <UUID> --content <String> [--chunkIndex <Int>] [--embedding <Vector>] [--metadata <JSON>]
```

### Get a eventsChunk by id

```bash
agentic-db events-chunk get --id <value>
```
