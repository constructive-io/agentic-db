# companyChunk

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for CompanyChunk records via agentic-db CLI

**Unified Search API fields:** `embeddingTextBm25Score`, `contentTrgmSimilarity`, `embeddingTextTrgmSimilarity`, `searchScore`
Fields provided by the Unified Search plugin. Includes full-text search (tsvector/BM25), trigram similarity scores, and the combined searchScore. Computed fields are read-only and cannot be set in create/update operations.

## Usage

```bash
agentic-db company-chunk list
agentic-db company-chunk get --id <UUID>
agentic-db company-chunk create --entityId <UUID> --chunkIndex <Int> --content <String> --companyId <UUID> [--embeddingText <String>] [--embedding <Vector>] [--embeddingStale <Boolean>]
agentic-db company-chunk update --id <UUID> [--entityId <UUID>] [--chunkIndex <Int>] [--content <String>] [--embeddingText <String>] [--embedding <Vector>] [--embeddingStale <Boolean>] [--companyId <UUID>]
agentic-db company-chunk delete --id <UUID>
```

## Examples

### List all companyChunk records

```bash
agentic-db company-chunk list
```

### Create a companyChunk

```bash
agentic-db company-chunk create --entityId <UUID> --chunkIndex <Int> --content <String> --companyId <UUID> [--embeddingText <String>] [--embedding <Vector>] [--embeddingStale <Boolean>]
```

### Get a companyChunk by id

```bash
agentic-db company-chunk get --id <value>
```
