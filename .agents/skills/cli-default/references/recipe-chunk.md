# recipeChunk

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for RecipeChunk records via agentic-db CLI

**Unified Search API fields:** `embeddingTextBm25Score`, `contentTrgmSimilarity`, `embeddingTextTrgmSimilarity`, `searchScore`
Fields provided by the Unified Search plugin. Includes full-text search (tsvector/BM25), trigram similarity scores, and the combined searchScore. Computed fields are read-only and cannot be set in create/update operations.

## Usage

```bash
agentic-db recipe-chunk list
agentic-db recipe-chunk get --id <UUID>
agentic-db recipe-chunk create --entityId <UUID> --chunkIndex <Int> --content <String> --recipeId <UUID> [--embeddingText <String>] [--embedding <Vector>]
agentic-db recipe-chunk update --id <UUID> [--entityId <UUID>] [--chunkIndex <Int>] [--content <String>] [--embeddingText <String>] [--embedding <Vector>] [--recipeId <UUID>]
agentic-db recipe-chunk delete --id <UUID>
```

## Examples

### List all recipeChunk records

```bash
agentic-db recipe-chunk list
```

### Create a recipeChunk

```bash
agentic-db recipe-chunk create --entityId <UUID> --chunkIndex <Int> --content <String> --recipeId <UUID> [--embeddingText <String>] [--embedding <Vector>]
```

### Get a recipeChunk by id

```bash
agentic-db recipe-chunk get --id <value>
```
