# conversation

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for Conversation records via agentic-db CLI

**pgvector embedding fields:** `embedding`
High-dimensional vector columns for semantic similarity search. Query via the Unified Search API pgvector adapter using cosine, L2, or inner-product distance. Supports chunk-aware search: set `includeChunks: true` in VectorNearbyInput to transparently query across parent and chunk embeddings, returning the minimum distance.

**Unified Search API fields:** `embeddingTextBm25Score`, `titleTrgmSimilarity`, `statusTrgmSimilarity`, `embeddingTextTrgmSimilarity`, `searchScore`
Fields provided by the Unified Search plugin. Includes full-text search (tsvector/BM25), trigram similarity scores, and the combined searchScore. Computed fields are read-only and cannot be set in create/update operations.

## Usage

```bash
agentic-db conversation list
agentic-db conversation list --where.<field>.<op> <value> --orderBy <values>
agentic-db conversation list --limit 10 --after <cursor>
agentic-db conversation find-first --where.<field>.<op> <value>
agentic-db conversation search <query>
agentic-db conversation get --id <UUID>
agentic-db conversation create --title <String> [--agentId <UUID>] [--status <String>] [--meta <JSON>] [--embeddingText <String>] [--embedding <Vector>] [--embeddingStale <Boolean>]
agentic-db conversation update --id <UUID> [--title <String>] [--agentId <UUID>] [--status <String>] [--meta <JSON>] [--embeddingText <String>] [--embedding <Vector>] [--embeddingStale <Boolean>]
agentic-db conversation delete --id <UUID>
```

## Examples

### List conversation records

```bash
agentic-db conversation list
```

### List conversation records with pagination

```bash
agentic-db conversation list --limit 10 --offset 0
```

### List conversation records with cursor pagination

```bash
agentic-db conversation list --limit 10 --after <cursor>
```

### Find first matching conversation

```bash
agentic-db conversation find-first --where.id.equalTo <value>
```

### List conversation records with field selection

```bash
agentic-db conversation list --select id,id
```

### List conversation records with filtering and ordering

```bash
agentic-db conversation list --where.id.equalTo <value> --orderBy ID_ASC
```

### Vector similarity search via `embedding` (manual vector)

```bash
# Pass a pre-computed vector array via dot-notation
agentic-db conversation list --where.embedding.vector '[0.1,0.2,0.3]' --where.embedding.distance 1.0 --select title,embeddingVectorDistance
```

### Vector semantic search via `embedding` with --auto-embed

```bash
# --auto-embed converts text to vectors using the configured embedder (e.g. Ollama nomic-embed-text)
EMBEDDER_PROVIDER=ollama agentic-db conversation search "semantic query" --auto-embed --select title,embeddingVectorDistance
EMBEDDER_PROVIDER=ollama agentic-db conversation list --where.embedding.vector "semantic query" --auto-embed --select title,embeddingVectorDistance
```

### Create/update with auto-embedded `embedding` via --auto-embed

```bash
# --auto-embed on create/update converts text strings in vector fields to embeddings before saving
EMBEDDER_PROVIDER=ollama agentic-db conversation create --embedding "text to embed" --auto-embed
EMBEDDER_PROVIDER=ollama agentic-db conversation update --embedding "new text to embed" --auto-embed
```

### BM25 keyword search via `bm25EmbeddingText`

```bash
agentic-db conversation list --where.bm25EmbeddingText.query "search query" --select title,embeddingTextBm25Score
```

### Fuzzy search via trigram similarity (`trgmTitle`)

```bash
agentic-db conversation list --where.trgmTitle.value "approximate query" --where.trgmTitle.threshold 0.3 --select title,titleTrgmSimilarity
```

### Fuzzy search via trigram similarity (`trgmStatus`)

```bash
agentic-db conversation list --where.trgmStatus.value "approximate query" --where.trgmStatus.threshold 0.3 --select title,statusTrgmSimilarity
```

### Fuzzy search via trigram similarity (`trgmEmbeddingText`)

```bash
agentic-db conversation list --where.trgmEmbeddingText.value "approximate query" --where.trgmEmbeddingText.threshold 0.3 --select title,embeddingTextTrgmSimilarity
```

### Composite search (fullTextSearch dispatches to all text adapters)

```bash
agentic-db conversation list --where.fullTextSearch "search query" --select title,embeddingTextBm25Score,titleTrgmSimilarity,statusTrgmSimilarity,embeddingTextTrgmSimilarity,searchScore
```

### Search with pagination and field projection

```bash
agentic-db conversation list --where.fullTextSearch "query" --limit 10 --select id,title,searchScore
agentic-db conversation search "query" --limit 10 --select id,title,searchScore
```

### Create a conversation

```bash
agentic-db conversation create --title <String> [--agentId <UUID>] [--status <String>] [--meta <JSON>] [--embeddingText <String>] [--embedding <Vector>] [--embeddingStale <Boolean>]
```

### Get a conversation by id

```bash
agentic-db conversation get --id <value>
```
