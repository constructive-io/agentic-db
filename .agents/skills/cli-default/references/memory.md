# memory

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for Memory records via agentic-db CLI

**pgvector embedding fields:** `embedding`
High-dimensional vector columns for semantic similarity search. Query via the Unified Search API pgvector adapter using cosine, L2, or inner-product distance. Supports chunk-aware search: set `includeChunks: true` in VectorNearbyInput to transparently query across parent and chunk embeddings, returning the minimum distance.

**Unified Search API fields:** `embeddingTextBm25Score`, `titleTrgmSimilarity`, `contentTrgmSimilarity`, `locationTrgmSimilarity`, `moodTrgmSimilarity`, `embeddingTextTrgmSimilarity`, `searchScore`
Fields provided by the Unified Search plugin. Includes full-text search (tsvector/BM25), trigram similarity scores, and the combined searchScore. Computed fields are read-only and cannot be set in create/update operations.

## Usage

```bash
agentic-db memory list
agentic-db memory list --where.<field>.<op> <value> --orderBy <values>
agentic-db memory list --limit 10 --after <cursor>
agentic-db memory find-first --where.<field>.<op> <value>
agentic-db memory search <query>
agentic-db memory get --id <UUID>
agentic-db memory create --title <String> [--content <String>] [--location <String>] [--occurredAt <Datetime>] [--mood <String>] [--tags <String>] [--embeddingText <String>] [--embedding <Vector>] [--embeddingStale <Boolean>] [--locationGeo <GeographyInterface>] [--agentId <UUID>]
agentic-db memory update --id <UUID> [--title <String>] [--content <String>] [--location <String>] [--occurredAt <Datetime>] [--mood <String>] [--tags <String>] [--embeddingText <String>] [--embedding <Vector>] [--embeddingStale <Boolean>] [--locationGeo <GeographyInterface>] [--agentId <UUID>]
agentic-db memory delete --id <UUID>
```

## Examples

### List memory records

```bash
agentic-db memory list
```

### List memory records with pagination

```bash
agentic-db memory list --limit 10 --offset 0
```

### List memory records with cursor pagination

```bash
agentic-db memory list --limit 10 --after <cursor>
```

### Find first matching memory

```bash
agentic-db memory find-first --where.id.equalTo <value>
```

### List memory records with field selection

```bash
agentic-db memory list --select id,id
```

### List memory records with filtering and ordering

```bash
agentic-db memory list --where.id.equalTo <value> --orderBy ID_ASC
```

### Vector similarity search via `embedding` (manual vector)

```bash
# Pass a pre-computed vector array via dot-notation
agentic-db memory list --where.embedding.vector '[0.1,0.2,0.3]' --where.embedding.distance 1.0 --select title,embeddingVectorDistance
```

### Vector semantic search via `embedding` with --auto-embed

```bash
# --auto-embed converts text to vectors using the configured embedder (e.g. Ollama nomic-embed-text)
EMBEDDER_PROVIDER=ollama agentic-db memory search "semantic query" --auto-embed --select title,embeddingVectorDistance
EMBEDDER_PROVIDER=ollama agentic-db memory list --where.embedding.vector "semantic query" --auto-embed --select title,embeddingVectorDistance
```

### Create/update with auto-embedded `embedding` via --auto-embed

```bash
# --auto-embed on create/update converts text strings in vector fields to embeddings before saving
EMBEDDER_PROVIDER=ollama agentic-db memory create --embedding "text to embed" --auto-embed
EMBEDDER_PROVIDER=ollama agentic-db memory update --embedding "new text to embed" --auto-embed
```

### BM25 keyword search via `bm25EmbeddingText`

```bash
agentic-db memory list --where.bm25EmbeddingText.query "search query" --select title,embeddingTextBm25Score
```

### Fuzzy search via trigram similarity (`trgmTitle`)

```bash
agentic-db memory list --where.trgmTitle.value "approximate query" --where.trgmTitle.threshold 0.3 --select title,titleTrgmSimilarity
```

### Fuzzy search via trigram similarity (`trgmContent`)

```bash
agentic-db memory list --where.trgmContent.value "approximate query" --where.trgmContent.threshold 0.3 --select title,contentTrgmSimilarity
```

### Fuzzy search via trigram similarity (`trgmLocation`)

```bash
agentic-db memory list --where.trgmLocation.value "approximate query" --where.trgmLocation.threshold 0.3 --select title,locationTrgmSimilarity
```

### Fuzzy search via trigram similarity (`trgmMood`)

```bash
agentic-db memory list --where.trgmMood.value "approximate query" --where.trgmMood.threshold 0.3 --select title,moodTrgmSimilarity
```

### Fuzzy search via trigram similarity (`trgmEmbeddingText`)

```bash
agentic-db memory list --where.trgmEmbeddingText.value "approximate query" --where.trgmEmbeddingText.threshold 0.3 --select title,embeddingTextTrgmSimilarity
```

### Composite search (fullTextSearch dispatches to all text adapters)

```bash
agentic-db memory list --where.fullTextSearch "search query" --select title,embeddingTextBm25Score,titleTrgmSimilarity,contentTrgmSimilarity,locationTrgmSimilarity,moodTrgmSimilarity,embeddingTextTrgmSimilarity,searchScore
```

### Search with pagination and field projection

```bash
agentic-db memory list --where.fullTextSearch "query" --limit 10 --select id,title,searchScore
agentic-db memory search "query" --limit 10 --select id,title,searchScore
```

### Create a memory

```bash
agentic-db memory create --title <String> [--content <String>] [--location <String>] [--occurredAt <Datetime>] [--mood <String>] [--tags <String>] [--embeddingText <String>] [--embedding <Vector>] [--embeddingStale <Boolean>] [--locationGeo <GeographyInterface>] [--agentId <UUID>]
```

### Get a memory by id

```bash
agentic-db memory get --id <value>
```
