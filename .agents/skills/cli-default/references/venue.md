# venue

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for Venue records via agentic-db CLI

**pgvector embedding fields:** `embedding`
High-dimensional vector columns for semantic similarity search. Query via the Unified Search API pgvector adapter using cosine, L2, or inner-product distance. Supports chunk-aware search: set `includeChunks: true` in VectorNearbyInput to transparently query across parent and chunk embeddings, returning the minimum distance.

**Unified Search API fields:** `searchTsv`, `embeddingTextBm25Score`, `nameTrgmSimilarity`, `addressTrgmSimilarity`, `neighborhoodTrgmSimilarity`, `cityTrgmSimilarity`, `categoryTrgmSimilarity`, `statusTrgmSimilarity`, `googlePlaceIdTrgmSimilarity`, `priceLevelTrgmSimilarity`, `notesTrgmSimilarity`, `embeddingTextTrgmSimilarity`, `searchScore`
Fields provided by the Unified Search plugin. Includes full-text search (tsvector/BM25), trigram similarity scores, and the combined searchScore. Computed fields are read-only and cannot be set in create/update operations.

## Usage

```bash
agentic-db venue list
agentic-db venue list --where.<field>.<op> <value> --orderBy <values>
agentic-db venue list --limit 10 --after <cursor>
agentic-db venue find-first --where.<field>.<op> <value>
agentic-db venue search <query>
agentic-db venue get --id <UUID>
agentic-db venue create --name <String> [--address <String>] [--neighborhood <String>] [--city <String>] [--category <String>] [--status <String>] [--googlePlaceId <String>] [--rating <BigFloat>] [--priceLevel <String>] [--isFavorite <Boolean>] [--notes <String>] [--tags <String>] [--mainImageId <UUID>] [--embeddingText <String>] [--embedding <Vector>] [--embeddingUpdatedAt <Datetime>] [--location <GeographyInterface>]
agentic-db venue update --id <UUID> [--name <String>] [--address <String>] [--neighborhood <String>] [--city <String>] [--category <String>] [--status <String>] [--googlePlaceId <String>] [--rating <BigFloat>] [--priceLevel <String>] [--isFavorite <Boolean>] [--notes <String>] [--tags <String>] [--mainImageId <UUID>] [--embeddingText <String>] [--embedding <Vector>] [--embeddingUpdatedAt <Datetime>] [--location <GeographyInterface>]
agentic-db venue delete --id <UUID>
```

## Examples

### List venue records

```bash
agentic-db venue list
```

### List venue records with pagination

```bash
agentic-db venue list --limit 10 --offset 0
```

### List venue records with cursor pagination

```bash
agentic-db venue list --limit 10 --after <cursor>
```

### Find first matching venue

```bash
agentic-db venue find-first --where.id.equalTo <value>
```

### List venue records with field selection

```bash
agentic-db venue list --select id,id
```

### List venue records with filtering and ordering

```bash
agentic-db venue list --where.id.equalTo <value> --orderBy ID_ASC
```

### Vector similarity search via `embedding` (manual vector)

```bash
# Pass a pre-computed vector array via dot-notation
agentic-db venue list --where.embedding.vector '[0.1,0.2,0.3]' --where.embedding.distance 1.0 --select title,embeddingVectorDistance
```

### Vector semantic search via `embedding` with --auto-embed

```bash
# --auto-embed converts text to vectors using the configured embedder (e.g. Ollama nomic-embed-text)
EMBEDDER_PROVIDER=ollama agentic-db venue search "semantic query" --auto-embed --select title,embeddingVectorDistance
EMBEDDER_PROVIDER=ollama agentic-db venue list --where.embedding.vector "semantic query" --auto-embed --select title,embeddingVectorDistance
```

### Create/update with auto-embedded `embedding` via --auto-embed

```bash
# --auto-embed on create/update converts text strings in vector fields to embeddings before saving
EMBEDDER_PROVIDER=ollama agentic-db venue create --embedding "text to embed" --auto-embed
EMBEDDER_PROVIDER=ollama agentic-db venue update --embedding "new text to embed" --auto-embed
```

