# interaction

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for Interaction records via agentic-db CLI

**pgvector embedding fields:** `embedding`
High-dimensional vector columns for semantic similarity search. Query via the Unified Search API pgvector adapter using cosine, L2, or inner-product distance. Supports chunk-aware search: set `includeChunks: true` in VectorNearbyInput to transparently query across parent and chunk embeddings, returning the minimum distance.

**Unified Search API fields:** `embeddingTextBm25Score`, `typeTrgmSimilarity`, `summaryTrgmSimilarity`, `sentimentTrgmSimilarity`, `embeddingTextTrgmSimilarity`, `searchScore`
Fields provided by the Unified Search plugin. Includes full-text search (tsvector/BM25), trigram similarity scores, and the combined searchScore. Computed fields are read-only and cannot be set in create/update operations.

## Usage

```bash
agentic-db interaction list
agentic-db interaction list --where.<field>.<op> <value> --orderBy <values>
agentic-db interaction list --limit 10 --after <cursor>
agentic-db interaction find-first --where.<field>.<op> <value>
agentic-db interaction search <query>
agentic-db interaction get --id <UUID>
agentic-db interaction create --contactId <UUID> --type <String> --occurredAt <Datetime> [--summary <String>] [--sentiment <String>] [--tags <String>] [--embeddingText <String>] [--embedding <Vector>] [--embeddingStale <Boolean>]
agentic-db interaction update --id <UUID> [--contactId <UUID>] [--type <String>] [--occurredAt <Datetime>] [--summary <String>] [--sentiment <String>] [--tags <String>] [--embeddingText <String>] [--embedding <Vector>] [--embeddingStale <Boolean>]
agentic-db interaction delete --id <UUID>
```

## Examples

### List interaction records

```bash
agentic-db interaction list
```

### List interaction records with pagination

```bash
agentic-db interaction list --limit 10 --offset 0
```

### List interaction records with cursor pagination

```bash
agentic-db interaction list --limit 10 --after <cursor>
```

### Find first matching interaction

```bash
agentic-db interaction find-first --where.id.equalTo <value>
```

### List interaction records with field selection

```bash
agentic-db interaction list --select id,id
```

### List interaction records with filtering and ordering

```bash
agentic-db interaction list --where.id.equalTo <value> --orderBy ID_ASC
```

### Vector similarity search via `embedding` (manual vector)

```bash
# Pass a pre-computed vector array via dot-notation
agentic-db interaction list --where.embedding.vector '[0.1,0.2,0.3]' --where.embedding.distance 1.0 --select title,embeddingVectorDistance
```

### Vector semantic search via `embedding` with --auto-embed

```bash
# --auto-embed converts text to vectors using the configured embedder (e.g. Ollama nomic-embed-text)
EMBEDDER_PROVIDER=ollama agentic-db interaction search "semantic query" --auto-embed --select title,embeddingVectorDistance
EMBEDDER_PROVIDER=ollama agentic-db interaction list --where.embedding.vector "semantic query" --auto-embed --select title,embeddingVectorDistance
```

### Create/update with auto-embedded `embedding` via --auto-embed

```bash
# --auto-embed on create/update converts text strings in vector fields to embeddings before saving
EMBEDDER_PROVIDER=ollama agentic-db interaction create --embedding "text to embed" --auto-embed
EMBEDDER_PROVIDER=ollama agentic-db interaction update --embedding "new text to embed" --auto-embed
```

### BM25 keyword search via `bm25EmbeddingText`

```bash
agentic-db interaction list --where.bm25EmbeddingText.query "search query" --select title,embeddingTextBm25Score
```

### Fuzzy search via trigram similarity (`trgmType`)

```bash
agentic-db interaction list --where.trgmType.value "approximate query" --where.trgmType.threshold 0.3 --select title,typeTrgmSimilarity
```

### Fuzzy search via trigram similarity (`trgmSummary`)

```bash
agentic-db interaction list --where.trgmSummary.value "approximate query" --where.trgmSummary.threshold 0.3 --select title,summaryTrgmSimilarity
```

### Fuzzy search via trigram similarity (`trgmSentiment`)

```bash
agentic-db interaction list --where.trgmSentiment.value "approximate query" --where.trgmSentiment.threshold 0.3 --select title,sentimentTrgmSimilarity
```

### Fuzzy search via trigram similarity (`trgmEmbeddingText`)

```bash
agentic-db interaction list --where.trgmEmbeddingText.value "approximate query" --where.trgmEmbeddingText.threshold 0.3 --select title,embeddingTextTrgmSimilarity
```

### Composite search (fullTextSearch dispatches to all text adapters)

```bash
agentic-db interaction list --where.fullTextSearch "search query" --select title,embeddingTextBm25Score,typeTrgmSimilarity,summaryTrgmSimilarity,sentimentTrgmSimilarity,embeddingTextTrgmSimilarity,searchScore
```

### Search with pagination and field projection

```bash
agentic-db interaction list --where.fullTextSearch "query" --limit 10 --select id,title,searchScore
agentic-db interaction search "query" --limit 10 --select id,title,searchScore
```

### Create a interaction

```bash
agentic-db interaction create --contactId <UUID> --type <String> --occurredAt <Datetime> [--summary <String>] [--sentiment <String>] [--tags <String>] [--embeddingText <String>] [--embedding <Vector>] [--embeddingStale <Boolean>]
```

### Get a interaction by id

```bash
agentic-db interaction get --id <value>
```
