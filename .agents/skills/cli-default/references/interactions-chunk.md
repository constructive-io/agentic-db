# interactionsChunk

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for InteractionsChunk records via agentic-db CLI

**Unified Search API fields:** `searchScore`
Fields provided by the Unified Search plugin. Includes full-text search (tsvector/BM25), trigram similarity scores, and the combined searchScore. Computed fields are read-only and cannot be set in create/update operations.

## Usage

```bash
agentic-db interactions-chunk list
agentic-db interactions-chunk get --id <UUID>
agentic-db interactions-chunk create --interactionsId <UUID> --content <String> [--chunkIndex <Int>] [--embedding <Vector>] [--metadata <JSON>]
agentic-db interactions-chunk update --id <UUID> [--interactionsId <UUID>] [--content <String>] [--chunkIndex <Int>] [--embedding <Vector>] [--metadata <JSON>]
agentic-db interactions-chunk delete --id <UUID>
```

## Examples

### List all interactionsChunk records

```bash
agentic-db interactions-chunk list
```

### Create a interactionsChunk

```bash
agentic-db interactions-chunk create --interactionsId <UUID> --content <String> [--chunkIndex <Int>] [--embedding <Vector>] [--metadata <JSON>]
```

### Get a interactionsChunk by id

```bash
agentic-db interactions-chunk get --id <value>
```
