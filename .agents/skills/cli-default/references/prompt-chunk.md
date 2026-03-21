# promptChunk

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for PromptChunk records via agentic-db CLI

**Unified Search API fields:** `embeddingTextBm25Score`, `contentTrgmSimilarity`, `embeddingTextTrgmSimilarity`, `searchScore`
Fields provided by the Unified Search plugin. Includes full-text search (tsvector/BM25), trigram similarity scores, and the combined searchScore. Computed fields are read-only and cannot be set in create/update operations.

## Usage

```bash
agentic-db prompt-chunk list
agentic-db prompt-chunk get --id <UUID>
agentic-db prompt-chunk create --entityId <UUID> --chunkIndex <Int> --content <String> --promptId <UUID> [--embeddingText <String>] [--embedding <Vector>]
agentic-db prompt-chunk update --id <UUID> [--entityId <UUID>] [--chunkIndex <Int>] [--content <String>] [--embeddingText <String>] [--embedding <Vector>] [--promptId <UUID>]
agentic-db prompt-chunk delete --id <UUID>
```

## Examples

### List all promptChunk records

```bash
agentic-db prompt-chunk list
```

### Create a promptChunk

```bash
agentic-db prompt-chunk create --entityId <UUID> --chunkIndex <Int> --content <String> --promptId <UUID> [--embeddingText <String>] [--embedding <Vector>]
```

### Get a promptChunk by id

```bash
agentic-db prompt-chunk get --id <value>
```
