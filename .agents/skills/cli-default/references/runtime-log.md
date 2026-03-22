# runtimeLog

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for RuntimeLog records via agentic-db CLI

**Unified Search API fields:** `embeddingTextBm25Score`, `levelTrgmSimilarity`, `messageTrgmSimilarity`, `embeddingTextTrgmSimilarity`, `searchScore`
Fields provided by the Unified Search plugin. Includes full-text search (tsvector/BM25), trigram similarity scores, and the combined searchScore. Computed fields are read-only and cannot be set in create/update operations.

## Usage

```bash
agentic-db runtime-log list
agentic-db runtime-log get --id <UUID>
agentic-db runtime-log create --entityId <UUID> --runtimeStateId <UUID> --level <String> --message <String> [--context <JSON>] [--stepIndex <Int>] [--embeddingText <String>] [--embedding <Vector>] [--embeddingStale <Boolean>]
agentic-db runtime-log update --id <UUID> [--entityId <UUID>] [--runtimeStateId <UUID>] [--level <String>] [--message <String>] [--context <JSON>] [--stepIndex <Int>] [--embeddingText <String>] [--embedding <Vector>] [--embeddingStale <Boolean>]
agentic-db runtime-log delete --id <UUID>
```

## Examples

### List all runtimeLog records

```bash
agentic-db runtime-log list
```

### Create a runtimeLog

```bash
agentic-db runtime-log create --entityId <UUID> --runtimeStateId <UUID> --level <String> --message <String> [--context <JSON>] [--stepIndex <Int>] [--embeddingText <String>] [--embedding <Vector>] [--embeddingStale <Boolean>]
```

### Get a runtimeLog by id

```bash
agentic-db runtime-log get --id <value>
```
