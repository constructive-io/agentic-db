# place

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for Place records via agentic-db CLI

**pgvector embedding fields:** `embedding`
High-dimensional vector columns for semantic similarity search. Query via the Unified Search API pgvector adapter using cosine, L2, or inner-product distance. Supports chunk-aware search: set `includeChunks: true` in VectorNearbyInput to transparently query across parent and chunk embeddings, returning the minimum distance.

**Unified Search API fields:** `embeddingTextBm25Score`, `nameTrgmSimilarity`, `addressTrgmSimilarity`, `descriptionTrgmSimilarity`, `categoryTrgmSimilarity`, `embeddingTextTrgmSimilarity`, `searchScore`
Fields provided by the Unified Search plugin. Includes full-text search (tsvector/BM25), trigram similarity scores, and the combined searchScore. Computed fields are read-only and cannot be set in create/update operations.

## Usage

```bash
agentic-db place list
agentic-db place list --where.<field>.<op> <value> --orderBy <values>
agentic-db place list --limit 10 --after <cursor>
agentic-db place find-first --where.<field>.<op> <value>
agentic-db place search <query>
agentic-db place get --id <UUID>
agentic-db place create --entityId <UUID> --name <String> [--address <String>] [--description <String>] [--category <String>] [--rating <BigFloat>] [--tags <String>] [--embeddingText <String>] [--embedding <Vector>] [--embeddingStale <Boolean>] [--locationGeo <GeographyInterface>]
agentic-db place update --id <UUID> [--entityId <UUID>] [--name <String>] [--address <String>] [--description <String>] [--category <String>] [--rating <BigFloat>] [--tags <String>] [--embeddingText <String>] [--embedding <Vector>] [--embeddingStale <Boolean>] [--locationGeo <GeographyInterface>]
agentic-db place delete --id <UUID>
```

## Examples

### List place records

```bash
agentic-db place list
```

### List place records with pagination

```bash
agentic-db place list --limit 10 --offset 0
```

### List place records with cursor pagination

```bash
agentic-db place list --limit 10 --after <cursor>
```

### Find first matching place

```bash
agentic-db place find-first --where.id.equalTo <value>
```

### List place records with field selection

```bash
agentic-db place list --select id,id
```

### List place records with filtering and ordering

```bash
agentic-db place list --where.id.equalTo <value> --orderBy ID_ASC
```

### Vector similarity search via `embedding` (manual vector)

```bash
# Pass a pre-computed vector array via dot-notation
agentic-db place list --where.embedding.vector '[0.1,0.2,0.3]' --where.embedding.distance 1.0 --select title,embeddingVectorDistance
```

### Vector semantic search via `embedding` with --auto-embed

```bash
# --auto-embed converts text to vectors using the configured embedder (e.g. Ollama nomic-embed-text)
EMBEDDER_PROVIDER=ollama agentic-db place search "semantic query" --auto-embed --select title,embeddingVectorDistance
EMBEDDER_PROVIDER=ollama agentic-db place list --where.embedding.vector "semantic query" --auto-embed --select title,embeddingVectorDistance
```

### Create/update with auto-embedded `embedding` via --auto-embed

```bash
# --auto-embed on create/update converts text strings in vector fields to embeddings before saving
EMBEDDER_PROVIDER=ollama agentic-db place create --embedding "text to embed" --auto-embed
EMBEDDER_PROVIDER=ollama agentic-db place update --embedding "new text to embed" --auto-embed
```

### BM25 keyword search via `bm25EmbeddingText`

```bash
agentic-db place list --where.bm25EmbeddingText.query "search query" --select title,embeddingTextBm25Score
```

### Fuzzy search via trigram similarity (`trgmName`)

```bash
agentic-db place list --where.trgmName.value "approximate query" --where.trgmName.threshold 0.3 --select title,nameTrgmSimilarity
```

### Fuzzy search via trigram similarity (`trgmAddress`)

```bash
agentic-db place list --where.trgmAddress.value "approximate query" --where.trgmAddress.threshold 0.3 --select title,addressTrgmSimilarity
```

### Fuzzy search via trigram similarity (`trgmDescription`)

```bash
agentic-db place list --where.trgmDescription.value "approximate query" --where.trgmDescription.threshold 0.3 --select title,descriptionTrgmSimilarity
```

### Fuzzy search via trigram similarity (`trgmCategory`)

```bash
agentic-db place list --where.trgmCategory.value "approximate query" --where.trgmCategory.threshold 0.3 --select title,categoryTrgmSimilarity
```

### Fuzzy search via trigram similarity (`trgmEmbeddingText`)

```bash
agentic-db place list --where.trgmEmbeddingText.value "approximate query" --where.trgmEmbeddingText.threshold 0.3 --select title,embeddingTextTrgmSimilarity
```

### Composite search (fullTextSearch dispatches to all text adapters)

```bash
agentic-db place list --where.fullTextSearch "search query" --select title,embeddingTextBm25Score,nameTrgmSimilarity,addressTrgmSimilarity,descriptionTrgmSimilarity,categoryTrgmSimilarity,embeddingTextTrgmSimilarity,searchScore
```

### Search with pagination and field projection

```bash
agentic-db place list --where.fullTextSearch "query" --limit 10 --select id,title,searchScore
agentic-db place search "query" --limit 10 --select id,title,searchScore
```

### Create a place

```bash
agentic-db place create --entityId <UUID> --name <String> [--address <String>] [--description <String>] [--category <String>] [--rating <BigFloat>] [--tags <String>] [--embeddingText <String>] [--embedding <Vector>] [--embeddingStale <Boolean>] [--locationGeo <GeographyInterface>]
```

### Get a place by id

```bash
agentic-db place get --id <value>
```
