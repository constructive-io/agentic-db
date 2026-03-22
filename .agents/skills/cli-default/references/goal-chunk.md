# goalChunk

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for GoalChunk records via agentic-db CLI

**Unified Search API fields:** `embeddingTextBm25Score`, `contentTrgmSimilarity`, `embeddingTextTrgmSimilarity`, `searchScore`
Fields provided by the Unified Search plugin. Includes full-text search (tsvector/BM25), trigram similarity scores, and the combined searchScore. Computed fields are read-only and cannot be set in create/update operations.

## Usage

```bash
agentic-db goal-chunk list
agentic-db goal-chunk get --id <UUID>
agentic-db goal-chunk create --entityId <UUID> --chunkIndex <Int> --content <String> --goalId <UUID> [--embeddingText <String>] [--embedding <Vector>] [--embeddingStale <Boolean>]
agentic-db goal-chunk update --id <UUID> [--entityId <UUID>] [--chunkIndex <Int>] [--content <String>] [--embeddingText <String>] [--embedding <Vector>] [--embeddingStale <Boolean>] [--goalId <UUID>]
agentic-db goal-chunk delete --id <UUID>
```

## Examples

### List all goalChunk records

```bash
agentic-db goal-chunk list
```

### Create a goalChunk

```bash
agentic-db goal-chunk create --entityId <UUID> --chunkIndex <Int> --content <String> --goalId <UUID> [--embeddingText <String>] [--embedding <Vector>] [--embeddingStale <Boolean>]
```

### Get a goalChunk by id

```bash
agentic-db goal-chunk get --id <value>
```
