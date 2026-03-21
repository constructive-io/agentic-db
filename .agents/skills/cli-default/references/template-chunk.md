# templateChunk

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for TemplateChunk records via agentic-db CLI

**Unified Search API fields:** `embeddingTextBm25Score`, `contentTrgmSimilarity`, `embeddingTextTrgmSimilarity`, `searchScore`
Fields provided by the Unified Search plugin. Includes full-text search (tsvector/BM25), trigram similarity scores, and the combined searchScore. Computed fields are read-only and cannot be set in create/update operations.

## Usage

```bash
agentic-db template-chunk list
agentic-db template-chunk get --id <UUID>
agentic-db template-chunk create --entityId <UUID> --chunkIndex <Int> --content <String> --templateId <UUID> [--embeddingText <String>] [--embedding <Vector>]
agentic-db template-chunk update --id <UUID> [--entityId <UUID>] [--chunkIndex <Int>] [--content <String>] [--embeddingText <String>] [--embedding <Vector>] [--templateId <UUID>]
agentic-db template-chunk delete --id <UUID>
```

## Examples

### List all templateChunk records

```bash
agentic-db template-chunk list
```

### Create a templateChunk

```bash
agentic-db template-chunk create --entityId <UUID> --chunkIndex <Int> --content <String> --templateId <UUID> [--embeddingText <String>] [--embedding <Vector>]
```

### Get a templateChunk by id

```bash
agentic-db template-chunk get --id <value>
```
