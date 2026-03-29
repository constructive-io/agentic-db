# codebasesChunk

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for CodebasesChunk records via agentic-db CLI

**Unified Search API fields:** `searchScore`
Fields provided by the Unified Search plugin. Includes full-text search (tsvector/BM25), trigram similarity scores, and the combined searchScore. Computed fields are read-only and cannot be set in create/update operations.

## Usage

```bash
agentic-db codebases-chunk list
agentic-db codebases-chunk get --id <UUID>
agentic-db codebases-chunk create --codebasesId <UUID> --content <String> [--chunkIndex <Int>] [--embedding <Vector>] [--metadata <JSON>]
agentic-db codebases-chunk update --id <UUID> [--codebasesId <UUID>] [--content <String>] [--chunkIndex <Int>] [--embedding <Vector>] [--metadata <JSON>]
agentic-db codebases-chunk delete --id <UUID>
```

## Examples

### List all codebasesChunk records

```bash
agentic-db codebases-chunk list
```

### Create a codebasesChunk

```bash
agentic-db codebases-chunk create --codebasesId <UUID> --content <String> [--chunkIndex <Int>] [--embedding <Vector>] [--metadata <JSON>]
```

### Get a codebasesChunk by id

```bash
agentic-db codebases-chunk get --id <value>
```
