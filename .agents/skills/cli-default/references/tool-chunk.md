# toolChunk

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for ToolChunk records via agentic-db CLI

**Unified Search API fields:** `embeddingTextBm25Score`, `contentTrgmSimilarity`, `embeddingTextTrgmSimilarity`, `searchScore`
Fields provided by the Unified Search plugin. Includes full-text search (tsvector/BM25), trigram similarity scores, and the combined searchScore. Computed fields are read-only and cannot be set in create/update operations.

## Usage

```bash
agentic-db tool-chunk list
agentic-db tool-chunk get --id <UUID>
agentic-db tool-chunk create --entityId <UUID> --chunkIndex <Int> --content <String> --toolId <UUID> [--embeddingText <String>] [--embedding <Vector>]
agentic-db tool-chunk update --id <UUID> [--entityId <UUID>] [--chunkIndex <Int>] [--content <String>] [--embeddingText <String>] [--embedding <Vector>] [--toolId <UUID>]
agentic-db tool-chunk delete --id <UUID>
```

## Examples

### List all toolChunk records

```bash
agentic-db tool-chunk list
```

### Create a toolChunk

```bash
agentic-db tool-chunk create --entityId <UUID> --chunkIndex <Int> --content <String> --toolId <UUID> [--embeddingText <String>] [--embedding <Vector>]
```

### Get a toolChunk by id

```bash
agentic-db tool-chunk get --id <value>
```
