# codebase

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for Codebase records via agentic-db CLI

**pgvector embedding fields:** `embedding`
High-dimensional vector columns for semantic similarity search. Query via the Unified Search API pgvector adapter using cosine, L2, or inner-product distance. Supports chunk-aware search: set `includeChunks: true` in VectorNearbyInput to transparently query across parent and chunk embeddings, returning the minimum distance.

**Unified Search API fields:** `embeddingTextBm25Score`, `nameTrgmSimilarity`, `descriptionTrgmSimilarity`, `repositoryUrlTrgmSimilarity`, `defaultBranchTrgmSimilarity`, `languageTrgmSimilarity`, `frameworkTrgmSimilarity`, `embeddingTextTrgmSimilarity`, `searchScore`
Fields provided by the Unified Search plugin. Includes full-text search (tsvector/BM25), trigram similarity scores, and the combined searchScore. Computed fields are read-only and cannot be set in create/update operations.

## Usage

```bash
agentic-db codebase list
agentic-db codebase list --where.<field>.<op> <value> --orderBy <values>
agentic-db codebase list --limit 10 --after <cursor>
agentic-db codebase find-first --where.<field>.<op> <value>
agentic-db codebase search <query>
agentic-db codebase get --id <UUID>
agentic-db codebase create --entityId <UUID> --name <String> [--description <String>] [--repositoryUrl <String>] [--defaultBranch <String>] [--language <String>] [--framework <String>] [--lastSyncedAt <Datetime>] [--config <JSON>] [--tags <String>] [--embeddingText <String>] [--embedding <Vector>] [--embeddingStale <Boolean>]
agentic-db codebase update --id <UUID> [--entityId <UUID>] [--name <String>] [--description <String>] [--repositoryUrl <String>] [--defaultBranch <String>] [--language <String>] [--framework <String>] [--lastSyncedAt <Datetime>] [--config <JSON>] [--tags <String>] [--embeddingText <String>] [--embedding <Vector>] [--embeddingStale <Boolean>]
agentic-db codebase delete --id <UUID>
```

## Examples

### List codebase records

```bash
agentic-db codebase list
```

### List codebase records with pagination

```bash
agentic-db codebase list --limit 10 --offset 0
```

### List codebase records with cursor pagination

```bash
agentic-db codebase list --limit 10 --after <cursor>
```

### Find first matching codebase

```bash
agentic-db codebase find-first --where.id.equalTo <value>
```

### List codebase records with field selection

```bash
agentic-db codebase list --select id,id
```

### List codebase records with filtering and ordering

```bash
agentic-db codebase list --where.id.equalTo <value> --orderBy ID_ASC
```

### Vector similarity search via `embedding` (manual vector)

```bash
# Pass a pre-computed vector array via dot-notation
agentic-db codebase list --where.embedding.vector '[0.1,0.2,0.3]' --where.embedding.distance 1.0 --select title,embeddingVectorDistance
```

### Vector semantic search via `embedding` with --auto-embed

```bash
# --auto-embed converts text to vectors using the configured embedder (e.g. Ollama nomic-embed-text)
EMBEDDER_PROVIDER=ollama agentic-db codebase search "semantic query" --auto-embed --select title,embeddingVectorDistance
EMBEDDER_PROVIDER=ollama agentic-db codebase list --where.embedding.vector "semantic query" --auto-embed --select title,embeddingVectorDistance
```

### Create/update with auto-embedded `embedding` via --auto-embed

```bash
# --auto-embed on create/update converts text strings in vector fields to embeddings before saving
EMBEDDER_PROVIDER=ollama agentic-db codebase create --embedding "text to embed" --auto-embed
EMBEDDER_PROVIDER=ollama agentic-db codebase update --embedding "new text to embed" --auto-embed
```

### BM25 keyword search via `bm25EmbeddingText`

```bash
agentic-db codebase list --where.bm25EmbeddingText.query "search query" --select title,embeddingTextBm25Score
```

### Fuzzy search via trigram similarity (`trgmName`)

```bash
agentic-db codebase list --where.trgmName.value "approximate query" --where.trgmName.threshold 0.3 --select title,nameTrgmSimilarity
```

### Fuzzy search via trigram similarity (`trgmDescription`)

```bash
agentic-db codebase list --where.trgmDescription.value "approximate query" --where.trgmDescription.threshold 0.3 --select title,descriptionTrgmSimilarity
```

### Fuzzy search via trigram similarity (`trgmRepositoryUrl`)

```bash
agentic-db codebase list --where.trgmRepositoryUrl.value "approximate query" --where.trgmRepositoryUrl.threshold 0.3 --select title,repositoryUrlTrgmSimilarity
```

### Fuzzy search via trigram similarity (`trgmDefaultBranch`)

```bash
agentic-db codebase list --where.trgmDefaultBranch.value "approximate query" --where.trgmDefaultBranch.threshold 0.3 --select title,defaultBranchTrgmSimilarity
```

### Fuzzy search via trigram similarity (`trgmLanguage`)

```bash
agentic-db codebase list --where.trgmLanguage.value "approximate query" --where.trgmLanguage.threshold 0.3 --select title,languageTrgmSimilarity
```

### Fuzzy search via trigram similarity (`trgmFramework`)

```bash
agentic-db codebase list --where.trgmFramework.value "approximate query" --where.trgmFramework.threshold 0.3 --select title,frameworkTrgmSimilarity
```

### Fuzzy search via trigram similarity (`trgmEmbeddingText`)

```bash
agentic-db codebase list --where.trgmEmbeddingText.value "approximate query" --where.trgmEmbeddingText.threshold 0.3 --select title,embeddingTextTrgmSimilarity
```

### Composite search (fullTextSearch dispatches to all text adapters)

```bash
agentic-db codebase list --where.fullTextSearch "search query" --select title,embeddingTextBm25Score,nameTrgmSimilarity,descriptionTrgmSimilarity,repositoryUrlTrgmSimilarity,defaultBranchTrgmSimilarity,languageTrgmSimilarity,frameworkTrgmSimilarity,embeddingTextTrgmSimilarity,searchScore
```

### Search with pagination and field projection

```bash
agentic-db codebase list --where.fullTextSearch "query" --limit 10 --select id,title,searchScore
agentic-db codebase search "query" --limit 10 --select id,title,searchScore
```

### Create a codebase

```bash
agentic-db codebase create --entityId <UUID> --name <String> [--description <String>] [--repositoryUrl <String>] [--defaultBranch <String>] [--language <String>] [--framework <String>] [--lastSyncedAt <Datetime>] [--config <JSON>] [--tags <String>] [--embeddingText <String>] [--embedding <Vector>] [--embeddingStale <Boolean>]
```

### Get a codebase by id

```bash
agentic-db codebase get --id <value>
```
