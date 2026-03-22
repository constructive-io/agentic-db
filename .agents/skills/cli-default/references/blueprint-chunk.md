# blueprintChunk

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for BlueprintChunk records via agentic-db CLI

**Unified Search API fields:** `embeddingTextBm25Score`, `contentTrgmSimilarity`, `embeddingTextTrgmSimilarity`, `searchScore`
Fields provided by the Unified Search plugin. Includes full-text search (tsvector/BM25), trigram similarity scores, and the combined searchScore. Computed fields are read-only and cannot be set in create/update operations.

## Usage

```bash
agentic-db blueprint-chunk list
agentic-db blueprint-chunk get --id <UUID>
agentic-db blueprint-chunk create --entityId <UUID> --chunkIndex <Int> --content <String> --blueprintId <UUID> [--embeddingText <String>] [--embedding <Vector>]
agentic-db blueprint-chunk update --id <UUID> [--entityId <UUID>] [--chunkIndex <Int>] [--content <String>] [--embeddingText <String>] [--embedding <Vector>] [--blueprintId <UUID>]
agentic-db blueprint-chunk delete --id <UUID>
```

## Examples

### List all blueprintChunk records

```bash
agentic-db blueprint-chunk list
```

### Create a blueprintChunk

```bash
agentic-db blueprint-chunk create --entityId <UUID> --chunkIndex <Int> --content <String> --blueprintId <UUID> [--embeddingText <String>] [--embedding <Vector>]
```

### Get a blueprintChunk by id

```bash
agentic-db blueprint-chunk get --id <value>
```
