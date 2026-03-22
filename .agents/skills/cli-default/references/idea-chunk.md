# ideaChunk

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for IdeaChunk records via agentic-db CLI

**Unified Search API fields:** `embeddingTextBm25Score`, `contentTrgmSimilarity`, `embeddingTextTrgmSimilarity`, `searchScore`
Fields provided by the Unified Search plugin. Includes full-text search (tsvector/BM25), trigram similarity scores, and the combined searchScore. Computed fields are read-only and cannot be set in create/update operations.

## Usage

```bash
agentic-db idea-chunk list
agentic-db idea-chunk get --id <UUID>
agentic-db idea-chunk create --entityId <UUID> --chunkIndex <Int> --content <String> --ideaId <UUID> [--embeddingText <String>] [--embedding <Vector>]
agentic-db idea-chunk update --id <UUID> [--entityId <UUID>] [--chunkIndex <Int>] [--content <String>] [--embeddingText <String>] [--embedding <Vector>] [--ideaId <UUID>]
agentic-db idea-chunk delete --id <UUID>
```

## Examples

### List all ideaChunk records

```bash
agentic-db idea-chunk list
```

### Create a ideaChunk

```bash
agentic-db idea-chunk create --entityId <UUID> --chunkIndex <Int> --content <String> --ideaId <UUID> [--embeddingText <String>] [--embedding <Vector>]
```

### Get a ideaChunk by id

```bash
agentic-db idea-chunk get --id <value>
```
