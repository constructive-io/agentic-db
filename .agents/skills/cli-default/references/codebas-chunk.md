# codebasChunk

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for CodebasChunk records via agentic-db CLI

**Unified Search API fields:** `searchScore`
Fields provided by the Unified Search plugin. Includes full-text search (tsvector/BM25), trigram similarity scores, and the combined searchScore. Computed fields are read-only and cannot be set in create/update operations.

## Usage

```bash
agentic-db codebas-chunk list
agentic-db codebas-chunk get --id <UUID>
agentic-db codebas-chunk create --entityId <UUID> --chunkIndex <Int> --content <String> --codebasisId <UUID> [--embeddingText <String>] [--embedding <Vector>] [--embeddingStale <Boolean>]
agentic-db codebas-chunk update --id <UUID> [--entityId <UUID>] [--chunkIndex <Int>] [--content <String>] [--embeddingText <String>] [--embedding <Vector>] [--embeddingStale <Boolean>] [--codebasisId <UUID>]
agentic-db codebas-chunk delete --id <UUID>
```

## Examples

### List all codebasChunk records

```bash
agentic-db codebas-chunk list
```

### Create a codebasChunk

```bash
agentic-db codebas-chunk create --entityId <UUID> --chunkIndex <Int> --content <String> --codebasisId <UUID> [--embeddingText <String>] [--embedding <Vector>] [--embeddingStale <Boolean>]
```

### Get a codebasChunk by id

```bash
agentic-db codebas-chunk get --id <value>
```
