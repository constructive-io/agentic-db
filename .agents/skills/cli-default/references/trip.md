# trip

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for Trip records via agentic-db CLI

**pgvector embedding fields:** `embedding`
High-dimensional vector columns for semantic similarity search. Query via the Unified Search API pgvector adapter using cosine, L2, or inner-product distance. Supports chunk-aware search: set `includeChunks: true` in VectorNearbyInput to transparently query across parent and chunk embeddings, returning the minimum distance.

**Unified Search API fields:** `embeddingTextBm25Score`, `nameTrgmSimilarity`, `destinationTrgmSimilarity`, `descriptionTrgmSimilarity`, `embeddingTextTrgmSimilarity`, `searchScore`
Fields provided by the Unified Search plugin. Includes full-text search (tsvector/BM25), trigram similarity scores, and the combined searchScore. Computed fields are read-only and cannot be set in create/update operations.

## Usage

```bash
agentic-db trip list
agentic-db trip list --where.<field>.<op> <value> --orderBy <values>
agentic-db trip list --limit 10 --after <cursor>
agentic-db trip find-first --where.<field>.<op> <value>
agentic-db trip search <query>
agentic-db trip get --id <UUID>
agentic-db trip create --name <String> [--destination <String>] [--description <String>] [--startDate <Datetime>] [--endDate <Datetime>] [--tags <String>] [--embeddingText <String>] [--embedding <Vector>] [--embeddingUpdatedAt <Datetime>] [--destinationGeo <GeographyInterface>]
agentic-db trip update --id <UUID> [--name <String>] [--destination <String>] [--description <String>] [--startDate <Datetime>] [--endDate <Datetime>] [--tags <String>] [--embeddingText <String>] [--embedding <Vector>] [--embeddingUpdatedAt <Datetime>] [--destinationGeo <GeographyInterface>]
agentic-db trip delete --id <UUID>
```

## Examples

### List trip records

```bash
agentic-db trip list
```

### List trip records with pagination

```bash
agentic-db trip list --limit 10 --offset 0
```

### List trip records with cursor pagination

```bash
agentic-db trip list --limit 10 --after <cursor>
```

### Find first matching trip

```bash
agentic-db trip find-first --where.id.equalTo <value>
```

### List trip records with field selection

```bash
agentic-db trip list --select id,id
```

### List trip records with filtering and ordering

```bash
agentic-db trip list --where.id.equalTo <value> --orderBy ID_ASC
```

### Vector similarity search via `embedding` (manual vector)

```bash
# Pass a pre-computed vector array via dot-notation
agentic-db trip list --where.embedding.vector '[0.1,0.2,0.3]' --where.embedding.distance 1.0 --select title,embeddingVectorDistance
```

### Vector semantic search via `embedding` with --auto-embed

```bash
# --auto-embed converts text to vectors using the configured embedder (e.g. Ollama nomic-embed-text)
EMBEDDER_PROVIDER=ollama agentic-db trip search "semantic query" --auto-embed --select title,embeddingVectorDistance
EMBEDDER_PROVIDER=ollama agentic-db trip list --where.embedding.vector "semantic query" --auto-embed --select title,embeddingVectorDistance
```

### Create/update with auto-embedded `embedding` via --auto-embed

```bash
# --auto-embed on create/update converts text strings in vector fields to embeddings before saving
EMBEDDER_PROVIDER=ollama agentic-db trip create --embedding "text to embed" --auto-embed
EMBEDDER_PROVIDER=ollama agentic-db trip update --embedding "new text to embed" --auto-embed
```

### BM25 keyword search via `bm25EmbeddingText`

```bash
agentic-db trip list --where.bm25EmbeddingText.query "search query" --select title,embeddingTextBm25Score
```

### Fuzzy search via trigram similarity (`trgmName`)

```bash
agentic-db trip list --where.trgmName.value "approximate query" --where.trgmName.threshold 0.3 --select title,nameTrgmSimilarity
```

### Fuzzy search via trigram similarity (`trgmDestination`)

```bash
agentic-db trip list --where.trgmDestination.value "approximate query" --where.trgmDestination.threshold 0.3 --select title,destinationTrgmSimilarity
```

### Fuzzy search via trigram similarity (`trgmDescription`)

```bash
agentic-db trip list --where.trgmDescription.value "approximate query" --where.trgmDescription.threshold 0.3 --select title,descriptionTrgmSimilarity
```

### Fuzzy search via trigram similarity (`trgmEmbeddingText`)

```bash
agentic-db trip list --where.trgmEmbeddingText.value "approximate query" --where.trgmEmbeddingText.threshold 0.3 --select title,embeddingTextTrgmSimilarity
```

### Composite search (unifiedSearch dispatches to all text adapters)

```bash
agentic-db trip list --where.unifiedSearch "search query" --select title,embeddingTextBm25Score,nameTrgmSimilarity,destinationTrgmSimilarity,descriptionTrgmSimilarity,embeddingTextTrgmSimilarity,searchScore
```

### Search with pagination and field projection

```bash
agentic-db trip list --where.unifiedSearch "query" --limit 10 --select id,title,searchScore
agentic-db trip search "query" --limit 10 --select id,title,searchScore
```

### Create a trip

```bash
agentic-db trip create --name <String> [--destination <String>] [--description <String>] [--startDate <Datetime>] [--endDate <Datetime>] [--tags <String>] [--embeddingText <String>] [--embedding <Vector>] [--embeddingUpdatedAt <Datetime>] [--destinationGeo <GeographyInterface>]
```

### Get a trip by id

```bash
agentic-db trip get --id <value>
```