### Full-text search via tsvector (`searchTsv`)

```bash
agentic-db venue list --where.searchTsv "search query" --select title,tsvRank
```

### BM25 keyword search via `bm25EmbeddingText`

```bash
agentic-db venue list --where.bm25EmbeddingText.query "search query" --select title,embeddingTextBm25Score
```

### Fuzzy search via trigram similarity (`trgmName`)

```bash
agentic-db venue list --where.trgmName.value "approximate query" --where.trgmName.threshold 0.3 --select title,nameTrgmSimilarity
```

### Fuzzy search via trigram similarity (`trgmAddress`)

```bash
agentic-db venue list --where.trgmAddress.value "approximate query" --where.trgmAddress.threshold 0.3 --select title,addressTrgmSimilarity
```

### Fuzzy search via trigram similarity (`trgmNeighborhood`)

```bash
agentic-db venue list --where.trgmNeighborhood.value "approximate query" --where.trgmNeighborhood.threshold 0.3 --select title,neighborhoodTrgmSimilarity
```

### Fuzzy search via trigram similarity (`trgmCity`)

```bash
agentic-db venue list --where.trgmCity.value "approximate query" --where.trgmCity.threshold 0.3 --select title,cityTrgmSimilarity
```

### Fuzzy search via trigram similarity (`trgmCategory`)

```bash
agentic-db venue list --where.trgmCategory.value "approximate query" --where.trgmCategory.threshold 0.3 --select title,categoryTrgmSimilarity
```

### Fuzzy search via trigram similarity (`trgmStatus`)

```bash
agentic-db venue list --where.trgmStatus.value "approximate query" --where.trgmStatus.threshold 0.3 --select title,statusTrgmSimilarity
```

### Fuzzy search via trigram similarity (`trgmGooglePlaceId`)

```bash
agentic-db venue list --where.trgmGooglePlaceId.value "approximate query" --where.trgmGooglePlaceId.threshold 0.3 --select title,googlePlaceIdTrgmSimilarity
```

### Fuzzy search via trigram similarity (`trgmPriceLevel`)

```bash
agentic-db venue list --where.trgmPriceLevel.value "approximate query" --where.trgmPriceLevel.threshold 0.3 --select title,priceLevelTrgmSimilarity
```

### Fuzzy search via trigram similarity (`trgmNotes`)

```bash
agentic-db venue list --where.trgmNotes.value "approximate query" --where.trgmNotes.threshold 0.3 --select title,notesTrgmSimilarity
```

### Fuzzy search via trigram similarity (`trgmEmbeddingText`)

```bash
agentic-db venue list --where.trgmEmbeddingText.value "approximate query" --where.trgmEmbeddingText.threshold 0.3 --select title,embeddingTextTrgmSimilarity
```

### Composite search (unifiedSearch dispatches to all text adapters)

```bash
agentic-db venue list --where.unifiedSearch "search query" --select title,tsvRank,embeddingTextBm25Score,nameTrgmSimilarity,addressTrgmSimilarity,neighborhoodTrgmSimilarity,cityTrgmSimilarity,categoryTrgmSimilarity,statusTrgmSimilarity,googlePlaceIdTrgmSimilarity,priceLevelTrgmSimilarity,notesTrgmSimilarity,embeddingTextTrgmSimilarity,searchScore
```

### Search with pagination and field projection

```bash
agentic-db venue list --where.unifiedSearch "query" --limit 10 --select id,title,searchScore
agentic-db venue search "query" --limit 10 --select id,title,searchScore
```

### Create a venue

```bash
agentic-db venue create --name <String> [--address <String>] [--neighborhood <String>] [--city <String>] [--category <String>] [--status <String>] [--googlePlaceId <String>] [--rating <BigFloat>] [--priceLevel <String>] [--isFavorite <Boolean>] [--notes <String>] [--tags <String>] [--mainImageId <UUID>] [--embeddingText <String>] [--embedding <Vector>] [--embeddingUpdatedAt <Datetime>] [--location <GeographyInterface>]
```

### Get a venue by id

```bash
agentic-db venue get --id <value>
```
