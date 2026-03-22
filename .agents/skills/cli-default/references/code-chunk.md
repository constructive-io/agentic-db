# codeChunk

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for CodeChunk records via agentic-db CLI

**Unified Search API fields:** `searchScore`
Fields provided by the Unified Search plugin. Includes full-text search (tsvector/BM25), trigram similarity scores, and the combined searchScore. Computed fields are read-only and cannot be set in create/update operations.

## Usage

```bash
agentic-db code-chunk list
agentic-db code-chunk get --id <UUID>
agentic-db code-chunk create --entityId <UUID> --codebaseId <UUID> --filePath <String> --content <String> --codebasisId <UUID> [--chunkIndex <Int>] [--language <String>] [--startLine <Int>] [--endLine <Int>] [--symbolName <String>] [--symbolType <String>] [--embeddingText <String>] [--embedding <Vector>] [--embeddingStale <Boolean>]
agentic-db code-chunk update --id <UUID> [--entityId <UUID>] [--codebaseId <UUID>] [--filePath <String>] [--chunkIndex <Int>] [--content <String>] [--language <String>] [--startLine <Int>] [--endLine <Int>] [--symbolName <String>] [--symbolType <String>] [--embeddingText <String>] [--embedding <Vector>] [--embeddingStale <Boolean>] [--codebasisId <UUID>]
agentic-db code-chunk delete --id <UUID>
```

## Examples

### List all codeChunk records

```bash
agentic-db code-chunk list
```

### Create a codeChunk

```bash
agentic-db code-chunk create --entityId <UUID> --codebaseId <UUID> --filePath <String> --content <String> --codebasisId <UUID> [--chunkIndex <Int>] [--language <String>] [--startLine <Int>] [--endLine <Int>] [--symbolName <String>] [--symbolType <String>] [--embeddingText <String>] [--embedding <Vector>] [--embeddingStale <Boolean>]
```

### Get a codeChunk by id

```bash
agentic-db code-chunk get --id <value>
```
