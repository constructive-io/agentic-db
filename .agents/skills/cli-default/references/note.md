# note

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for Note records via agentic-db CLI

**pgvector embedding fields:** `embedding`
High-dimensional vector columns for semantic similarity search. Query via the Unified Search API pgvector adapter using cosine, L2, or inner-product distance. Supports chunk-aware search: set `includeChunks: true` in VectorNearbyInput to transparently query across parent and chunk embeddings, returning the minimum distance.

**Unified Search API fields:** `embeddingTextBm25Score`, `contentTrgmSimilarity`, `abstractTrgmSimilarity`, `overviewTrgmSimilarity`, `embeddingTextTrgmSimilarity`, `searchScore`
Fields provided by the Unified Search plugin. Includes full-text search (tsvector/BM25), trigram similarity scores, and the combined searchScore. Computed fields are read-only and cannot be set in create/update operations.

## Usage

```bash
agentic-db note list
agentic-db note list --where.<field>.<op> <value> --orderBy <values>
agentic-db note list --limit 10 --after <cursor>
agentic-db note find-first --where.<field>.<op> <value>
agentic-db note search <query>
agentic-db note get --id <UUID>
agentic-db note create --content <String> [--abstract <String>] [--overview <String>] [--activeCount <Int>] [--lastAccessedAt <Datetime>] [--tags <String>] [--embeddingText <String>] [--embedding <Vector>] [--embeddingUpdatedAt <Datetime>]
agentic-db note update --id <UUID> [--content <String>] [--abstract <String>] [--overview <String>] [--activeCount <Int>] [--lastAccessedAt <Datetime>] [--tags <String>] [--embeddingText <String>] [--embedding <Vector>] [--embeddingUpdatedAt <Datetime>]
agentic-db note delete --id <UUID>
```

## Examples

### List note records

```bash
agentic-db note list
```

### List note records with pagination

```bash
agentic-db note list --limit 10 --offset 0
```

### List note records with cursor pagination

```bash
agentic-db note list --limit 10 --after <cursor>
```

### Find first matching note

```bash
agentic-db note find-first --where.id.equalTo <value>
```

### List note records with field selection

```bash
agentic-db note list --select id,id
```

### List note records with filtering and ordering

```bash
agentic-db note list --where.id.equalTo <value> --orderBy ID_ASC
```

### Vector similarity search via `embedding` (manual vector)

```bash
# Pass a pre-computed vector array via dot-notation
agentic-db note list --where.embedding.vector '[0.1,0.2,0.3]' --where.embedding.distance 1.0 --select title,embeddingVectorDistance
```

### Vector semantic search via `embedding` with --auto-embed

```bash
# --auto-embed converts text to vectors using the configured embedder (e.g. Ollama nomic-embed-text)
EMBEDDER_PROVIDER=ollama agentic-db note search "semantic query" --auto-embed --select title,embeddingVectorDistance
EMBEDDER_PROVIDER=ollama agentic-db note list --where.embedding.vector "semantic query" --auto-embed --select title,embeddingVectorDistance
```

### Create/update with auto-embedded `embedding` via --auto-embed

```bash
# --auto-embed on create/update converts text strings in vector fields to embeddings before saving
EMBEDDER_PROVIDER=ollama agentic-db note create --embedding "text to embed" --auto-embed
EMBEDDER_PROVIDER=ollama agentic-db note update --embedding "new text to embed" --auto-embed
```

### BM25 keyword search via `bm25EmbeddingText`

```bash
agentic-db note list --where.bm25EmbeddingText.query "search query" --select title,embeddingTextBm25Score
```

### Fuzzy search via trigram similarity (`trgmContent`)

```bash
agentic-db note list --where.trgmContent.value "approximate query" --where.trgmContent.threshold 0.3 --select title,contentTrgmSimilarity
```

### Fuzzy search via trigram similarity (`trgmAbstract`)

```bash
agentic-db note list --where.trgmAbstract.value "approximate query" --where.trgmAbstract.threshold 0.3 --select title,abstractTrgmSimilarity
```

### Fuzzy search via trigram similarity (`trgmOverview`)

```bash
agentic-db note list --where.trgmOverview.value "approximate query" --where.trgmOverview.threshold 0.3 --select title,overviewTrgmSimilarity
```

### Fuzzy search via trigram similarity (`trgmEmbeddingText`)

```bash
agentic-db note list --where.trgmEmbeddingText.value "approximate query" --where.trgmEmbeddingText.threshold 0.3 --select title,embeddingTextTrgmSimilarity
```

### Composite search (unifiedSearch dispatches to all text adapters)

```bash
agentic-db note list --where.unifiedSearch "search query" --select title,embeddingTextBm25Score,contentTrgmSimilarity,abstractTrgmSimilarity,overviewTrgmSimilarity,embeddingTextTrgmSimilarity,searchScore
```

### Search with pagination and field projection

```bash
agentic-db note list --where.unifiedSearch "query" --limit 10 --select id,title,searchScore
agentic-db note search "query" --limit 10 --select id,title,searchScore
```

### Create a note

```bash
agentic-db note create --content <String> [--abstract <String>] [--overview <String>] [--activeCount <Int>] [--lastAccessedAt <Datetime>] [--tags <String>] [--embeddingText <String>] [--embedding <Vector>] [--embeddingUpdatedAt <Datetime>]
```

### Get a note by id

```bash
agentic-db note get --id <value>
```
