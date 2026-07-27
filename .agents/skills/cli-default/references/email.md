# email

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for Email records via agentic-db CLI

**pgvector embedding fields:** `embedding`
High-dimensional vector columns for semantic similarity search. Query via the Unified Search API pgvector adapter using cosine, L2, or inner-product distance. Supports chunk-aware search: set `includeChunks: true` in VectorNearbyInput to transparently query across parent and chunk embeddings, returning the minimum distance.

**Unified Search API fields:** `searchTsv`, `embeddingTextBm25Score`, `providerMessageIdTrgmSimilarity`, `subjectTrgmSimilarity`, `bodyTextTrgmSimilarity`, `bodyHtmlTrgmSimilarity`, `embeddingTextTrgmSimilarity`, `searchScore`
Fields provided by the Unified Search plugin. Includes full-text search (tsvector/BM25), trigram similarity scores, and the combined searchScore. Computed fields are read-only and cannot be set in create/update operations.

## Usage

```bash
agentic-db email list
agentic-db email list --where.<field>.<op> <value> --orderBy <values>
agentic-db email list --limit 10 --after <cursor>
agentic-db email find-first --where.<field>.<op> <value>
agentic-db email search <query>
agentic-db email get --id <UUID>
agentic-db email create --emailThreadId <UUID> [--providerMessageId <String>] [--fromContactId <UUID>] [--to <JSON>] [--cc <JSON>] [--bcc <JSON>] [--subject <String>] [--bodyText <String>] [--bodyHtml <String>] [--sentAt <Datetime>] [--tags <String>] [--embeddingText <String>] [--embedding <Vector>] [--embeddingUpdatedAt <Datetime>]
agentic-db email update --id <UUID> [--providerMessageId <String>] [--fromContactId <UUID>] [--to <JSON>] [--cc <JSON>] [--bcc <JSON>] [--subject <String>] [--bodyText <String>] [--bodyHtml <String>] [--sentAt <Datetime>] [--tags <String>] [--embeddingText <String>] [--embedding <Vector>] [--embeddingUpdatedAt <Datetime>] [--emailThreadId <UUID>]
agentic-db email delete --id <UUID>
```

## Examples

### List email records

```bash
agentic-db email list
```

### List email records with pagination

```bash
agentic-db email list --limit 10 --offset 0
```

### List email records with cursor pagination

```bash
agentic-db email list --limit 10 --after <cursor>
```

### Find first matching email

```bash
agentic-db email find-first --where.id.equalTo <value>
```

### List email records with field selection

```bash
agentic-db email list --select id,id
```

### List email records with filtering and ordering

```bash
agentic-db email list --where.id.equalTo <value> --orderBy ID_ASC
```

### Vector similarity search via `embedding` (manual vector)

```bash
# Pass a pre-computed vector array via dot-notation
agentic-db email list --where.embedding.vector '[0.1,0.2,0.3]' --where.embedding.distance 1.0 --select title,embeddingVectorDistance
```

### Vector semantic search via `embedding` with --auto-embed

```bash
# --auto-embed converts text to vectors using the configured embedder (e.g. Ollama nomic-embed-text)
EMBEDDER_PROVIDER=ollama agentic-db email search "semantic query" --auto-embed --select title,embeddingVectorDistance
EMBEDDER_PROVIDER=ollama agentic-db email list --where.embedding.vector "semantic query" --auto-embed --select title,embeddingVectorDistance
```

### Create/update with auto-embedded `embedding` via --auto-embed

```bash
# --auto-embed on create/update converts text strings in vector fields to embeddings before saving
EMBEDDER_PROVIDER=ollama agentic-db email create --embedding "text to embed" --auto-embed
EMBEDDER_PROVIDER=ollama agentic-db email update --embedding "new text to embed" --auto-embed
```

### Full-text search via tsvector (`searchTsv`)

```bash
agentic-db email list --where.searchTsv "search query" --select title,tsvRank
```

### BM25 keyword search via `bm25EmbeddingText`

```bash
agentic-db email list --where.bm25EmbeddingText.query "search query" --select title,embeddingTextBm25Score
```

### Fuzzy search via trigram similarity (`trgmProviderMessageId`)

```bash
agentic-db email list --where.trgmProviderMessageId.value "approximate query" --where.trgmProviderMessageId.threshold 0.3 --select title,providerMessageIdTrgmSimilarity
```

### Fuzzy search via trigram similarity (`trgmSubject`)

```bash
agentic-db email list --where.trgmSubject.value "approximate query" --where.trgmSubject.threshold 0.3 --select title,subjectTrgmSimilarity
```

### Fuzzy search via trigram similarity (`trgmBodyText`)

```bash
agentic-db email list --where.trgmBodyText.value "approximate query" --where.trgmBodyText.threshold 0.3 --select title,bodyTextTrgmSimilarity
```

### Fuzzy search via trigram similarity (`trgmBodyHtml`)

```bash
agentic-db email list --where.trgmBodyHtml.value "approximate query" --where.trgmBodyHtml.threshold 0.3 --select title,bodyHtmlTrgmSimilarity
```

### Fuzzy search via trigram similarity (`trgmEmbeddingText`)

```bash
agentic-db email list --where.trgmEmbeddingText.value "approximate query" --where.trgmEmbeddingText.threshold 0.3 --select title,embeddingTextTrgmSimilarity
```

### Composite search (unifiedSearch dispatches to all text adapters)

```bash
agentic-db email list --where.unifiedSearch "search query" --select title,tsvRank,embeddingTextBm25Score,providerMessageIdTrgmSimilarity,subjectTrgmSimilarity,bodyTextTrgmSimilarity,bodyHtmlTrgmSimilarity,embeddingTextTrgmSimilarity,searchScore
```

### Search with pagination and field projection

```bash
agentic-db email list --where.unifiedSearch "query" --limit 10 --select id,title,searchScore
agentic-db email search "query" --limit 10 --select id,title,searchScore
```

### Create a email

```bash
agentic-db email create --emailThreadId <UUID> [--providerMessageId <String>] [--fromContactId <UUID>] [--to <JSON>] [--cc <JSON>] [--bcc <JSON>] [--subject <String>] [--bodyText <String>] [--bodyHtml <String>] [--sentAt <Datetime>] [--tags <String>] [--embeddingText <String>] [--embedding <Vector>] [--embeddingUpdatedAt <Datetime>]
```

### Get a email by id

```bash
agentic-db email get --id <value>
```
