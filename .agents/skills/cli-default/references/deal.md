# deal

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for Deal records via agentic-db CLI

**pgvector embedding fields:** `embedding`
High-dimensional vector columns for semantic similarity search. Query via the Unified Search API pgvector adapter using cosine, L2, or inner-product distance. Supports chunk-aware search: set `includeChunks: true` in VectorNearbyInput to transparently query across parent and chunk embeddings, returning the minimum distance.

**Unified Search API fields:** `embeddingTextBm25Score`, `nameTrgmSimilarity`, `stageTrgmSimilarity`, `currencyTrgmSimilarity`, `notesTextTrgmSimilarity`, `embeddingTextTrgmSimilarity`, `searchScore`
Fields provided by the Unified Search plugin. Includes full-text search (tsvector/BM25), trigram similarity scores, and the combined searchScore. Computed fields are read-only and cannot be set in create/update operations.

## Usage

```bash
agentic-db deal list
agentic-db deal list --where.<field>.<op> <value> --orderBy <values>
agentic-db deal list --limit 10 --after <cursor>
agentic-db deal find-first --where.<field>.<op> <value>
agentic-db deal search <query>
agentic-db deal get --id <UUID>
agentic-db deal create --name <String> [--stage <String>] [--value <BigFloat>] [--currency <String>] [--expectedCloseDate <Datetime>] [--notesText <String>] [--tags <String>] [--embeddingText <String>] [--embedding <Vector>] [--embeddingUpdatedAt <Datetime>]
agentic-db deal update --id <UUID> [--name <String>] [--stage <String>] [--value <BigFloat>] [--currency <String>] [--expectedCloseDate <Datetime>] [--notesText <String>] [--tags <String>] [--embeddingText <String>] [--embedding <Vector>] [--embeddingUpdatedAt <Datetime>]
agentic-db deal delete --id <UUID>
```

## Examples

### List deal records

```bash
agentic-db deal list
```

### List deal records with pagination

```bash
agentic-db deal list --limit 10 --offset 0
```

### List deal records with cursor pagination

```bash
agentic-db deal list --limit 10 --after <cursor>
```

### Find first matching deal

```bash
agentic-db deal find-first --where.id.equalTo <value>
```

### List deal records with field selection

```bash
agentic-db deal list --select id,id
```

### List deal records with filtering and ordering

```bash
agentic-db deal list --where.id.equalTo <value> --orderBy ID_ASC
```

### Vector similarity search via `embedding` (manual vector)

```bash
# Pass a pre-computed vector array via dot-notation
agentic-db deal list --where.embedding.vector '[0.1,0.2,0.3]' --where.embedding.distance 1.0 --select title,embeddingVectorDistance
```

### Vector semantic search via `embedding` with --auto-embed

```bash
# --auto-embed converts text to vectors using the configured embedder (e.g. Ollama nomic-embed-text)
EMBEDDER_PROVIDER=ollama agentic-db deal search "semantic query" --auto-embed --select title,embeddingVectorDistance
EMBEDDER_PROVIDER=ollama agentic-db deal list --where.embedding.vector "semantic query" --auto-embed --select title,embeddingVectorDistance
```

### Create/update with auto-embedded `embedding` via --auto-embed

```bash
# --auto-embed on create/update converts text strings in vector fields to embeddings before saving
EMBEDDER_PROVIDER=ollama agentic-db deal create --embedding "text to embed" --auto-embed
EMBEDDER_PROVIDER=ollama agentic-db deal update --embedding "new text to embed" --auto-embed
```

### BM25 keyword search via `bm25EmbeddingText`

```bash
agentic-db deal list --where.bm25EmbeddingText.query "search query" --select title,embeddingTextBm25Score
```

### Fuzzy search via trigram similarity (`trgmName`)

```bash
agentic-db deal list --where.trgmName.value "approximate query" --where.trgmName.threshold 0.3 --select title,nameTrgmSimilarity
```

### Fuzzy search via trigram similarity (`trgmStage`)

```bash
agentic-db deal list --where.trgmStage.value "approximate query" --where.trgmStage.threshold 0.3 --select title,stageTrgmSimilarity
```

### Fuzzy search via trigram similarity (`trgmCurrency`)

```bash
agentic-db deal list --where.trgmCurrency.value "approximate query" --where.trgmCurrency.threshold 0.3 --select title,currencyTrgmSimilarity
```

### Fuzzy search via trigram similarity (`trgmNotesText`)

```bash
agentic-db deal list --where.trgmNotesText.value "approximate query" --where.trgmNotesText.threshold 0.3 --select title,notesTextTrgmSimilarity
```

### Fuzzy search via trigram similarity (`trgmEmbeddingText`)

```bash
agentic-db deal list --where.trgmEmbeddingText.value "approximate query" --where.trgmEmbeddingText.threshold 0.3 --select title,embeddingTextTrgmSimilarity
```

### Composite search (unifiedSearch dispatches to all text adapters)

```bash
agentic-db deal list --where.unifiedSearch "search query" --select title,embeddingTextBm25Score,nameTrgmSimilarity,stageTrgmSimilarity,currencyTrgmSimilarity,notesTextTrgmSimilarity,embeddingTextTrgmSimilarity,searchScore
```

### Search with pagination and field projection

```bash
agentic-db deal list --where.unifiedSearch "query" --limit 10 --select id,title,searchScore
agentic-db deal search "query" --limit 10 --select id,title,searchScore
```

### Create a deal

```bash
agentic-db deal create --name <String> [--stage <String>] [--value <BigFloat>] [--currency <String>] [--expectedCloseDate <Datetime>] [--notesText <String>] [--tags <String>] [--embeddingText <String>] [--embedding <Vector>] [--embeddingUpdatedAt <Datetime>]
```

### Get a deal by id

```bash
agentic-db deal get --id <value>
```
