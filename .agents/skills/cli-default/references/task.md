# task

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for Task records via agentic-db CLI

**pgvector embedding fields:** `embedding`
High-dimensional vector columns for semantic similarity search. Query via the Unified Search API pgvector adapter using cosine, L2, or inner-product distance. Supports chunk-aware search: set `includeChunks: true` in VectorNearbyInput to transparently query across parent and chunk embeddings, returning the minimum distance.

**Unified Search API fields:** `embeddingTextBm25Score`, `titleTrgmSimilarity`, `descriptionTrgmSimilarity`, `statusTrgmSimilarity`, `resultTrgmSimilarity`, `embeddingTextTrgmSimilarity`, `searchScore`
Fields provided by the Unified Search plugin. Includes full-text search (tsvector/BM25), trigram similarity scores, and the combined searchScore. Computed fields are read-only and cannot be set in create/update operations.

## Usage

```bash
agentic-db task list
agentic-db task list --where.<field>.<op> <value> --orderBy <values>
agentic-db task list --limit 10 --after <cursor>
agentic-db task find-first --where.<field>.<op> <value>
agentic-db task search <query>
agentic-db task get --id <UUID>
agentic-db task create --entityId <UUID> --title <String> [--agentId <UUID>] [--description <String>] [--status <String>] [--priority <Int>] [--result <String>] [--startedAt <Datetime>] [--completedAt <Datetime>] [--meta <JSON>] [--embeddingText <String>] [--embedding <Vector>] [--embeddingStale <Boolean>]
agentic-db task update --id <UUID> [--entityId <UUID>] [--agentId <UUID>] [--title <String>] [--description <String>] [--status <String>] [--priority <Int>] [--result <String>] [--startedAt <Datetime>] [--completedAt <Datetime>] [--meta <JSON>] [--embeddingText <String>] [--embedding <Vector>] [--embeddingStale <Boolean>]
agentic-db task delete --id <UUID>
```

## Examples

### List task records

```bash
agentic-db task list
```

### List task records with pagination

```bash
agentic-db task list --limit 10 --offset 0
```

### List task records with cursor pagination

```bash
agentic-db task list --limit 10 --after <cursor>
```

### Find first matching task

```bash
agentic-db task find-first --where.id.equalTo <value>
```

### List task records with field selection

```bash
agentic-db task list --select id,id
```

### List task records with filtering and ordering

```bash
agentic-db task list --where.id.equalTo <value> --orderBy ID_ASC
```

### Vector similarity search via `embedding` (manual vector)

```bash
# Pass a pre-computed vector array via dot-notation
agentic-db task list --where.embedding.vector '[0.1,0.2,0.3]' --where.embedding.distance 1.0 --select title,embeddingVectorDistance
```

### Vector semantic search via `embedding` with --auto-embed

```bash
# --auto-embed converts text to vectors using the configured embedder (e.g. Ollama nomic-embed-text)
EMBEDDER_PROVIDER=ollama agentic-db task search "semantic query" --auto-embed --select title,embeddingVectorDistance
EMBEDDER_PROVIDER=ollama agentic-db task list --where.embedding.vector "semantic query" --auto-embed --select title,embeddingVectorDistance
```

### Create/update with auto-embedded `embedding` via --auto-embed

```bash
# --auto-embed on create/update converts text strings in vector fields to embeddings before saving
EMBEDDER_PROVIDER=ollama agentic-db task create --embedding "text to embed" --auto-embed
EMBEDDER_PROVIDER=ollama agentic-db task update --embedding "new text to embed" --auto-embed
```

### BM25 keyword search via `bm25EmbeddingText`

```bash
agentic-db task list --where.bm25EmbeddingText.query "search query" --select title,embeddingTextBm25Score
```

### Fuzzy search via trigram similarity (`trgmTitle`)

```bash
agentic-db task list --where.trgmTitle.value "approximate query" --where.trgmTitle.threshold 0.3 --select title,titleTrgmSimilarity
```

### Fuzzy search via trigram similarity (`trgmDescription`)

```bash
agentic-db task list --where.trgmDescription.value "approximate query" --where.trgmDescription.threshold 0.3 --select title,descriptionTrgmSimilarity
```

### Fuzzy search via trigram similarity (`trgmStatus`)

```bash
agentic-db task list --where.trgmStatus.value "approximate query" --where.trgmStatus.threshold 0.3 --select title,statusTrgmSimilarity
```

### Fuzzy search via trigram similarity (`trgmResult`)

```bash
agentic-db task list --where.trgmResult.value "approximate query" --where.trgmResult.threshold 0.3 --select title,resultTrgmSimilarity
```

### Fuzzy search via trigram similarity (`trgmEmbeddingText`)

```bash
agentic-db task list --where.trgmEmbeddingText.value "approximate query" --where.trgmEmbeddingText.threshold 0.3 --select title,embeddingTextTrgmSimilarity
```

### Composite search (fullTextSearch dispatches to all text adapters)

```bash
agentic-db task list --where.fullTextSearch "search query" --select title,embeddingTextBm25Score,titleTrgmSimilarity,descriptionTrgmSimilarity,statusTrgmSimilarity,resultTrgmSimilarity,embeddingTextTrgmSimilarity,searchScore
```

### Search with pagination and field projection

```bash
agentic-db task list --where.fullTextSearch "query" --limit 10 --select id,title,searchScore
agentic-db task search "query" --limit 10 --select id,title,searchScore
```

### Create a task

```bash
agentic-db task create --entityId <UUID> --title <String> [--agentId <UUID>] [--description <String>] [--status <String>] [--priority <Int>] [--result <String>] [--startedAt <Datetime>] [--completedAt <Datetime>] [--meta <JSON>] [--embeddingText <String>] [--embedding <Vector>] [--embeddingStale <Boolean>]
```

### Get a task by id

```bash
agentic-db task get --id <value>
```
