# repositoryChunk

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for RepositoryChunk records via agentic-db CLI

**Unified Search API fields:** `embeddingTextBm25Score`, `contentTrgmSimilarity`, `embeddingTextTrgmSimilarity`, `searchScore`
Fields provided by the Unified Search plugin. Includes full-text search (tsvector/BM25), trigram similarity scores, and the combined searchScore. Computed fields are read-only and cannot be set in create/update operations.

## Usage

```bash
agentic-db repository-chunk list
agentic-db repository-chunk get --id <UUID>
agentic-db repository-chunk create --entityId <UUID> --chunkIndex <Int> --content <String> --repositoryId <UUID> [--embeddingText <String>] [--embedding <Vector>]
agentic-db repository-chunk update --id <UUID> [--entityId <UUID>] [--chunkIndex <Int>] [--content <String>] [--embeddingText <String>] [--embedding <Vector>] [--repositoryId <UUID>]
agentic-db repository-chunk delete --id <UUID>
```

## Examples

### List all repositoryChunk records

```bash
agentic-db repository-chunk list
```

### Create a repositoryChunk

```bash
agentic-db repository-chunk create --entityId <UUID> --chunkIndex <Int> --content <String> --repositoryId <UUID> [--embeddingText <String>] [--embedding <Vector>]
```

### Get a repositoryChunk by id

```bash
agentic-db repository-chunk get --id <value>
```
