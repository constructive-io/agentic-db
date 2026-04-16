# activityLog

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for ActivityLog records via agentic-db CLI

**pgvector embedding fields:** `embedding`
High-dimensional vector columns for semantic similarity search. Query via the Unified Search API pgvector adapter using cosine, L2, or inner-product distance. Supports chunk-aware search: set `includeChunks: true` in VectorNearbyInput to transparently query across parent and chunk embeddings, returning the minimum distance.

**Unified Search API fields:** `embeddingTextBm25Score`, `activityTypeTrgmSimilarity`, `quantityUnitTrgmSimilarity`, `intensityTrgmSimilarity`, `notesTrgmSimilarity`, `embeddingTextTrgmSimilarity`, `searchScore`
Fields provided by the Unified Search plugin. Includes full-text search (tsvector/BM25), trigram similarity scores, and the combined searchScore. Computed fields are read-only and cannot be set in create/update operations.

## Usage

```bash
agentic-db activity-log list
agentic-db activity-log list --where.<field>.<op> <value> --orderBy <values>
agentic-db activity-log list --limit 10 --after <cursor>
agentic-db activity-log find-first --where.<field>.<op> <value>
agentic-db activity-log search <query>
agentic-db activity-log get --id <UUID>
agentic-db activity-log create --activityType <String> --completedAt <Datetime> [--durationMinutes <Int>] [--quantity <BigFloat>] [--quantityUnit <String>] [--intensity <String>] [--notes <String>] [--meta <JSON>] [--tags <String>] [--embeddingText <String>] [--embedding <Vector>] [--embeddingStale <Boolean>] [--habitId <UUID>]
agentic-db activity-log update --id <UUID> [--activityType <String>] [--completedAt <Datetime>] [--durationMinutes <Int>] [--quantity <BigFloat>] [--quantityUnit <String>] [--intensity <String>] [--notes <String>] [--meta <JSON>] [--tags <String>] [--embeddingText <String>] [--embedding <Vector>] [--embeddingStale <Boolean>] [--habitId <UUID>]
agentic-db activity-log delete --id <UUID>
```

## Examples

### List activityLog records

```bash
agentic-db activity-log list
```

### List activityLog records with pagination

```bash
agentic-db activity-log list --limit 10 --offset 0
```

### List activityLog records with cursor pagination

```bash
agentic-db activity-log list --limit 10 --after <cursor>
```

### Find first matching activityLog

```bash
agentic-db activity-log find-first --where.id.equalTo <value>
```

### List activityLog records with field selection

```bash
agentic-db activity-log list --select id,id
```

### List activityLog records with filtering and ordering

```bash
agentic-db activity-log list --where.id.equalTo <value> --orderBy ID_ASC
```

### Vector similarity search via `embedding` (manual vector)

```bash
# Pass a pre-computed vector array via dot-notation
agentic-db activity-log list --where.embedding.vector '[0.1,0.2,0.3]' --where.embedding.distance 1.0 --select title,embeddingVectorDistance
```

### Vector semantic search via `embedding` with --auto-embed

```bash
# --auto-embed converts text to vectors using the configured embedder (e.g. Ollama nomic-embed-text)
EMBEDDER_PROVIDER=ollama agentic-db activity-log search "semantic query" --auto-embed --select title,embeddingVectorDistance
EMBEDDER_PROVIDER=ollama agentic-db activity-log list --where.embedding.vector "semantic query" --auto-embed --select title,embeddingVectorDistance
```

### Create/update with auto-embedded `embedding` via --auto-embed

```bash
# --auto-embed on create/update converts text strings in vector fields to embeddings before saving
EMBEDDER_PROVIDER=ollama agentic-db activity-log create --embedding "text to embed" --auto-embed
EMBEDDER_PROVIDER=ollama agentic-db activity-log update --embedding "new text to embed" --auto-embed
```

### BM25 keyword search via `bm25EmbeddingText`

```bash
agentic-db activity-log list --where.bm25EmbeddingText.query "search query" --select title,embeddingTextBm25Score
```

### Fuzzy search via trigram similarity (`trgmActivityType`)

```bash
agentic-db activity-log list --where.trgmActivityType.value "approximate query" --where.trgmActivityType.threshold 0.3 --select title,activityTypeTrgmSimilarity
```

### Fuzzy search via trigram similarity (`trgmQuantityUnit`)

```bash
agentic-db activity-log list --where.trgmQuantityUnit.value "approximate query" --where.trgmQuantityUnit.threshold 0.3 --select title,quantityUnitTrgmSimilarity
```

### Fuzzy search via trigram similarity (`trgmIntensity`)

```bash
agentic-db activity-log list --where.trgmIntensity.value "approximate query" --where.trgmIntensity.threshold 0.3 --select title,intensityTrgmSimilarity
```

### Fuzzy search via trigram similarity (`trgmNotes`)

```bash
agentic-db activity-log list --where.trgmNotes.value "approximate query" --where.trgmNotes.threshold 0.3 --select title,notesTrgmSimilarity
```

### Fuzzy search via trigram similarity (`trgmEmbeddingText`)

```bash
agentic-db activity-log list --where.trgmEmbeddingText.value "approximate query" --where.trgmEmbeddingText.threshold 0.3 --select title,embeddingTextTrgmSimilarity
```

### Composite search (fullTextSearch dispatches to all text adapters)

```bash
agentic-db activity-log list --where.fullTextSearch "search query" --select title,embeddingTextBm25Score,activityTypeTrgmSimilarity,quantityUnitTrgmSimilarity,intensityTrgmSimilarity,notesTrgmSimilarity,embeddingTextTrgmSimilarity,searchScore
```

### Search with pagination and field projection

```bash
agentic-db activity-log list --where.fullTextSearch "query" --limit 10 --select id,title,searchScore
agentic-db activity-log search "query" --limit 10 --select id,title,searchScore
```

### Create a activityLog

```bash
agentic-db activity-log create --activityType <String> --completedAt <Datetime> [--durationMinutes <Int>] [--quantity <BigFloat>] [--quantityUnit <String>] [--intensity <String>] [--notes <String>] [--meta <JSON>] [--tags <String>] [--embeddingText <String>] [--embedding <Vector>] [--embeddingStale <Boolean>] [--habitId <UUID>]
```

### Get a activityLog by id

```bash
agentic-db activity-log get --id <value>
```
