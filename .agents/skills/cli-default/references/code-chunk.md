# codeChunk

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for CodeChunk records via agentic-db CLI

**pgvector embedding fields:** `embedding`
High-dimensional vector columns for semantic similarity search. Query via the Unified Search API pgvector adapter using cosine, L2, or inner-product distance. Supports chunk-aware search: set `includeChunks: true` in VectorNearbyInput to transparently query across parent and chunk embeddings, returning the minimum distance.

**Unified Search API fields:** `embeddingTextBm25Score`, `filePathTrgmSimilarity`, `contentTrgmSimilarity`, `languageTrgmSimilarity`, `symbolNameTrgmSimilarity`, `symbolTypeTrgmSimilarity`, `embeddingTextTrgmSimilarity`, `searchScore`
Fields provided by the Unified Search plugin. Includes full-text search (tsvector/BM25), trigram similarity scores, and the combined searchScore. Computed fields are read-only and cannot be set in create/update operations.

## Usage

```bash
agentic-db code-chunk list
agentic-db code-chunk list --where.<field>.<op> <value> --orderBy <values>
agentic-db code-chunk list --limit 10 --after <cursor>
agentic-db code-chunk find-first --where.<field>.<op> <value>
agentic-db code-chunk search <query>
agentic-db code-chunk get --id <UUID>
agentic-db code-chunk create --entityId <UUID> --codebaseId <UUID> --filePath <String> --content <String> [--chunkIndex <Int>] [--language <String>] [--startLine <Int>] [--endLine <Int>] [--symbolName <String>] [--symbolType <String>] [--embeddingText <String>] [--embedding <Vector>] [--embeddingStale <Boolean>]
agentic-db code-chunk update --id <UUID> [--entityId <UUID>] [--codebaseId <UUID>] [--filePath <String>] [--chunkIndex <Int>] [--content <String>] [--language <String>] [--startLine <Int>] [--endLine <Int>] [--symbolName <String>] [--symbolType <String>] [--embeddingText <String>] [--embedding <Vector>] [--embeddingStale <Boolean>]
agentic-db code-chunk delete --id <UUID>
```

## Examples

### List codeChunk records

```bash
agentic-db code-chunk list
```

### List codeChunk records with pagination

```bash
agentic-db code-chunk list --limit 10 --offset 0
```

### List codeChunk records with cursor pagination

```bash
agentic-db code-chunk list --limit 10 --after <cursor>
```

### Find first matching codeChunk

```bash
agentic-db code-chunk find-first --where.id.equalTo <value>
```

### List codeChunk records with field selection

```bash
agentic-db code-chunk list --select id,id
```

### List codeChunk records with filtering and ordering

```bash
agentic-db code-chunk list --where.id.equalTo <value> --orderBy ID_ASC
```

### Vector similarity search via `embedding` (manual vector)

```bash
# Pass a pre-computed vector array via dot-notation
agentic-db code-chunk list --where.embedding.vector '[0.1,0.2,0.3]' --where.embedding.distance 1.0 --select title,embeddingVectorDistance
```

### Vector semantic search via `embedding` with --auto-embed

```bash
# --auto-embed converts text to vectors using the configured embedder (e.g. Ollama nomic-embed-text)
EMBEDDER_PROVIDER=ollama agentic-db code-chunk search "semantic query" --auto-embed --select title,embeddingVectorDistance
EMBEDDER_PROVIDER=ollama agentic-db code-chunk list --where.embedding.vector "semantic query" --auto-embed --select title,embeddingVectorDistance
```

### Create/update with auto-embedded `embedding` via --auto-embed

```bash
# --auto-embed on create/update converts text strings in vector fields to embeddings before saving
EMBEDDER_PROVIDER=ollama agentic-db code-chunk create --embedding "text to embed" --auto-embed
EMBEDDER_PROVIDER=ollama agentic-db code-chunk update --embedding "new text to embed" --auto-embed
```

### BM25 keyword search via `bm25EmbeddingText`

```bash
agentic-db code-chunk list --where.bm25EmbeddingText.query "search query" --select title,embeddingTextBm25Score
```

### Fuzzy search via trigram similarity (`trgmFilePath`)

```bash
agentic-db code-chunk list --where.trgmFilePath.value "approximate query" --where.trgmFilePath.threshold 0.3 --select title,filePathTrgmSimilarity
```

### Fuzzy search via trigram similarity (`trgmContent`)

```bash
agentic-db code-chunk list --where.trgmContent.value "approximate query" --where.trgmContent.threshold 0.3 --select title,contentTrgmSimilarity
```

### Fuzzy search via trigram similarity (`trgmLanguage`)

```bash
agentic-db code-chunk list --where.trgmLanguage.value "approximate query" --where.trgmLanguage.threshold 0.3 --select title,languageTrgmSimilarity
```

### Fuzzy search via trigram similarity (`trgmSymbolName`)

```bash
agentic-db code-chunk list --where.trgmSymbolName.value "approximate query" --where.trgmSymbolName.threshold 0.3 --select title,symbolNameTrgmSimilarity
```

### Fuzzy search via trigram similarity (`trgmSymbolType`)

```bash
agentic-db code-chunk list --where.trgmSymbolType.value "approximate query" --where.trgmSymbolType.threshold 0.3 --select title,symbolTypeTrgmSimilarity
```

### Fuzzy search via trigram similarity (`trgmEmbeddingText`)

```bash
agentic-db code-chunk list --where.trgmEmbeddingText.value "approximate query" --where.trgmEmbeddingText.threshold 0.3 --select title,embeddingTextTrgmSimilarity
```

### Composite search (fullTextSearch dispatches to all text adapters)

```bash
agentic-db code-chunk list --where.fullTextSearch "search query" --select title,embeddingTextBm25Score,filePathTrgmSimilarity,contentTrgmSimilarity,languageTrgmSimilarity,symbolNameTrgmSimilarity,symbolTypeTrgmSimilarity,embeddingTextTrgmSimilarity,searchScore
```

### Search with pagination and field projection

```bash
agentic-db code-chunk list --where.fullTextSearch "query" --limit 10 --select id,title,searchScore
agentic-db code-chunk search "query" --limit 10 --select id,title,searchScore
```

### Create a codeChunk

```bash
agentic-db code-chunk create --entityId <UUID> --codebaseId <UUID> --filePath <String> --content <String> [--chunkIndex <Int>] [--language <String>] [--startLine <Int>] [--endLine <Int>] [--symbolName <String>] [--symbolType <String>] [--embeddingText <String>] [--embedding <Vector>] [--embeddingStale <Boolean>]
```

### Get a codeChunk by id

```bash
agentic-db code-chunk get --id <value>
```
