# habitsChunk

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for HabitsChunk records via agentic-db CLI

**Unified Search API fields:** `searchScore`
Fields provided by the Unified Search plugin. Includes full-text search (tsvector/BM25), trigram similarity scores, and the combined searchScore. Computed fields are read-only and cannot be set in create/update operations.

## Usage

```bash
agentic-db habits-chunk list
agentic-db habits-chunk get --id <UUID>
agentic-db habits-chunk create --habitsId <UUID> --content <String> [--chunkIndex <Int>] [--embedding <Vector>] [--metadata <JSON>]
agentic-db habits-chunk update --id <UUID> [--habitsId <UUID>] [--content <String>] [--chunkIndex <Int>] [--embedding <Vector>] [--metadata <JSON>]
agentic-db habits-chunk delete --id <UUID>
```

## Examples

### List all habitsChunk records

```bash
agentic-db habits-chunk list
```

### Create a habitsChunk

```bash
agentic-db habits-chunk create --habitsId <UUID> --content <String> [--chunkIndex <Int>] [--embedding <Vector>] [--metadata <JSON>]
```

### Get a habitsChunk by id

```bash
agentic-db habits-chunk get --id <value>
```
