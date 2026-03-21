# interactionChunk

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for InteractionChunk records via agentic-db CLI

**Unified Search API fields:** `embeddingTextBm25Score`, `contentTrgmSimilarity`, `embeddingTextTrgmSimilarity`, `searchScore`
Fields provided by the Unified Search plugin. Includes full-text search (tsvector/BM25), trigram similarity scores, and the combined searchScore. Computed fields are read-only and cannot be set in create/update operations.

## Usage

```bash
agentic-db interaction-chunk list
agentic-db interaction-chunk get --id <UUID>
agentic-db interaction-chunk create --entityId <UUID> --chunkIndex <Int> --content <String> --interactionId <UUID> [--embeddingText <String>] [--embedding <Vector>]
agentic-db interaction-chunk update --id <UUID> [--entityId <UUID>] [--chunkIndex <Int>] [--content <String>] [--embeddingText <String>] [--embedding <Vector>] [--interactionId <UUID>]
agentic-db interaction-chunk delete --id <UUID>
```

## Examples

### List all interactionChunk records

```bash
agentic-db interaction-chunk list
```

### Create a interactionChunk

```bash
agentic-db interaction-chunk create --entityId <UUID> --chunkIndex <Int> --content <String> --interactionId <UUID> [--embeddingText <String>] [--embedding <Vector>]
```

### Get a interactionChunk by id

```bash
agentic-db interaction-chunk get --id <value>
```
