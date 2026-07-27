# document

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for Document records via agentic-db CLI

**pgvector embedding fields:** `embedding`
High-dimensional vector columns for semantic similarity search. Query via the Unified Search API pgvector adapter using cosine, L2, or inner-product distance. Supports chunk-aware search: set `includeChunks: true` in VectorNearbyInput to transparently query across parent and chunk embeddings, returning the minimum distance.

**Unified Search API fields:** `embeddingTextBm25Score`, `titleTrgmSimilarity`, `contentTrgmSimilarity`, `repoNameTrgmSimilarity`, `filePathTrgmSimilarity`, `commitHashTrgmSimilarity`, `embeddingTextTrgmSimilarity`, `searchScore`
Fields provided by the Unified Search plugin. Includes full-text search (tsvector/BM25), trigram similarity scores, and the combined searchScore. Computed fields are read-only and cannot be set in create/update operations.

## Usage

```bash
agentic-db document list
agentic-db document list --where.<field>.<op> <value> --orderBy <values>
agentic-db document list --limit 10 --after <cursor>
agentic-db document find-first --where.<field>.<op> <value>
agentic-db document search <query>
agentic-db document get --id <UUID>
agentic-db document create --content <String> [--title <String>] [--metadata <JSON>] [--repoName <String>] [--filePath <String>] [--commitHash <String>] [--tags <String>] [--embeddingText <String>] [--embedding <Vector>] [--embeddingUpdatedAt <Datetime>]
agentic-db document update --id <UUID> [--title <String>] [--content <String>] [--metadata <JSON>] [--repoName <String>] [--filePath <String>] [--commitHash <String>] [--tags <String>] [--embeddingText <String>] [--embedding <Vector>] [--embeddingUpdatedAt <Datetime>]
agentic-db document delete --id <UUID>
```

## Examples

### List document records

```bash
agentic-db document list
```

### List document records with pagination

```bash
agentic-db document list --limit 10 --offset 0
```

### List document records with cursor pagination

```bash
agentic-db document list --limit 10 --after <cursor>
```

### Find first matching document

```bash
agentic-db document find-first --where.id.equalTo <value>
```

### List document records with field selection

```bash
agentic-db document list --select id,id
```

### List document records with filtering and ordering

```bash
agentic-db document list --where.id.equalTo <value> --orderBy ID_ASC
```

### Vector similarity search via `embedding` (manual vector)

```bash
# Pass a pre-computed vector array via dot-notation
agentic-db document list --where.embedding.vector '[0.1,0.2,0.3]' --where.embedding.distance 1.0 --select title,embeddingVectorDistance
```

### Vector semantic search via `embedding` with --auto-embed

```bash
# --auto-embed converts text to vectors using the configured embedder (e.g. Ollama nomic-embed-text)
EMBEDDER_PROVIDER=ollama agentic-db document search "semantic query" --auto-embed --select title,embeddingVectorDistance
EMBEDDER_PROVIDER=ollama agentic-db document list --where.embedding.vector "semantic query" --auto-embed --select title,embeddingVectorDistance
```

### Create/update with auto-embedded `embedding` via --auto-embed

```bash
# --auto-embed on create/update converts text strings in vector fields to embeddings before saving
EMBEDDER_PROVIDER=ollama agentic-db document create --embedding "text to embed" --auto-embed
EMBEDDER_PROVIDER=ollama agentic-db document update --embedding "new text to embed" --auto-embed
```

### BM25 keyword search via `bm25EmbeddingText`

```bash
agentic-db document list --where.bm25EmbeddingText.query "search query" --select title,embeddingTextBm25Score
```

### Fuzzy search via trigram similarity (`trgmTitle`)

```bash
agentic-db document list --where.trgmTitle.value "approximate query" --where.trgmTitle.threshold 0.3 --select title,titleTrgmSimilarity
```

### Fuzzy search via trigram similarity (`trgmContent`)

```bash
agentic-db document list --where.trgmContent.value "approximate query" --where.trgmContent.threshold 0.3 --select title,contentTrgmSimilarity
```

### Fuzzy search via trigram similarity (`trgmRepoName`)

```bash
agentic-db document list --where.trgmRepoName.value "approximate query" --where.trgmRepoName.threshold 0.3 --select title,repoNameTrgmSimilarity
```

### Fuzzy search via trigram similarity (`trgmFilePath`)

```bash
agentic-db document list --where.trgmFilePath.value "approximate query" --where.trgmFilePath.threshold 0.3 --select title,filePathTrgmSimilarity
```

### Fuzzy search via trigram similarity (`trgmCommitHash`)

```bash
agentic-db document list --where.trgmCommitHash.value "approximate query" --where.trgmCommitHash.threshold 0.3 --select title,commitHashTrgmSimilarity
```

### Fuzzy search via trigram similarity (`trgmEmbeddingText`)

```bash
agentic-db document list --where.trgmEmbeddingText.value "approximate query" --where.trgmEmbeddingText.threshold 0.3 --select title,embeddingTextTrgmSimilarity
```

### Composite search (unifiedSearch dispatches to all text adapters)

```bash
agentic-db document list --where.unifiedSearch "search query" --select title,embeddingTextBm25Score,titleTrgmSimilarity,contentTrgmSimilarity,repoNameTrgmSimilarity,filePathTrgmSimilarity,commitHashTrgmSimilarity,embeddingTextTrgmSimilarity,searchScore
```

### Search with pagination and field projection

```bash
agentic-db document list --where.unifiedSearch "query" --limit 10 --select id,title,searchScore
agentic-db document search "query" --limit 10 --select id,title,searchScore
```

### Create a document

```bash
agentic-db document create --content <String> [--title <String>] [--metadata <JSON>] [--repoName <String>] [--filePath <String>] [--commitHash <String>] [--tags <String>] [--embeddingText <String>] [--embedding <Vector>] [--embeddingUpdatedAt <Datetime>]
```

### Get a document by id

```bash
agentic-db document get --id <value>
```
