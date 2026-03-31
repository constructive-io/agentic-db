# hikingTrail

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for HikingTrail records via agentic-db CLI

**pgvector embedding fields:** `embedding`
High-dimensional vector columns for semantic similarity search. Query via the Unified Search API pgvector adapter using cosine, L2, or inner-product distance. Supports chunk-aware search: set `includeChunks: true` in VectorNearbyInput to transparently query across parent and chunk embeddings, returning the minimum distance.

**Unified Search API fields:** `embeddingTextBm25Score`, `nameTrgmSimilarity`, `locationTrgmSimilarity`, `descriptionTrgmSimilarity`, `difficultyTrgmSimilarity`, `embeddingTextTrgmSimilarity`, `searchScore`
Fields provided by the Unified Search plugin. Includes full-text search (tsvector/BM25), trigram similarity scores, and the combined searchScore. Computed fields are read-only and cannot be set in create/update operations.

## Usage

```bash
agentic-db hiking-trail list
agentic-db hiking-trail list --where.<field>.<op> <value> --orderBy <values>
agentic-db hiking-trail list --limit 10 --after <cursor>
agentic-db hiking-trail find-first --where.<field>.<op> <value>
agentic-db hiking-trail search <query>
agentic-db hiking-trail get --id <UUID>
agentic-db hiking-trail create --entityId <UUID> --name <String> [--location <String>] [--description <String>] [--difficulty <String>] [--distanceKm <BigFloat>] [--elevationGainm <BigFloat>] [--rating <BigFloat>] [--tags <String>] [--embeddingText <String>] [--embedding <Vector>] [--embeddingStale <Boolean>] [--trailheadGeo <GeographyInterface>]
agentic-db hiking-trail update --id <UUID> [--entityId <UUID>] [--name <String>] [--location <String>] [--description <String>] [--difficulty <String>] [--distanceKm <BigFloat>] [--elevationGainm <BigFloat>] [--rating <BigFloat>] [--tags <String>] [--embeddingText <String>] [--embedding <Vector>] [--embeddingStale <Boolean>] [--trailheadGeo <GeographyInterface>]
agentic-db hiking-trail delete --id <UUID>
```

## Examples

### List hikingTrail records

```bash
agentic-db hiking-trail list
```

### List hikingTrail records with pagination

```bash
agentic-db hiking-trail list --limit 10 --offset 0
```

### List hikingTrail records with cursor pagination

```bash
agentic-db hiking-trail list --limit 10 --after <cursor>
```

### Find first matching hikingTrail

```bash
agentic-db hiking-trail find-first --where.id.equalTo <value>
```

### List hikingTrail records with field selection

```bash
agentic-db hiking-trail list --select id,id
```

### List hikingTrail records with filtering and ordering

```bash
agentic-db hiking-trail list --where.id.equalTo <value> --orderBy ID_ASC
```

### Vector similarity search via `embedding` (manual vector)

```bash
# Pass a pre-computed vector array via dot-notation
agentic-db hiking-trail list --where.embedding.vector '[0.1,0.2,0.3]' --where.embedding.distance 1.0 --select title,embeddingVectorDistance
```

### Vector semantic search via `embedding` with --auto-embed

```bash
# --auto-embed converts text to vectors using the configured embedder (e.g. Ollama nomic-embed-text)
EMBEDDER_PROVIDER=ollama agentic-db hiking-trail search "semantic query" --auto-embed --select title,embeddingVectorDistance
EMBEDDER_PROVIDER=ollama agentic-db hiking-trail list --where.embedding.vector "semantic query" --auto-embed --select title,embeddingVectorDistance
```

### Create/update with auto-embedded `embedding` via --auto-embed

```bash
# --auto-embed on create/update converts text strings in vector fields to embeddings before saving
EMBEDDER_PROVIDER=ollama agentic-db hiking-trail create --embedding "text to embed" --auto-embed
EMBEDDER_PROVIDER=ollama agentic-db hiking-trail update --embedding "new text to embed" --auto-embed
```

### BM25 keyword search via `bm25EmbeddingText`

```bash
agentic-db hiking-trail list --where.bm25EmbeddingText.query "search query" --select title,embeddingTextBm25Score
```

### Fuzzy search via trigram similarity (`trgmName`)

```bash
agentic-db hiking-trail list --where.trgmName.value "approximate query" --where.trgmName.threshold 0.3 --select title,nameTrgmSimilarity
```

### Fuzzy search via trigram similarity (`trgmLocation`)

```bash
agentic-db hiking-trail list --where.trgmLocation.value "approximate query" --where.trgmLocation.threshold 0.3 --select title,locationTrgmSimilarity
```

### Fuzzy search via trigram similarity (`trgmDescription`)

```bash
agentic-db hiking-trail list --where.trgmDescription.value "approximate query" --where.trgmDescription.threshold 0.3 --select title,descriptionTrgmSimilarity
```

### Fuzzy search via trigram similarity (`trgmDifficulty`)

```bash
agentic-db hiking-trail list --where.trgmDifficulty.value "approximate query" --where.trgmDifficulty.threshold 0.3 --select title,difficultyTrgmSimilarity
```

### Fuzzy search via trigram similarity (`trgmEmbeddingText`)

```bash
agentic-db hiking-trail list --where.trgmEmbeddingText.value "approximate query" --where.trgmEmbeddingText.threshold 0.3 --select title,embeddingTextTrgmSimilarity
```

### Composite search (fullTextSearch dispatches to all text adapters)

```bash
agentic-db hiking-trail list --where.fullTextSearch "search query" --select title,embeddingTextBm25Score,nameTrgmSimilarity,locationTrgmSimilarity,descriptionTrgmSimilarity,difficultyTrgmSimilarity,embeddingTextTrgmSimilarity,searchScore
```

### Search with pagination and field projection

```bash
agentic-db hiking-trail list --where.fullTextSearch "query" --limit 10 --select id,title,searchScore
agentic-db hiking-trail search "query" --limit 10 --select id,title,searchScore
```

### Create a hikingTrail

```bash
agentic-db hiking-trail create --entityId <UUID> --name <String> [--location <String>] [--description <String>] [--difficulty <String>] [--distanceKm <BigFloat>] [--elevationGainm <BigFloat>] [--rating <BigFloat>] [--tags <String>] [--embeddingText <String>] [--embedding <Vector>] [--embeddingStale <Boolean>] [--trailheadGeo <GeographyInterface>]
```

### Get a hikingTrail by id

```bash
agentic-db hiking-trail get --id <value>
```
