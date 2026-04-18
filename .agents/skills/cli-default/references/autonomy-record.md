# autonomyRecord

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for AutonomyRecord records via agentic-db CLI

**pgvector embedding fields:** `embedding`
High-dimensional vector columns for semantic similarity search. Query via the Unified Search API pgvector adapter using cosine, L2, or inner-product distance. Supports chunk-aware search: set `includeChunks: true` in VectorNearbyInput to transparently query across parent and chunk embeddings, returning the minimum distance.

**Unified Search API fields:** `embeddingTextBm25Score`, `titleTrgmSimilarity`, `recordTypeTrgmSimilarity`, `contentTrgmSimilarity`, `statusTrgmSimilarity`, `sourceTrgmSimilarity`, `embeddingTextTrgmSimilarity`, `searchScore`
Fields provided by the Unified Search plugin. Includes full-text search (tsvector/BM25), trigram similarity scores, and the combined searchScore. Computed fields are read-only and cannot be set in create/update operations.

## Usage

```bash
agentic-db autonomy-record list
agentic-db autonomy-record list --where.<field>.<op> <value> --orderBy <values>
agentic-db autonomy-record list --limit 10 --after <cursor>
agentic-db autonomy-record find-first --where.<field>.<op> <value>
agentic-db autonomy-record search <query>
agentic-db autonomy-record get --id <UUID>
agentic-db autonomy-record create --title <String> [--recordType <String>] [--content <String>] [--status <String>] [--priority <Int>] [--source <String>] [--context <JSON>] [--tags <String>] [--embeddingText <String>] [--embedding <Vector>] [--embeddingStale <Boolean>]
agentic-db autonomy-record update --id <UUID> [--title <String>] [--recordType <String>] [--content <String>] [--status <String>] [--priority <Int>] [--source <String>] [--context <JSON>] [--tags <String>] [--embeddingText <String>] [--embedding <Vector>] [--embeddingStale <Boolean>]
agentic-db autonomy-record delete --id <UUID>
```

## Examples

### List autonomyRecord records

```bash
agentic-db autonomy-record list
```

### List autonomyRecord records with pagination

```bash
agentic-db autonomy-record list --limit 10 --offset 0
```

### List autonomyRecord records with cursor pagination

```bash
agentic-db autonomy-record list --limit 10 --after <cursor>
```

### Find first matching autonomyRecord

```bash
agentic-db autonomy-record find-first --where.id.equalTo <value>
```

### List autonomyRecord records with field selection

```bash
agentic-db autonomy-record list --select id,id
```

### List autonomyRecord records with filtering and ordering

```bash
agentic-db autonomy-record list --where.id.equalTo <value> --orderBy ID_ASC
```

### Vector similarity search via `embedding` (manual vector)

```bash
# Pass a pre-computed vector array via dot-notation
agentic-db autonomy-record list --where.embedding.vector '[0.1,0.2,0.3]' --where.embedding.distance 1.0 --select title,embeddingVectorDistance
```

### Vector semantic search via `embedding` with --auto-embed

```bash
# --auto-embed converts text to vectors using the configured embedder (e.g. Ollama nomic-embed-text)
EMBEDDER_PROVIDER=ollama agentic-db autonomy-record search "semantic query" --auto-embed --select title,embeddingVectorDistance
EMBEDDER_PROVIDER=ollama agentic-db autonomy-record list --where.embedding.vector "semantic query" --auto-embed --select title,embeddingVectorDistance
```

### Create/update with auto-embedded `embedding` via --auto-embed

```bash
# --auto-embed on create/update converts text strings in vector fields to embeddings before saving
EMBEDDER_PROVIDER=ollama agentic-db autonomy-record create --embedding "text to embed" --auto-embed
EMBEDDER_PROVIDER=ollama agentic-db autonomy-record update --embedding "new text to embed" --auto-embed
```

### BM25 keyword search via `bm25EmbeddingText`

```bash
agentic-db autonomy-record list --where.bm25EmbeddingText.query "search query" --select title,embeddingTextBm25Score
```

### Fuzzy search via trigram similarity (`trgmTitle`)

```bash
agentic-db autonomy-record list --where.trgmTitle.value "approximate query" --where.trgmTitle.threshold 0.3 --select title,titleTrgmSimilarity
```

### Fuzzy search via trigram similarity (`trgmRecordType`)

```bash
agentic-db autonomy-record list --where.trgmRecordType.value "approximate query" --where.trgmRecordType.threshold 0.3 --select title,recordTypeTrgmSimilarity
```

### Fuzzy search via trigram similarity (`trgmContent`)

```bash
agentic-db autonomy-record list --where.trgmContent.value "approximate query" --where.trgmContent.threshold 0.3 --select title,contentTrgmSimilarity
```

### Fuzzy search via trigram similarity (`trgmStatus`)

```bash
agentic-db autonomy-record list --where.trgmStatus.value "approximate query" --where.trgmStatus.threshold 0.3 --select title,statusTrgmSimilarity
```

### Fuzzy search via trigram similarity (`trgmSource`)

```bash
agentic-db autonomy-record list --where.trgmSource.value "approximate query" --where.trgmSource.threshold 0.3 --select title,sourceTrgmSimilarity
```

### Fuzzy search via trigram similarity (`trgmEmbeddingText`)

```bash
agentic-db autonomy-record list --where.trgmEmbeddingText.value "approximate query" --where.trgmEmbeddingText.threshold 0.3 --select title,embeddingTextTrgmSimilarity
```

### Composite search (unifiedSearch dispatches to all text adapters)

```bash
agentic-db autonomy-record list --where.unifiedSearch "search query" --select title,embeddingTextBm25Score,titleTrgmSimilarity,recordTypeTrgmSimilarity,contentTrgmSimilarity,statusTrgmSimilarity,sourceTrgmSimilarity,embeddingTextTrgmSimilarity,searchScore
```

### Search with pagination and field projection

```bash
agentic-db autonomy-record list --where.unifiedSearch "query" --limit 10 --select id,title,searchScore
agentic-db autonomy-record search "query" --limit 10 --select id,title,searchScore
```

### Create a autonomyRecord

```bash
agentic-db autonomy-record create --title <String> [--recordType <String>] [--content <String>] [--status <String>] [--priority <Int>] [--source <String>] [--context <JSON>] [--tags <String>] [--embeddingText <String>] [--embedding <Vector>] [--embeddingStale <Boolean>]
```

### Get a autonomyRecord by id

```bash
agentic-db autonomy-record get --id <value>
```
