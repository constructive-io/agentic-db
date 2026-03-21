# skillChunk

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for SkillChunk records via agentic-db CLI

**Unified Search API fields:** `embeddingTextBm25Score`, `contentTrgmSimilarity`, `embeddingTextTrgmSimilarity`, `searchScore`
Fields provided by the Unified Search plugin. Includes full-text search (tsvector/BM25), trigram similarity scores, and the combined searchScore. Computed fields are read-only and cannot be set in create/update operations.

## Usage

```bash
agentic-db skill-chunk list
agentic-db skill-chunk get --id <UUID>
agentic-db skill-chunk create --entityId <UUID> --chunkIndex <Int> --content <String> --skillId <UUID> [--embeddingText <String>] [--embedding <Vector>]
agentic-db skill-chunk update --id <UUID> [--entityId <UUID>] [--chunkIndex <Int>] [--content <String>] [--embeddingText <String>] [--embedding <Vector>] [--skillId <UUID>]
agentic-db skill-chunk delete --id <UUID>
```

## Examples

### List all skillChunk records

```bash
agentic-db skill-chunk list
```

### Create a skillChunk

```bash
agentic-db skill-chunk create --entityId <UUID> --chunkIndex <Int> --content <String> --skillId <UUID> [--embeddingText <String>] [--embedding <Vector>]
```

### Get a skillChunk by id

```bash
agentic-db skill-chunk get --id <value>
```
