# project

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for Project records via agentic-db CLI

**pgvector embedding fields:** `embedding`
High-dimensional vector columns for semantic similarity search. Query via the Unified Search API pgvector adapter using cosine, L2, or inner-product distance. Supports chunk-aware search: set `includeChunks: true` in VectorNearbyInput to transparently query across parent and chunk embeddings, returning the minimum distance.

**Unified Search API fields:** `embeddingTextBm25Score`, `nameTrgmSimilarity`, `descriptionTrgmSimilarity`, `statusTrgmSimilarity`, `projectTypeTrgmSimilarity`, `embeddingTextTrgmSimilarity`, `searchScore`
Fields provided by the Unified Search plugin. Includes full-text search (tsvector/BM25), trigram similarity scores, and the combined searchScore. Computed fields are read-only and cannot be set in create/update operations.

## Usage

```bash
agentic-db project list
agentic-db project list --where.<field>.<op> <value> --orderBy <values>
agentic-db project list --limit 10 --after <cursor>
agentic-db project find-first --where.<field>.<op> <value>
agentic-db project search <query>
agentic-db project get --id <UUID>
agentic-db project create --name <String> [--description <String>] [--status <String>] [--projectType <String>] [--priority <Int>] [--startedAt <Datetime>] [--targetDate <Datetime>] [--completedAt <Datetime>] [--config <JSON>] [--tags <String>] [--embeddingText <String>] [--embedding <Vector>] [--embeddingUpdatedAt <Datetime>]
agentic-db project update --id <UUID> [--name <String>] [--description <String>] [--status <String>] [--projectType <String>] [--priority <Int>] [--startedAt <Datetime>] [--targetDate <Datetime>] [--completedAt <Datetime>] [--config <JSON>] [--tags <String>] [--embeddingText <String>] [--embedding <Vector>] [--embeddingUpdatedAt <Datetime>]
agentic-db project delete --id <UUID>
```

## Examples

### List project records

```bash
agentic-db project list
```

### List project records with pagination

```bash
agentic-db project list --limit 10 --offset 0
```

### List project records with cursor pagination

```bash
agentic-db project list --limit 10 --after <cursor>
```

### Find first matching project

```bash
agentic-db project find-first --where.id.equalTo <value>
```

### List project records with field selection

```bash
agentic-db project list --select id,id
```

### List project records with filtering and ordering

```bash
agentic-db project list --where.id.equalTo <value> --orderBy ID_ASC
```

### Vector similarity search via `embedding` (manual vector)

```bash
# Pass a pre-computed vector array via dot-notation
agentic-db project list --where.embedding.vector '[0.1,0.2,0.3]' --where.embedding.distance 1.0 --select title,embeddingVectorDistance
```

### Vector semantic search via `embedding` with --auto-embed

```bash
# --auto-embed converts text to vectors using the configured embedder (e.g. Ollama nomic-embed-text)
EMBEDDER_PROVIDER=ollama agentic-db project search "semantic query" --auto-embed --select title,embeddingVectorDistance
EMBEDDER_PROVIDER=ollama agentic-db project list --where.embedding.vector "semantic query" --auto-embed --select title,embeddingVectorDistance
```

### Create/update with auto-embedded `embedding` via --auto-embed

```bash
# --auto-embed on create/update converts text strings in vector fields to embeddings before saving
EMBEDDER_PROVIDER=ollama agentic-db project create --embedding "text to embed" --auto-embed
EMBEDDER_PROVIDER=ollama agentic-db project update --embedding "new text to embed" --auto-embed
```

### BM25 keyword search via `bm25EmbeddingText`

```bash
agentic-db project list --where.bm25EmbeddingText.query "search query" --select title,embeddingTextBm25Score
```

### Fuzzy search via trigram similarity (`trgmName`)

```bash
agentic-db project list --where.trgmName.value "approximate query" --where.trgmName.threshold 0.3 --select title,nameTrgmSimilarity
```

### Fuzzy search via trigram similarity (`trgmDescription`)

```bash
agentic-db project list --where.trgmDescription.value "approximate query" --where.trgmDescription.threshold 0.3 --select title,descriptionTrgmSimilarity
```

### Fuzzy search via trigram similarity (`trgmStatus`)

```bash
agentic-db project list --where.trgmStatus.value "approximate query" --where.trgmStatus.threshold 0.3 --select title,statusTrgmSimilarity
```

### Fuzzy search via trigram similarity (`trgmProjectType`)

```bash
agentic-db project list --where.trgmProjectType.value "approximate query" --where.trgmProjectType.threshold 0.3 --select title,projectTypeTrgmSimilarity
```

### Fuzzy search via trigram similarity (`trgmEmbeddingText`)

```bash
agentic-db project list --where.trgmEmbeddingText.value "approximate query" --where.trgmEmbeddingText.threshold 0.3 --select title,embeddingTextTrgmSimilarity
```

### Composite search (unifiedSearch dispatches to all text adapters)

```bash
agentic-db project list --where.unifiedSearch "search query" --select title,embeddingTextBm25Score,nameTrgmSimilarity,descriptionTrgmSimilarity,statusTrgmSimilarity,projectTypeTrgmSimilarity,embeddingTextTrgmSimilarity,searchScore
```

### Search with pagination and field projection

```bash
agentic-db project list --where.unifiedSearch "query" --limit 10 --select id,title,searchScore
agentic-db project search "query" --limit 10 --select id,title,searchScore
```

### Create a project

```bash
agentic-db project create --name <String> [--description <String>] [--status <String>] [--projectType <String>] [--priority <Int>] [--startedAt <Datetime>] [--targetDate <Datetime>] [--completedAt <Datetime>] [--config <JSON>] [--tags <String>] [--embeddingText <String>] [--embedding <Vector>] [--embeddingUpdatedAt <Datetime>]
```

### Get a project by id

```bash
agentic-db project get --id <value>
```
