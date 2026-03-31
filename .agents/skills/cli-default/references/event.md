# event

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for Event records via agentic-db CLI

**pgvector embedding fields:** `embedding`
High-dimensional vector columns for semantic similarity search. Query via the Unified Search API pgvector adapter using cosine, L2, or inner-product distance. Supports chunk-aware search: set `includeChunks: true` in VectorNearbyInput to transparently query across parent and chunk embeddings, returning the minimum distance.

**Unified Search API fields:** `searchTsv`, `embeddingTextBm25Score`, `nameTrgmSimilarity`, `eventTypeTrgmSimilarity`, `locationTrgmSimilarity`, `cityTrgmSimilarity`, `notesTextTrgmSimilarity`, `embeddingTextTrgmSimilarity`, `searchScore`
Fields provided by the Unified Search plugin. Includes full-text search (tsvector/BM25), trigram similarity scores, and the combined searchScore. Computed fields are read-only and cannot be set in create/update operations.

## Usage

```bash
agentic-db event list
agentic-db event list --where.<field>.<op> <value> --orderBy <values>
agentic-db event list --limit 10 --after <cursor>
agentic-db event find-first --where.<field>.<op> <value>
agentic-db event search <query>
agentic-db event get --id <UUID>
agentic-db event create --entityId <UUID> --name <String> [--eventType <String>] [--location <String>] [--city <String>] [--startedAt <Datetime>] [--endedAt <Datetime>] [--notesText <String>] [--tags <String>] [--mainImageId <UUID>] [--embeddingText <String>] [--embedding <Vector>] [--embeddingStale <Boolean>] [--locationGeo <GeographyInterface>]
agentic-db event update --id <UUID> [--entityId <UUID>] [--name <String>] [--eventType <String>] [--location <String>] [--city <String>] [--startedAt <Datetime>] [--endedAt <Datetime>] [--notesText <String>] [--tags <String>] [--mainImageId <UUID>] [--embeddingText <String>] [--embedding <Vector>] [--embeddingStale <Boolean>] [--locationGeo <GeographyInterface>]
agentic-db event delete --id <UUID>
```

## Examples

### List event records

```bash
agentic-db event list
```

### List event records with pagination

```bash
agentic-db event list --limit 10 --offset 0
```

### List event records with cursor pagination

```bash
agentic-db event list --limit 10 --after <cursor>
```

### Find first matching event

```bash
agentic-db event find-first --where.id.equalTo <value>
```

### List event records with field selection

```bash
agentic-db event list --select id,id
```

### List event records with filtering and ordering

```bash
agentic-db event list --where.id.equalTo <value> --orderBy ID_ASC
```

### Vector similarity search via `embedding` (manual vector)

```bash
# Pass a pre-computed vector array via dot-notation
agentic-db event list --where.embedding.vector '[0.1,0.2,0.3]' --where.embedding.distance 1.0 --select title,embeddingVectorDistance
```

### Vector semantic search via `embedding` with --auto-embed

```bash
# --auto-embed converts text to vectors using the configured embedder (e.g. Ollama nomic-embed-text)
EMBEDDER_PROVIDER=ollama agentic-db event search "semantic query" --auto-embed --select title,embeddingVectorDistance
EMBEDDER_PROVIDER=ollama agentic-db event list --where.embedding.vector "semantic query" --auto-embed --select title,embeddingVectorDistance
```

### Create/update with auto-embedded `embedding` via --auto-embed

```bash
# --auto-embed on create/update converts text strings in vector fields to embeddings before saving
EMBEDDER_PROVIDER=ollama agentic-db event create --embedding "text to embed" --auto-embed
EMBEDDER_PROVIDER=ollama agentic-db event update --embedding "new text to embed" --auto-embed
```

### Full-text search via tsvector (`searchTsv`)

```bash
agentic-db event list --where.searchTsv "search query" --select title,tsvRank
```

### BM25 keyword search via `bm25EmbeddingText`

```bash
agentic-db event list --where.bm25EmbeddingText.query "search query" --select title,embeddingTextBm25Score
```

### Fuzzy search via trigram similarity (`trgmName`)

```bash
agentic-db event list --where.trgmName.value "approximate query" --where.trgmName.threshold 0.3 --select title,nameTrgmSimilarity
```

### Fuzzy search via trigram similarity (`trgmEventType`)

```bash
agentic-db event list --where.trgmEventType.value "approximate query" --where.trgmEventType.threshold 0.3 --select title,eventTypeTrgmSimilarity
```

### Fuzzy search via trigram similarity (`trgmLocation`)

```bash
agentic-db event list --where.trgmLocation.value "approximate query" --where.trgmLocation.threshold 0.3 --select title,locationTrgmSimilarity
```

### Fuzzy search via trigram similarity (`trgmCity`)

```bash
agentic-db event list --where.trgmCity.value "approximate query" --where.trgmCity.threshold 0.3 --select title,cityTrgmSimilarity
```

### Fuzzy search via trigram similarity (`trgmNotesText`)

```bash
agentic-db event list --where.trgmNotesText.value "approximate query" --where.trgmNotesText.threshold 0.3 --select title,notesTextTrgmSimilarity
```

### Fuzzy search via trigram similarity (`trgmEmbeddingText`)

```bash
agentic-db event list --where.trgmEmbeddingText.value "approximate query" --where.trgmEmbeddingText.threshold 0.3 --select title,embeddingTextTrgmSimilarity
```

### Composite search (fullTextSearch dispatches to all text adapters)

```bash
agentic-db event list --where.fullTextSearch "search query" --select title,tsvRank,embeddingTextBm25Score,nameTrgmSimilarity,eventTypeTrgmSimilarity,locationTrgmSimilarity,cityTrgmSimilarity,notesTextTrgmSimilarity,embeddingTextTrgmSimilarity,searchScore
```

### Search with pagination and field projection

```bash
agentic-db event list --where.fullTextSearch "query" --limit 10 --select id,title,searchScore
agentic-db event search "query" --limit 10 --select id,title,searchScore
```

### Create a event

```bash
agentic-db event create --entityId <UUID> --name <String> [--eventType <String>] [--location <String>] [--city <String>] [--startedAt <Datetime>] [--endedAt <Datetime>] [--notesText <String>] [--tags <String>] [--mainImageId <UUID>] [--embeddingText <String>] [--embedding <Vector>] [--embeddingStale <Boolean>] [--locationGeo <GeographyInterface>]
```

### Get a event by id

```bash
agentic-db event get --id <value>
```
