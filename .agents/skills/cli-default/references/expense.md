# expense

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for Expense records via agentic-db CLI

**pgvector embedding fields:** `embedding`
High-dimensional vector columns for semantic similarity search. Query via the Unified Search API pgvector adapter using cosine, L2, or inner-product distance. Supports chunk-aware search: set `includeChunks: true` in VectorNearbyInput to transparently query across parent and chunk embeddings, returning the minimum distance.

**Unified Search API fields:** `embeddingTextBm25Score`, `descriptionTrgmSimilarity`, `currencyTrgmSimilarity`, `categoryTrgmSimilarity`, `vendorTrgmSimilarity`, `notesTrgmSimilarity`, `embeddingTextTrgmSimilarity`, `searchScore`
Fields provided by the Unified Search plugin. Includes full-text search (tsvector/BM25), trigram similarity scores, and the combined searchScore. Computed fields are read-only and cannot be set in create/update operations.

## Usage

```bash
agentic-db expense list
agentic-db expense list --where.<field>.<op> <value> --orderBy <values>
agentic-db expense list --limit 10 --after <cursor>
agentic-db expense find-first --where.<field>.<op> <value>
agentic-db expense search <query>
agentic-db expense get --id <UUID>
agentic-db expense create --entityId <UUID> [--description <String>] [--amount <BigFloat>] [--currency <String>] [--category <String>] [--occurredAt <Datetime>] [--vendor <String>] [--notes <String>] [--tags <String>] [--embeddingText <String>] [--embedding <Vector>] [--embeddingStale <Boolean>] [--tripId <UUID>]
agentic-db expense update --id <UUID> [--entityId <UUID>] [--description <String>] [--amount <BigFloat>] [--currency <String>] [--category <String>] [--occurredAt <Datetime>] [--vendor <String>] [--notes <String>] [--tags <String>] [--embeddingText <String>] [--embedding <Vector>] [--embeddingStale <Boolean>] [--tripId <UUID>]
agentic-db expense delete --id <UUID>
```

## Examples

### List expense records

```bash
agentic-db expense list
```

### List expense records with pagination

```bash
agentic-db expense list --limit 10 --offset 0
```

### List expense records with cursor pagination

```bash
agentic-db expense list --limit 10 --after <cursor>
```

### Find first matching expense

```bash
agentic-db expense find-first --where.id.equalTo <value>
```

### List expense records with field selection

```bash
agentic-db expense list --select id,id
```

### List expense records with filtering and ordering

```bash
agentic-db expense list --where.id.equalTo <value> --orderBy ID_ASC
```

### Vector similarity search via `embedding` (manual vector)

```bash
# Pass a pre-computed vector array via dot-notation
agentic-db expense list --where.embedding.vector '[0.1,0.2,0.3]' --where.embedding.distance 1.0 --select title,embeddingVectorDistance
```

### Vector semantic search via `embedding` with --auto-embed

```bash
# --auto-embed converts text to vectors using the configured embedder (e.g. Ollama nomic-embed-text)
EMBEDDER_PROVIDER=ollama agentic-db expense search "semantic query" --auto-embed --select title,embeddingVectorDistance
EMBEDDER_PROVIDER=ollama agentic-db expense list --where.embedding.vector "semantic query" --auto-embed --select title,embeddingVectorDistance
```

### Create/update with auto-embedded `embedding` via --auto-embed

```bash
# --auto-embed on create/update converts text strings in vector fields to embeddings before saving
EMBEDDER_PROVIDER=ollama agentic-db expense create --embedding "text to embed" --auto-embed
EMBEDDER_PROVIDER=ollama agentic-db expense update --embedding "new text to embed" --auto-embed
```

### BM25 keyword search via `bm25EmbeddingText`

```bash
agentic-db expense list --where.bm25EmbeddingText.query "search query" --select title,embeddingTextBm25Score
```

### Fuzzy search via trigram similarity (`trgmDescription`)

```bash
agentic-db expense list --where.trgmDescription.value "approximate query" --where.trgmDescription.threshold 0.3 --select title,descriptionTrgmSimilarity
```

### Fuzzy search via trigram similarity (`trgmCurrency`)

```bash
agentic-db expense list --where.trgmCurrency.value "approximate query" --where.trgmCurrency.threshold 0.3 --select title,currencyTrgmSimilarity
```

### Fuzzy search via trigram similarity (`trgmCategory`)

```bash
agentic-db expense list --where.trgmCategory.value "approximate query" --where.trgmCategory.threshold 0.3 --select title,categoryTrgmSimilarity
```

### Fuzzy search via trigram similarity (`trgmVendor`)

```bash
agentic-db expense list --where.trgmVendor.value "approximate query" --where.trgmVendor.threshold 0.3 --select title,vendorTrgmSimilarity
```

### Fuzzy search via trigram similarity (`trgmNotes`)

```bash
agentic-db expense list --where.trgmNotes.value "approximate query" --where.trgmNotes.threshold 0.3 --select title,notesTrgmSimilarity
```

### Fuzzy search via trigram similarity (`trgmEmbeddingText`)

```bash
agentic-db expense list --where.trgmEmbeddingText.value "approximate query" --where.trgmEmbeddingText.threshold 0.3 --select title,embeddingTextTrgmSimilarity
```

### Composite search (fullTextSearch dispatches to all text adapters)

```bash
agentic-db expense list --where.fullTextSearch "search query" --select title,embeddingTextBm25Score,descriptionTrgmSimilarity,currencyTrgmSimilarity,categoryTrgmSimilarity,vendorTrgmSimilarity,notesTrgmSimilarity,embeddingTextTrgmSimilarity,searchScore
```

### Search with pagination and field projection

```bash
agentic-db expense list --where.fullTextSearch "query" --limit 10 --select id,title,searchScore
agentic-db expense search "query" --limit 10 --select id,title,searchScore
```

### Create a expense

```bash
agentic-db expense create --entityId <UUID> [--description <String>] [--amount <BigFloat>] [--currency <String>] [--category <String>] [--occurredAt <Datetime>] [--vendor <String>] [--notes <String>] [--tags <String>] [--embeddingText <String>] [--embedding <Vector>] [--embeddingStale <Boolean>] [--tripId <UUID>]
```

### Get a expense by id

```bash
agentic-db expense get --id <value>
```
