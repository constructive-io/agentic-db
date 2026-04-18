# goal

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for Goal records via agentic-db CLI

**pgvector embedding fields:** `embedding`
High-dimensional vector columns for semantic similarity search. Query via the Unified Search API pgvector adapter using cosine, L2, or inner-product distance. Supports chunk-aware search: set `includeChunks: true` in VectorNearbyInput to transparently query across parent and chunk embeddings, returning the minimum distance.

**Unified Search API fields:** `embeddingTextBm25Score`, `titleTrgmSimilarity`, `descriptionTrgmSimilarity`, `statusTrgmSimilarity`, `embeddingTextTrgmSimilarity`, `searchScore`
Fields provided by the Unified Search plugin. Includes full-text search (tsvector/BM25), trigram similarity scores, and the combined searchScore. Computed fields are read-only and cannot be set in create/update operations.

## Usage

```bash
agentic-db goal list
agentic-db goal list --where.<field>.<op> <value> --orderBy <values>
agentic-db goal list --limit 10 --after <cursor>
agentic-db goal find-first --where.<field>.<op> <value>
agentic-db goal search <query>
agentic-db goal get --id <UUID>
agentic-db goal create --title <String> [--description <String>] [--status <String>] [--targetDate <Datetime>] [--progress <BigFloat>] [--tags <String>] [--embeddingText <String>] [--embedding <Vector>] [--embeddingStale <Boolean>]
agentic-db goal update --id <UUID> [--title <String>] [--description <String>] [--status <String>] [--targetDate <Datetime>] [--progress <BigFloat>] [--tags <String>] [--embeddingText <String>] [--embedding <Vector>] [--embeddingStale <Boolean>]
agentic-db goal delete --id <UUID>
```

## Examples

### List goal records

```bash
agentic-db goal list
```

### List goal records with pagination

```bash
agentic-db goal list --limit 10 --offset 0
```

### List goal records with cursor pagination

```bash
agentic-db goal list --limit 10 --after <cursor>
```

### Find first matching goal

```bash
agentic-db goal find-first --where.id.equalTo <value>
```

### List goal records with field selection

```bash
agentic-db goal list --select id,id
```

### List goal records with filtering and ordering

```bash
agentic-db goal list --where.id.equalTo <value> --orderBy ID_ASC
```

### Vector similarity search via `embedding` (manual vector)

```bash
# Pass a pre-computed vector array via dot-notation
agentic-db goal list --where.embedding.vector '[0.1,0.2,0.3]' --where.embedding.distance 1.0 --select title,embeddingVectorDistance
```

### Vector semantic search via `embedding` with --auto-embed

```bash
# --auto-embed converts text to vectors using the configured embedder (e.g. Ollama nomic-embed-text)
EMBEDDER_PROVIDER=ollama agentic-db goal search "semantic query" --auto-embed --select title,embeddingVectorDistance
EMBEDDER_PROVIDER=ollama agentic-db goal list --where.embedding.vector "semantic query" --auto-embed --select title,embeddingVectorDistance
```

### Create/update with auto-embedded `embedding` via --auto-embed

```bash
# --auto-embed on create/update converts text strings in vector fields to embeddings before saving
EMBEDDER_PROVIDER=ollama agentic-db goal create --embedding "text to embed" --auto-embed
EMBEDDER_PROVIDER=ollama agentic-db goal update --embedding "new text to embed" --auto-embed
```

### BM25 keyword search via `bm25EmbeddingText`

```bash
agentic-db goal list --where.bm25EmbeddingText.query "search query" --select title,embeddingTextBm25Score
```

### Fuzzy search via trigram similarity (`trgmTitle`)

```bash
agentic-db goal list --where.trgmTitle.value "approximate query" --where.trgmTitle.threshold 0.3 --select title,titleTrgmSimilarity
```

### Fuzzy search via trigram similarity (`trgmDescription`)

```bash
agentic-db goal list --where.trgmDescription.value "approximate query" --where.trgmDescription.threshold 0.3 --select title,descriptionTrgmSimilarity
```

### Fuzzy search via trigram similarity (`trgmStatus`)

```bash
agentic-db goal list --where.trgmStatus.value "approximate query" --where.trgmStatus.threshold 0.3 --select title,statusTrgmSimilarity
```

### Fuzzy search via trigram similarity (`trgmEmbeddingText`)

```bash
agentic-db goal list --where.trgmEmbeddingText.value "approximate query" --where.trgmEmbeddingText.threshold 0.3 --select title,embeddingTextTrgmSimilarity
```

### Composite search (unifiedSearch dispatches to all text adapters)

```bash
agentic-db goal list --where.unifiedSearch "search query" --select title,embeddingTextBm25Score,titleTrgmSimilarity,descriptionTrgmSimilarity,statusTrgmSimilarity,embeddingTextTrgmSimilarity,searchScore
```

### Search with pagination and field projection

```bash
agentic-db goal list --where.unifiedSearch "query" --limit 10 --select id,title,searchScore
agentic-db goal search "query" --limit 10 --select id,title,searchScore
```

### Create a goal

```bash
agentic-db goal create --title <String> [--description <String>] [--status <String>] [--targetDate <Datetime>] [--progress <BigFloat>] [--tags <String>] [--embeddingText <String>] [--embedding <Vector>] [--embeddingStale <Boolean>]
```

### Get a goal by id

```bash
agentic-db goal get --id <value>
```
