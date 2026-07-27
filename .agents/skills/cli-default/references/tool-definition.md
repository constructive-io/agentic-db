# toolDefinition

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for ToolDefinition records via agentic-db CLI

**pgvector embedding fields:** `embedding`
High-dimensional vector columns for semantic similarity search. Query via the Unified Search API pgvector adapter using cosine, L2, or inner-product distance. Supports chunk-aware search: set `includeChunks: true` in VectorNearbyInput to transparently query across parent and chunk embeddings, returning the minimum distance.

**Unified Search API fields:** `embeddingTextBm25Score`, `nameTrgmSimilarity`, `descriptionTrgmSimilarity`, `toolTypeTrgmSimilarity`, `embeddingTextTrgmSimilarity`, `searchScore`
Fields provided by the Unified Search plugin. Includes full-text search (tsvector/BM25), trigram similarity scores, and the combined searchScore. Computed fields are read-only and cannot be set in create/update operations.

## Usage

```bash
agentic-db tool-definition list
agentic-db tool-definition list --where.<field>.<op> <value> --orderBy <values>
agentic-db tool-definition list --limit 10 --after <cursor>
agentic-db tool-definition find-first --where.<field>.<op> <value>
agentic-db tool-definition search <query>
agentic-db tool-definition get --id <UUID>
agentic-db tool-definition create --name <String> [--description <String>] [--toolType <String>] [--schema <JSON>] [--config <JSON>] [--isActive <Boolean>] [--embeddingText <String>] [--embedding <Vector>] [--embeddingUpdatedAt <Datetime>]
agentic-db tool-definition update --id <UUID> [--name <String>] [--description <String>] [--toolType <String>] [--schema <JSON>] [--config <JSON>] [--isActive <Boolean>] [--embeddingText <String>] [--embedding <Vector>] [--embeddingUpdatedAt <Datetime>]
agentic-db tool-definition delete --id <UUID>
```

## Examples

### List toolDefinition records

```bash
agentic-db tool-definition list
```

### List toolDefinition records with pagination

```bash
agentic-db tool-definition list --limit 10 --offset 0
```

### List toolDefinition records with cursor pagination

```bash
agentic-db tool-definition list --limit 10 --after <cursor>
```

### Find first matching toolDefinition

```bash
agentic-db tool-definition find-first --where.id.equalTo <value>
```

### List toolDefinition records with field selection

```bash
agentic-db tool-definition list --select id,id
```

### List toolDefinition records with filtering and ordering

```bash
agentic-db tool-definition list --where.id.equalTo <value> --orderBy ID_ASC
```

### Vector similarity search via `embedding` (manual vector)

```bash
# Pass a pre-computed vector array via dot-notation
agentic-db tool-definition list --where.embedding.vector '[0.1,0.2,0.3]' --where.embedding.distance 1.0 --select title,embeddingVectorDistance
```

### Vector semantic search via `embedding` with --auto-embed

```bash
# --auto-embed converts text to vectors using the configured embedder (e.g. Ollama nomic-embed-text)
EMBEDDER_PROVIDER=ollama agentic-db tool-definition search "semantic query" --auto-embed --select title,embeddingVectorDistance
EMBEDDER_PROVIDER=ollama agentic-db tool-definition list --where.embedding.vector "semantic query" --auto-embed --select title,embeddingVectorDistance
```

### Create/update with auto-embedded `embedding` via --auto-embed

```bash
# --auto-embed on create/update converts text strings in vector fields to embeddings before saving
EMBEDDER_PROVIDER=ollama agentic-db tool-definition create --embedding "text to embed" --auto-embed
EMBEDDER_PROVIDER=ollama agentic-db tool-definition update --embedding "new text to embed" --auto-embed
```

### BM25 keyword search via `bm25EmbeddingText`

```bash
agentic-db tool-definition list --where.bm25EmbeddingText.query "search query" --select title,embeddingTextBm25Score
```

### Fuzzy search via trigram similarity (`trgmName`)

```bash
agentic-db tool-definition list --where.trgmName.value "approximate query" --where.trgmName.threshold 0.3 --select title,nameTrgmSimilarity
```

### Fuzzy search via trigram similarity (`trgmDescription`)

```bash
agentic-db tool-definition list --where.trgmDescription.value "approximate query" --where.trgmDescription.threshold 0.3 --select title,descriptionTrgmSimilarity
```

### Fuzzy search via trigram similarity (`trgmToolType`)

```bash
agentic-db tool-definition list --where.trgmToolType.value "approximate query" --where.trgmToolType.threshold 0.3 --select title,toolTypeTrgmSimilarity
```

### Fuzzy search via trigram similarity (`trgmEmbeddingText`)

```bash
agentic-db tool-definition list --where.trgmEmbeddingText.value "approximate query" --where.trgmEmbeddingText.threshold 0.3 --select title,embeddingTextTrgmSimilarity
```

### Composite search (unifiedSearch dispatches to all text adapters)

```bash
agentic-db tool-definition list --where.unifiedSearch "search query" --select title,embeddingTextBm25Score,nameTrgmSimilarity,descriptionTrgmSimilarity,toolTypeTrgmSimilarity,embeddingTextTrgmSimilarity,searchScore
```

### Search with pagination and field projection

```bash
agentic-db tool-definition list --where.unifiedSearch "query" --limit 10 --select id,title,searchScore
agentic-db tool-definition search "query" --limit 10 --select id,title,searchScore
```

### Create a toolDefinition

```bash
agentic-db tool-definition create --name <String> [--description <String>] [--toolType <String>] [--schema <JSON>] [--config <JSON>] [--isActive <Boolean>] [--embeddingText <String>] [--embedding <Vector>] [--embeddingUpdatedAt <Datetime>]
```

### Get a toolDefinition by id

```bash
agentic-db tool-definition get --id <value>
```
