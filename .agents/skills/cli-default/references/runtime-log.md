# runtimeLog

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for RuntimeLog records via agentic-db CLI

**pgvector embedding fields:** `embedding`
High-dimensional vector columns for semantic similarity search. Query via the Unified Search API pgvector adapter using cosine, L2, or inner-product distance. Supports chunk-aware search: set `includeChunks: true` in VectorNearbyInput to transparently query across parent and chunk embeddings, returning the minimum distance.

**Unified Search API fields:** `embeddingTextBm25Score`, `levelTrgmSimilarity`, `messageTrgmSimilarity`, `embeddingTextTrgmSimilarity`, `searchScore`
Fields provided by the Unified Search plugin. Includes full-text search (tsvector/BM25), trigram similarity scores, and the combined searchScore. Computed fields are read-only and cannot be set in create/update operations.

## Usage

```bash
agentic-db runtime-log list
agentic-db runtime-log list --where.<field>.<op> <value> --orderBy <values>
agentic-db runtime-log list --limit 10 --after <cursor>
agentic-db runtime-log find-first --where.<field>.<op> <value>
agentic-db runtime-log search <query>
agentic-db runtime-log get --id <UUID>
agentic-db runtime-log create --runtimeStateId <UUID> --level <String> --message <String> [--context <JSON>] [--stepIndex <Int>] [--embeddingText <String>] [--embedding <Vector>] [--embeddingUpdatedAt <Datetime>]
agentic-db runtime-log update --id <UUID> [--runtimeStateId <UUID>] [--level <String>] [--message <String>] [--context <JSON>] [--stepIndex <Int>] [--embeddingText <String>] [--embedding <Vector>] [--embeddingUpdatedAt <Datetime>]
agentic-db runtime-log delete --id <UUID>
```

## Examples

### List runtimeLog records

```bash
agentic-db runtime-log list
```

### List runtimeLog records with pagination

```bash
agentic-db runtime-log list --limit 10 --offset 0
```

### List runtimeLog records with cursor pagination

```bash
agentic-db runtime-log list --limit 10 --after <cursor>
```

### Find first matching runtimeLog

```bash
agentic-db runtime-log find-first --where.id.equalTo <value>
```

### List runtimeLog records with field selection

```bash
agentic-db runtime-log list --select id,id
```

### List runtimeLog records with filtering and ordering

```bash
agentic-db runtime-log list --where.id.equalTo <value> --orderBy ID_ASC
```

### Vector similarity search via `embedding` (manual vector)

```bash
# Pass a pre-computed vector array via dot-notation
agentic-db runtime-log list --where.embedding.vector '[0.1,0.2,0.3]' --where.embedding.distance 1.0 --select title,embeddingVectorDistance
```

### Vector semantic search via `embedding` with --auto-embed

```bash
# --auto-embed converts text to vectors using the configured embedder (e.g. Ollama nomic-embed-text)
EMBEDDER_PROVIDER=ollama agentic-db runtime-log search "semantic query" --auto-embed --select title,embeddingVectorDistance
EMBEDDER_PROVIDER=ollama agentic-db runtime-log list --where.embedding.vector "semantic query" --auto-embed --select title,embeddingVectorDistance
```

### Create/update with auto-embedded `embedding` via --auto-embed

```bash
# --auto-embed on create/update converts text strings in vector fields to embeddings before saving
EMBEDDER_PROVIDER=ollama agentic-db runtime-log create --embedding "text to embed" --auto-embed
EMBEDDER_PROVIDER=ollama agentic-db runtime-log update --embedding "new text to embed" --auto-embed
```

### BM25 keyword search via `bm25EmbeddingText`

```bash
agentic-db runtime-log list --where.bm25EmbeddingText.query "search query" --select title,embeddingTextBm25Score
```

### Fuzzy search via trigram similarity (`trgmLevel`)

```bash
agentic-db runtime-log list --where.trgmLevel.value "approximate query" --where.trgmLevel.threshold 0.3 --select title,levelTrgmSimilarity
```

### Fuzzy search via trigram similarity (`trgmMessage`)

```bash
agentic-db runtime-log list --where.trgmMessage.value "approximate query" --where.trgmMessage.threshold 0.3 --select title,messageTrgmSimilarity
```

### Fuzzy search via trigram similarity (`trgmEmbeddingText`)

```bash
agentic-db runtime-log list --where.trgmEmbeddingText.value "approximate query" --where.trgmEmbeddingText.threshold 0.3 --select title,embeddingTextTrgmSimilarity
```

### Composite search (unifiedSearch dispatches to all text adapters)

```bash
agentic-db runtime-log list --where.unifiedSearch "search query" --select title,embeddingTextBm25Score,levelTrgmSimilarity,messageTrgmSimilarity,embeddingTextTrgmSimilarity,searchScore
```

### Search with pagination and field projection

```bash
agentic-db runtime-log list --where.unifiedSearch "query" --limit 10 --select id,title,searchScore
agentic-db runtime-log search "query" --limit 10 --select id,title,searchScore
```

### Create a runtimeLog

```bash
agentic-db runtime-log create --runtimeStateId <UUID> --level <String> --message <String> [--context <JSON>] [--stepIndex <Int>] [--embeddingText <String>] [--embedding <Vector>] [--embeddingUpdatedAt <Datetime>]
```

### Get a runtimeLog by id

```bash
agentic-db runtime-log get --id <value>
```
