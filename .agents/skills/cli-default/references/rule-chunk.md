# ruleChunk

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for RuleChunk records via agentic-db CLI

**Unified Search API fields:** `searchScore`
Fields provided by the Unified Search plugin. Includes full-text search (tsvector/BM25), trigram similarity scores, and the combined searchScore. Computed fields are read-only and cannot be set in create/update operations.

## Usage

```bash
agentic-db rule-chunk list
agentic-db rule-chunk get --id <UUID>
agentic-db rule-chunk create --entityId <UUID> --chunkIndex <Int> --content <String> --ruleId <UUID> [--embeddingText <String>] [--embedding <Vector>] [--embeddingStale <Boolean>]
agentic-db rule-chunk update --id <UUID> [--entityId <UUID>] [--chunkIndex <Int>] [--content <String>] [--embeddingText <String>] [--embedding <Vector>] [--embeddingStale <Boolean>] [--ruleId <UUID>]
agentic-db rule-chunk delete --id <UUID>
```

## Examples

### List all ruleChunk records

```bash
agentic-db rule-chunk list
```

### Create a ruleChunk

```bash
agentic-db rule-chunk create --entityId <UUID> --chunkIndex <Int> --content <String> --ruleId <UUID> [--embeddingText <String>] [--embedding <Vector>] [--embeddingStale <Boolean>]
```

### Get a ruleChunk by id

```bash
agentic-db rule-chunk get --id <value>
```
