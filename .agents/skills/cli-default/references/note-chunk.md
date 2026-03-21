# noteChunk

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for NoteChunk records via agentic-db CLI

**Unified Search API fields:** `embeddingTextBm25Score`, `contentTrgmSimilarity`, `embeddingTextTrgmSimilarity`, `searchScore`
Fields provided by the Unified Search plugin. Includes full-text search (tsvector/BM25), trigram similarity scores, and the combined searchScore. Computed fields are read-only and cannot be set in create/update operations.

## Usage

```bash
agentic-db note-chunk list
agentic-db note-chunk get --id <UUID>
agentic-db note-chunk create --entityId <UUID> --chunkIndex <Int> --content <String> --noteId <UUID> [--embeddingText <String>] [--embedding <Vector>]
agentic-db note-chunk update --id <UUID> [--entityId <UUID>] [--chunkIndex <Int>] [--content <String>] [--embeddingText <String>] [--embedding <Vector>] [--noteId <UUID>]
agentic-db note-chunk delete --id <UUID>
```

## Examples

### List all noteChunk records

```bash
agentic-db note-chunk list
```

### Create a noteChunk

```bash
agentic-db note-chunk create --entityId <UUID> --chunkIndex <Int> --content <String> --noteId <UUID> [--embeddingText <String>] [--embedding <Vector>]
```

### Get a noteChunk by id

```bash
agentic-db note-chunk get --id <value>
```
