# emailThread

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for EmailThread records via agentic-db CLI

**pgvector embedding fields:** `embedding`
High-dimensional vector columns for semantic similarity search. Query via the Unified Search API pgvector adapter using cosine, L2, or inner-product distance. Supports chunk-aware search: set `includeChunks: true` in VectorNearbyInput to transparently query across parent and chunk embeddings, returning the minimum distance.

**Unified Search API fields:** `searchTsv`, `embeddingTextBm25Score`, `providerThreadIdTrgmSimilarity`, `subjectTrgmSimilarity`, `summaryTrgmSimilarity`, `statusTrgmSimilarity`, `embeddingTextTrgmSimilarity`, `searchScore`
Fields provided by the Unified Search plugin. Includes full-text search (tsvector/BM25), trigram similarity scores, and the combined searchScore. Computed fields are read-only and cannot be set in create/update operations.

## Usage

```bash
agentic-db email-thread list
agentic-db email-thread list --where.<field>.<op> <value> --orderBy <values>
agentic-db email-thread list --limit 10 --after <cursor>
agentic-db email-thread find-first --where.<field>.<op> <value>
agentic-db email-thread search <query>
agentic-db email-thread get --id <UUID>
agentic-db email-thread create [--providerThreadId <String>] [--subject <String>] [--lastMessageAt <Datetime>] [--summary <String>] [--status <String>] [--tags <String>] [--embeddingText <String>] [--embedding <Vector>] [--embeddingStale <Boolean>]
agentic-db email-thread update --id <UUID> [--providerThreadId <String>] [--subject <String>] [--lastMessageAt <Datetime>] [--summary <String>] [--status <String>] [--tags <String>] [--embeddingText <String>] [--embedding <Vector>] [--embeddingStale <Boolean>]
agentic-db email-thread delete --id <UUID>
```

## Examples

### List emailThread records

```bash
agentic-db email-thread list
```

### List emailThread records with pagination

```bash
agentic-db email-thread list --limit 10 --offset 0
```

### List emailThread records with cursor pagination

```bash
agentic-db email-thread list --limit 10 --after <cursor>
```

### Find first matching emailThread

```bash
agentic-db email-thread find-first --where.id.equalTo <value>
```

### List emailThread records with field selection

```bash
agentic-db email-thread list --select id,id
```

### List emailThread records with filtering and ordering

```bash
agentic-db email-thread list --where.id.equalTo <value> --orderBy ID_ASC
```

### Vector similarity search via `embedding` (manual vector)

```bash
# Pass a pre-computed vector array via dot-notation
agentic-db email-thread list --where.embedding.vector '[0.1,0.2,0.3]' --where.embedding.distance 1.0 --select title,embeddingVectorDistance
```

### Vector semantic search via `embedding` with --auto-embed

```bash
# --auto-embed converts text to vectors using the configured embedder (e.g. Ollama nomic-embed-text)
EMBEDDER_PROVIDER=ollama agentic-db email-thread search "semantic query" --auto-embed --select title,embeddingVectorDistance
EMBEDDER_PROVIDER=ollama agentic-db email-thread list --where.embedding.vector "semantic query" --auto-embed --select title,embeddingVectorDistance
```

### Create/update with auto-embedded `embedding` via --auto-embed

```bash
# --auto-embed on create/update converts text strings in vector fields to embeddings before saving
EMBEDDER_PROVIDER=ollama agentic-db email-thread create --embedding "text to embed" --auto-embed
EMBEDDER_PROVIDER=ollama agentic-db email-thread update --embedding "new text to embed" --auto-embed
```

### Full-text search via tsvector (`searchTsv`)

```bash
agentic-db email-thread list --where.searchTsv "search query" --select title,tsvRank
```

### BM25 keyword search via `bm25EmbeddingText`

```bash
agentic-db email-thread list --where.bm25EmbeddingText.query "search query" --select title,embeddingTextBm25Score
```

### Fuzzy search via trigram similarity (`trgmProviderThreadId`)

```bash
agentic-db email-thread list --where.trgmProviderThreadId.value "approximate query" --where.trgmProviderThreadId.threshold 0.3 --select title,providerThreadIdTrgmSimilarity
```

### Fuzzy search via trigram similarity (`trgmSubject`)

```bash
agentic-db email-thread list --where.trgmSubject.value "approximate query" --where.trgmSubject.threshold 0.3 --select title,subjectTrgmSimilarity
```

### Fuzzy search via trigram similarity (`trgmSummary`)

```bash
agentic-db email-thread list --where.trgmSummary.value "approximate query" --where.trgmSummary.threshold 0.3 --select title,summaryTrgmSimilarity
```

### Fuzzy search via trigram similarity (`trgmStatus`)

```bash
agentic-db email-thread list --where.trgmStatus.value "approximate query" --where.trgmStatus.threshold 0.3 --select title,statusTrgmSimilarity
```

### Fuzzy search via trigram similarity (`trgmEmbeddingText`)

```bash
agentic-db email-thread list --where.trgmEmbeddingText.value "approximate query" --where.trgmEmbeddingText.threshold 0.3 --select title,embeddingTextTrgmSimilarity
```

### Composite search (fullTextSearch dispatches to all text adapters)

```bash
agentic-db email-thread list --where.fullTextSearch "search query" --select title,tsvRank,embeddingTextBm25Score,providerThreadIdTrgmSimilarity,subjectTrgmSimilarity,summaryTrgmSimilarity,statusTrgmSimilarity,embeddingTextTrgmSimilarity,searchScore
```

### Search with pagination and field projection

```bash
agentic-db email-thread list --where.fullTextSearch "query" --limit 10 --select id,title,searchScore
agentic-db email-thread search "query" --limit 10 --select id,title,searchScore
```

### Create a emailThread

```bash
agentic-db email-thread create [--providerThreadId <String>] [--subject <String>] [--lastMessageAt <Datetime>] [--summary <String>] [--status <String>] [--tags <String>] [--embeddingText <String>] [--embedding <Vector>] [--embeddingStale <Boolean>]
```

### Get a emailThread by id

```bash
agentic-db email-thread get --id <value>
```
