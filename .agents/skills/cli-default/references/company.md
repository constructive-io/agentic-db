# company

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for Company records via agentic-db CLI

**pgvector embedding fields:** `embedding`
High-dimensional vector columns for semantic similarity search. Query via the Unified Search API pgvector adapter using cosine, L2, or inner-product distance. Supports chunk-aware search: set `includeChunks: true` in VectorNearbyInput to transparently query across parent and chunk embeddings, returning the minimum distance.

**Unified Search API fields:** `searchTsv`, `embeddingTextBm25Score`, `nameTrgmSimilarity`, `domainTrgmSimilarity`, `industryTrgmSimilarity`, `descriptionTrgmSimilarity`, `embeddingTextTrgmSimilarity`, `searchScore`
Fields provided by the Unified Search plugin. Includes full-text search (tsvector/BM25), trigram similarity scores, and the combined searchScore. Computed fields are read-only and cannot be set in create/update operations.

## Usage

```bash
agentic-db company list
agentic-db company list --where.<field>.<op> <value> --orderBy <values>
agentic-db company list --limit 10 --after <cursor>
agentic-db company find-first --where.<field>.<op> <value>
agentic-db company search <query>
agentic-db company get --id <UUID>
agentic-db company create --name <String> [--domain <String>] [--industry <String>] [--description <String>] [--tags <String>] [--mainImageId <UUID>] [--embeddingText <String>] [--embedding <Vector>] [--embeddingStale <Boolean>]
agentic-db company update --id <UUID> [--name <String>] [--domain <String>] [--industry <String>] [--description <String>] [--tags <String>] [--mainImageId <UUID>] [--embeddingText <String>] [--embedding <Vector>] [--embeddingStale <Boolean>]
agentic-db company delete --id <UUID>
```

## Examples

### List company records

```bash
agentic-db company list
```

### List company records with pagination

```bash
agentic-db company list --limit 10 --offset 0
```

### List company records with cursor pagination

```bash
agentic-db company list --limit 10 --after <cursor>
```

### Find first matching company

```bash
agentic-db company find-first --where.id.equalTo <value>
```

### List company records with field selection

```bash
agentic-db company list --select id,id
```

### List company records with filtering and ordering

```bash
agentic-db company list --where.id.equalTo <value> --orderBy ID_ASC
```

### Vector similarity search via `embedding` (manual vector)

```bash
# Pass a pre-computed vector array via dot-notation
agentic-db company list --where.embedding.vector '[0.1,0.2,0.3]' --where.embedding.distance 1.0 --select title,embeddingVectorDistance
```

### Vector semantic search via `embedding` with --auto-embed

```bash
# --auto-embed converts text to vectors using the configured embedder (e.g. Ollama nomic-embed-text)
EMBEDDER_PROVIDER=ollama agentic-db company search "semantic query" --auto-embed --select title,embeddingVectorDistance
EMBEDDER_PROVIDER=ollama agentic-db company list --where.embedding.vector "semantic query" --auto-embed --select title,embeddingVectorDistance
```

### Create/update with auto-embedded `embedding` via --auto-embed

```bash
# --auto-embed on create/update converts text strings in vector fields to embeddings before saving
EMBEDDER_PROVIDER=ollama agentic-db company create --embedding "text to embed" --auto-embed
EMBEDDER_PROVIDER=ollama agentic-db company update --embedding "new text to embed" --auto-embed
```

### Full-text search via tsvector (`searchTsv`)

```bash
agentic-db company list --where.searchTsv "search query" --select title,tsvRank
```

### BM25 keyword search via `bm25EmbeddingText`

```bash
agentic-db company list --where.bm25EmbeddingText.query "search query" --select title,embeddingTextBm25Score
```

### Fuzzy search via trigram similarity (`trgmName`)

```bash
agentic-db company list --where.trgmName.value "approximate query" --where.trgmName.threshold 0.3 --select title,nameTrgmSimilarity
```

### Fuzzy search via trigram similarity (`trgmDomain`)

```bash
agentic-db company list --where.trgmDomain.value "approximate query" --where.trgmDomain.threshold 0.3 --select title,domainTrgmSimilarity
```

### Fuzzy search via trigram similarity (`trgmIndustry`)

```bash
agentic-db company list --where.trgmIndustry.value "approximate query" --where.trgmIndustry.threshold 0.3 --select title,industryTrgmSimilarity
```

### Fuzzy search via trigram similarity (`trgmDescription`)

```bash
agentic-db company list --where.trgmDescription.value "approximate query" --where.trgmDescription.threshold 0.3 --select title,descriptionTrgmSimilarity
```

### Fuzzy search via trigram similarity (`trgmEmbeddingText`)

```bash
agentic-db company list --where.trgmEmbeddingText.value "approximate query" --where.trgmEmbeddingText.threshold 0.3 --select title,embeddingTextTrgmSimilarity
```

### Composite search (fullTextSearch dispatches to all text adapters)

```bash
agentic-db company list --where.fullTextSearch "search query" --select title,tsvRank,embeddingTextBm25Score,nameTrgmSimilarity,domainTrgmSimilarity,industryTrgmSimilarity,descriptionTrgmSimilarity,embeddingTextTrgmSimilarity,searchScore
```

### Search with pagination and field projection

```bash
agentic-db company list --where.fullTextSearch "query" --limit 10 --select id,title,searchScore
agentic-db company search "query" --limit 10 --select id,title,searchScore
```

### Create a company

```bash
agentic-db company create --name <String> [--domain <String>] [--industry <String>] [--description <String>] [--tags <String>] [--mainImageId <UUID>] [--embeddingText <String>] [--embedding <Vector>] [--embeddingStale <Boolean>]
```

### Get a company by id

```bash
agentic-db company get --id <value>
```
