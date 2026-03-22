# habitChunk

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for HabitChunk records via agentic-db CLI

**Unified Search API fields:** `embeddingTextBm25Score`, `contentTrgmSimilarity`, `embeddingTextTrgmSimilarity`, `searchScore`
Fields provided by the Unified Search plugin. Includes full-text search (tsvector/BM25), trigram similarity scores, and the combined searchScore. Computed fields are read-only and cannot be set in create/update operations.

## Usage

```bash
agentic-db habit-chunk list
agentic-db habit-chunk get --id <UUID>
agentic-db habit-chunk create --entityId <UUID> --chunkIndex <Int> --content <String> --habitId <UUID> [--embeddingText <String>] [--embedding <Vector>] [--embeddingStale <Boolean>]
agentic-db habit-chunk update --id <UUID> [--entityId <UUID>] [--chunkIndex <Int>] [--content <String>] [--embeddingText <String>] [--embedding <Vector>] [--embeddingStale <Boolean>] [--habitId <UUID>]
agentic-db habit-chunk delete --id <UUID>
```

## Examples

### List all habitChunk records

```bash
agentic-db habit-chunk list
```

### Create a habitChunk

```bash
agentic-db habit-chunk create --entityId <UUID> --chunkIndex <Int> --content <String> --habitId <UUID> [--embeddingText <String>] [--embedding <Vector>] [--embeddingStale <Boolean>]
```

### Get a habitChunk by id

```bash
agentic-db habit-chunk get --id <value>
```
