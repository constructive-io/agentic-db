# projectChunk

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for ProjectChunk records via agentic-db CLI

**Unified Search API fields:** `embeddingTextBm25Score`, `contentTrgmSimilarity`, `embeddingTextTrgmSimilarity`, `searchScore`
Fields provided by the Unified Search plugin. Includes full-text search (tsvector/BM25), trigram similarity scores, and the combined searchScore. Computed fields are read-only and cannot be set in create/update operations.

## Usage

```bash
agentic-db project-chunk list
agentic-db project-chunk get --id <UUID>
agentic-db project-chunk create --entityId <UUID> --chunkIndex <Int> --content <String> --projectId <UUID> [--embeddingText <String>] [--embedding <Vector>] [--embeddingStale <Boolean>]
agentic-db project-chunk update --id <UUID> [--entityId <UUID>] [--chunkIndex <Int>] [--content <String>] [--embeddingText <String>] [--embedding <Vector>] [--embeddingStale <Boolean>] [--projectId <UUID>]
agentic-db project-chunk delete --id <UUID>
```

## Examples

### List all projectChunk records

```bash
agentic-db project-chunk list
```

### Create a projectChunk

```bash
agentic-db project-chunk create --entityId <UUID> --chunkIndex <Int> --content <String> --projectId <UUID> [--embeddingText <String>] [--embedding <Vector>] [--embeddingStale <Boolean>]
```

### Get a projectChunk by id

```bash
agentic-db project-chunk get --id <value>
```
