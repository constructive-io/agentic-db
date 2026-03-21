# chunk

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for Chunk records via agentic-db CLI

**Unified Search API fields:** `embeddingTextBm25Score`, `contentTrgmSimilarity`, `embeddingTextTrgmSimilarity`, `searchScore`
Fields provided by the Unified Search plugin. Includes full-text search (tsvector/BM25), trigram similarity scores, and the combined searchScore. Computed fields are read-only and cannot be set in create/update operations.

## Usage

```bash
agentic-db chunk list
agentic-db chunk get --id <UUID>
agentic-db chunk create --entityId <UUID> --content <String> [--fileId <UUID>] [--repositoryId <UUID>] [--startLine <Int>] [--endLine <Int>] [--embeddingText <String>] [--embedding <Vector>]
agentic-db chunk update --id <UUID> [--entityId <UUID>] [--fileId <UUID>] [--repositoryId <UUID>] [--content <String>] [--startLine <Int>] [--endLine <Int>] [--embeddingText <String>] [--embedding <Vector>]
agentic-db chunk delete --id <UUID>
```

## Examples

### List all chunk records

```bash
agentic-db chunk list
```

### Create a chunk

```bash
agentic-db chunk create --entityId <UUID> --content <String> [--fileId <UUID>] [--repositoryId <UUID>] [--startLine <Int>] [--endLine <Int>] [--embeddingText <String>] [--embedding <Vector>]
```

### Get a chunk by id

```bash
agentic-db chunk get --id <value>
```
