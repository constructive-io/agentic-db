# prompt

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for Prompt records via agentic-db CLI

**pgvector embedding fields:** `embedding`
High-dimensional vector columns for semantic similarity search. Query via the Unified Search API pgvector adapter using cosine, L2, or inner-product distance. Supports chunk-aware search: set `includeChunks: true` in VectorNearbyInput to transparently query across parent and chunk embeddings, returning the minimum distance.

**Unified Search API fields:** `embeddingTextBm25Score`, `nameTrgmSimilarity`, `contentTrgmSimilarity`, `categoryTrgmSimilarity`, `embeddingTextTrgmSimilarity`, `searchScore`
Fields provided by the Unified Search plugin. Includes full-text search (tsvector/BM25), trigram similarity scores, and the combined searchScore. Computed fields are read-only and cannot be set in create/update operations.

## Usage

```bash
agentic-db prompt list
agentic-db prompt list --where.<field>.<op> <value> --orderBy <values>
agentic-db prompt list --limit 10 --after <cursor>
agentic-db prompt find-first --where.<field>.<op> <value>
agentic-db prompt search <query>
agentic-db prompt get --id <UUID>
agentic-db prompt create --entityId <UUID> --name <String> --content <String> [--category <String>] [--version <Int>] [--isActive <Boolean>] [--tags <String>] [--embeddingText <String>] [--embedding <Vector>] [--embeddingStale <Boolean>]
agentic-db prompt update --id <UUID> [--entityId <UUID>] [--name <String>] [--content <String>] [--category <String>] [--version <Int>] [--isActive <Boolean>] [--tags <String>] [--embeddingText <String>] [--embedding <Vector>] [--embeddingStale <Boolean>]
agentic-db prompt delete --id <UUID>
```

## Examples

### List prompt records

```bash
agentic-db prompt list
```

### List prompt records with pagination

```bash
agentic-db prompt list --limit 10 --offset 0
```

### List prompt records with cursor pagination

```bash
agentic-db prompt list --limit 10 --after <cursor>
```

### Find first matching prompt

```bash
agentic-db prompt find-first --where.id.equalTo <value>
```

### List prompt records with field selection

```bash
agentic-db prompt list --select id,id
```

### List prompt records with filtering and ordering

```bash
agentic-db prompt list --where.id.equalTo <value> --orderBy ID_ASC
```

### Vector similarity search via `embedding` (manual vector)

```bash
# Pass a pre-computed vector array via dot-notation
agentic-db prompt list --where.embedding.vector '[0.1,0.2,0.3]' --where.embedding.distance 1.0 --select title,embeddingVectorDistance
```

### Vector semantic search via `embedding` with --auto-embed

```bash
# --auto-embed converts text to vectors using the configured embedder (e.g. Ollama nomic-embed-text)
EMBEDDER_PROVIDER=ollama agentic-db prompt search "semantic query" --auto-embed --select title,embeddingVectorDistance
EMBEDDER_PROVIDER=ollama agentic-db prompt list --where.embedding.vector "semantic query" --auto-embed --select title,embeddingVectorDistance
```

### Create/update with auto-embedded `embedding` via --auto-embed

```bash
# --auto-embed on create/update converts text strings in vector fields to embeddings before saving
EMBEDDER_PROVIDER=ollama agentic-db prompt create --embedding "text to embed" --auto-embed
EMBEDDER_PROVIDER=ollama agentic-db prompt update --embedding "new text to embed" --auto-embed
```

### BM25 keyword search via `bm25EmbeddingText`

```bash
agentic-db prompt list --where.bm25EmbeddingText.query "search query" --select title,embeddingTextBm25Score
```

### Fuzzy search via trigram similarity (`trgmName`)

```bash
agentic-db prompt list --where.trgmName.value "approximate query" --where.trgmName.threshold 0.3 --select title,nameTrgmSimilarity
```

### Fuzzy search via trigram similarity (`trgmContent`)

```bash
agentic-db prompt list --where.trgmContent.value "approximate query" --where.trgmContent.threshold 0.3 --select title,contentTrgmSimilarity
```

### Fuzzy search via trigram similarity (`trgmCategory`)

```bash
agentic-db prompt list --where.trgmCategory.value "approximate query" --where.trgmCategory.threshold 0.3 --select title,categoryTrgmSimilarity
```

### Fuzzy search via trigram similarity (`trgmEmbeddingText`)

```bash
agentic-db prompt list --where.trgmEmbeddingText.value "approximate query" --where.trgmEmbeddingText.threshold 0.3 --select title,embeddingTextTrgmSimilarity
```

### Composite search (fullTextSearch dispatches to all text adapters)

```bash
agentic-db prompt list --where.fullTextSearch "search query" --select title,embeddingTextBm25Score,nameTrgmSimilarity,contentTrgmSimilarity,categoryTrgmSimilarity,embeddingTextTrgmSimilarity,searchScore
```

### Search with pagination and field projection

```bash
agentic-db prompt list --where.fullTextSearch "query" --limit 10 --select id,title,searchScore
agentic-db prompt search "query" --limit 10 --select id,title,searchScore
```

### Create a prompt

```bash
agentic-db prompt create --entityId <UUID> --name <String> --content <String> [--category <String>] [--version <Int>] [--isActive <Boolean>] [--tags <String>] [--embeddingText <String>] [--embedding <Vector>] [--embeddingStale <Boolean>]
```

### Get a prompt by id

```bash
agentic-db prompt get --id <value>
```
