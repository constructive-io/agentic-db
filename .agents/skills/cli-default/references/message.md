# message

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for Message records via agentic-db CLI

**pgvector embedding fields:** `embedding`
High-dimensional vector columns for semantic similarity search. Query via the Unified Search API pgvector adapter using cosine, L2, or inner-product distance. Supports chunk-aware search: set `includeChunks: true` in VectorNearbyInput to transparently query across parent and chunk embeddings, returning the minimum distance.

**Unified Search API fields:** `embeddingTextBm25Score`, `roleTrgmSimilarity`, `contentTrgmSimilarity`, `embeddingTextTrgmSimilarity`, `searchScore`
Fields provided by the Unified Search plugin. Includes full-text search (tsvector/BM25), trigram similarity scores, and the combined searchScore. Computed fields are read-only and cannot be set in create/update operations.

## Usage

```bash
agentic-db message list
agentic-db message list --where.<field>.<op> <value> --orderBy <values>
agentic-db message list --limit 10 --after <cursor>
agentic-db message find-first --where.<field>.<op> <value>
agentic-db message search <query>
agentic-db message get --id <UUID>
agentic-db message create --conversationId <UUID> --role <String> --content <String> [--tokenCount <Int>] [--meta <JSON>] [--toolCalls <JSON>] [--toolResults <JSON>] [--embeddingText <String>] [--embedding <Vector>] [--embeddingStale <Boolean>]
agentic-db message update --id <UUID> [--conversationId <UUID>] [--role <String>] [--content <String>] [--tokenCount <Int>] [--meta <JSON>] [--toolCalls <JSON>] [--toolResults <JSON>] [--embeddingText <String>] [--embedding <Vector>] [--embeddingStale <Boolean>]
agentic-db message delete --id <UUID>
```

## Examples

### List message records

```bash
agentic-db message list
```

### List message records with pagination

```bash
agentic-db message list --limit 10 --offset 0
```

### List message records with cursor pagination

```bash
agentic-db message list --limit 10 --after <cursor>
```

### Find first matching message

```bash
agentic-db message find-first --where.id.equalTo <value>
```

### List message records with field selection

```bash
agentic-db message list --select id,id
```

### List message records with filtering and ordering

```bash
agentic-db message list --where.id.equalTo <value> --orderBy ID_ASC
```

### Vector similarity search via `embedding` (manual vector)

```bash
# Pass a pre-computed vector array via dot-notation
agentic-db message list --where.embedding.vector '[0.1,0.2,0.3]' --where.embedding.distance 1.0 --select title,embeddingVectorDistance
```

### Vector semantic search via `embedding` with --auto-embed

```bash
# --auto-embed converts text to vectors using the configured embedder (e.g. Ollama nomic-embed-text)
EMBEDDER_PROVIDER=ollama agentic-db message search "semantic query" --auto-embed --select title,embeddingVectorDistance
EMBEDDER_PROVIDER=ollama agentic-db message list --where.embedding.vector "semantic query" --auto-embed --select title,embeddingVectorDistance
```

### Create/update with auto-embedded `embedding` via --auto-embed

```bash
# --auto-embed on create/update converts text strings in vector fields to embeddings before saving
EMBEDDER_PROVIDER=ollama agentic-db message create --embedding "text to embed" --auto-embed
EMBEDDER_PROVIDER=ollama agentic-db message update --embedding "new text to embed" --auto-embed
```

### BM25 keyword search via `bm25EmbeddingText`

```bash
agentic-db message list --where.bm25EmbeddingText.query "search query" --select title,embeddingTextBm25Score
```

### Fuzzy search via trigram similarity (`trgmRole`)

```bash
agentic-db message list --where.trgmRole.value "approximate query" --where.trgmRole.threshold 0.3 --select title,roleTrgmSimilarity
```

### Fuzzy search via trigram similarity (`trgmContent`)

```bash
agentic-db message list --where.trgmContent.value "approximate query" --where.trgmContent.threshold 0.3 --select title,contentTrgmSimilarity
```

### Fuzzy search via trigram similarity (`trgmEmbeddingText`)

```bash
agentic-db message list --where.trgmEmbeddingText.value "approximate query" --where.trgmEmbeddingText.threshold 0.3 --select title,embeddingTextTrgmSimilarity
```

### Composite search (fullTextSearch dispatches to all text adapters)

```bash
agentic-db message list --where.fullTextSearch "search query" --select title,embeddingTextBm25Score,roleTrgmSimilarity,contentTrgmSimilarity,embeddingTextTrgmSimilarity,searchScore
```

### Search with pagination and field projection

```bash
agentic-db message list --where.fullTextSearch "query" --limit 10 --select id,title,searchScore
agentic-db message search "query" --limit 10 --select id,title,searchScore
```

### Create a message

```bash
agentic-db message create --conversationId <UUID> --role <String> --content <String> [--tokenCount <Int>] [--meta <JSON>] [--toolCalls <JSON>] [--toolResults <JSON>] [--embeddingText <String>] [--embedding <Vector>] [--embeddingStale <Boolean>]
```

### Get a message by id

```bash
agentic-db message get --id <value>
```
