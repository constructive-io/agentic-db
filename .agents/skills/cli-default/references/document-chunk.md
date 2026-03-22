# documentChunk

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for DocumentChunk records via agentic-db CLI

**Unified Search API fields:** `embeddingTextBm25Score`, `contentTrgmSimilarity`, `embeddingTextTrgmSimilarity`, `searchScore`
Fields provided by the Unified Search plugin. Includes full-text search (tsvector/BM25), trigram similarity scores, and the combined searchScore. Computed fields are read-only and cannot be set in create/update operations.

## Usage

```bash
agentic-db document-chunk list
agentic-db document-chunk get --id <UUID>
agentic-db document-chunk create --entityId <UUID> --chunkIndex <Int> --content <String> --documentId <UUID> [--embeddingText <String>] [--embedding <Vector>]
agentic-db document-chunk update --id <UUID> [--entityId <UUID>] [--chunkIndex <Int>] [--content <String>] [--embeddingText <String>] [--embedding <Vector>] [--documentId <UUID>]
agentic-db document-chunk delete --id <UUID>
```

## Examples

### List all documentChunk records

```bash
agentic-db document-chunk list
```

### Create a documentChunk

```bash
agentic-db document-chunk create --entityId <UUID> --chunkIndex <Int> --content <String> --documentId <UUID> [--embeddingText <String>] [--embedding <Vector>]
```

### Get a documentChunk by id

```bash
agentic-db document-chunk get --id <value>
```
