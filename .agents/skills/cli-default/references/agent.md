# agent

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for Agent records via agentic-db CLI

**pgvector embedding fields:** `embedding`
High-dimensional vector columns for semantic similarity search. Query via the Unified Search API pgvector adapter using cosine, L2, or inner-product distance. Supports chunk-aware search: set `includeChunks: true` in VectorNearbyInput to transparently query across parent and chunk embeddings, returning the minimum distance.

**Unified Search API fields:** `embeddingTextBm25Score`, `nameTrgmSimilarity`, `descriptionTrgmSimilarity`, `systemPromptTrgmSimilarity`, `modelTrgmSimilarity`, `statusTrgmSimilarity`, `embeddingTextTrgmSimilarity`, `searchScore`
Fields provided by the Unified Search plugin. Includes full-text search (tsvector/BM25), trigram similarity scores, and the combined searchScore. Computed fields are read-only and cannot be set in create/update operations.

## Usage

```bash
agentic-db agent list
agentic-db agent list --where.<field>.<op> <value> --orderBy <values>
agentic-db agent list --limit 10 --after <cursor>
agentic-db agent find-first --where.<field>.<op> <value>
agentic-db agent search <query>
agentic-db agent get --id <UUID>
agentic-db agent create --entityId <UUID> --name <String> [--description <String>] [--systemPrompt <String>] [--model <String>] [--temperature <BigFloat>] [--status <String>] [--config <JSON>] [--tags <String>] [--embeddingText <String>] [--embedding <Vector>] [--embeddingStale <Boolean>]
agentic-db agent update --id <UUID> [--entityId <UUID>] [--name <String>] [--description <String>] [--systemPrompt <String>] [--model <String>] [--temperature <BigFloat>] [--status <String>] [--config <JSON>] [--tags <String>] [--embeddingText <String>] [--embedding <Vector>] [--embeddingStale <Boolean>]
agentic-db agent delete --id <UUID>
```

## Examples

### List agent records

```bash
agentic-db agent list
```

### List agent records with pagination

```bash
agentic-db agent list --limit 10 --offset 0
```

### List agent records with cursor pagination

```bash
agentic-db agent list --limit 10 --after <cursor>
```

### Find first matching agent

```bash
agentic-db agent find-first --where.id.equalTo <value>
```

### List agent records with field selection

```bash
agentic-db agent list --select id,id
```

### List agent records with filtering and ordering

```bash
agentic-db agent list --where.id.equalTo <value> --orderBy ID_ASC
```

### Vector similarity search via `embedding` (manual vector)

```bash
# Pass a pre-computed vector array via dot-notation
agentic-db agent list --where.embedding.vector '[0.1,0.2,0.3]' --where.embedding.distance 1.0 --select title,embeddingVectorDistance
```

### Vector semantic search via `embedding` with --auto-embed

```bash
# --auto-embed converts text to vectors using the configured embedder (e.g. Ollama nomic-embed-text)
EMBEDDER_PROVIDER=ollama agentic-db agent search "semantic query" --auto-embed --select title,embeddingVectorDistance
EMBEDDER_PROVIDER=ollama agentic-db agent list --where.embedding.vector "semantic query" --auto-embed --select title,embeddingVectorDistance
```

### Create/update with auto-embedded `embedding` via --auto-embed

```bash
# --auto-embed on create/update converts text strings in vector fields to embeddings before saving
EMBEDDER_PROVIDER=ollama agentic-db agent create --embedding "text to embed" --auto-embed
EMBEDDER_PROVIDER=ollama agentic-db agent update --embedding "new text to embed" --auto-embed
```

### BM25 keyword search via `bm25EmbeddingText`

```bash
agentic-db agent list --where.bm25EmbeddingText.query "search query" --select title,embeddingTextBm25Score
```

### Fuzzy search via trigram similarity (`trgmName`)

```bash
agentic-db agent list --where.trgmName.value "approximate query" --where.trgmName.threshold 0.3 --select title,nameTrgmSimilarity
```

### Fuzzy search via trigram similarity (`trgmDescription`)

```bash
agentic-db agent list --where.trgmDescription.value "approximate query" --where.trgmDescription.threshold 0.3 --select title,descriptionTrgmSimilarity
```

### Fuzzy search via trigram similarity (`trgmSystemPrompt`)

```bash
agentic-db agent list --where.trgmSystemPrompt.value "approximate query" --where.trgmSystemPrompt.threshold 0.3 --select title,systemPromptTrgmSimilarity
```

### Fuzzy search via trigram similarity (`trgmModel`)

```bash
agentic-db agent list --where.trgmModel.value "approximate query" --where.trgmModel.threshold 0.3 --select title,modelTrgmSimilarity
```

### Fuzzy search via trigram similarity (`trgmStatus`)

```bash
agentic-db agent list --where.trgmStatus.value "approximate query" --where.trgmStatus.threshold 0.3 --select title,statusTrgmSimilarity
```

### Fuzzy search via trigram similarity (`trgmEmbeddingText`)

```bash
agentic-db agent list --where.trgmEmbeddingText.value "approximate query" --where.trgmEmbeddingText.threshold 0.3 --select title,embeddingTextTrgmSimilarity
```

### Composite search (fullTextSearch dispatches to all text adapters)

```bash
agentic-db agent list --where.fullTextSearch "search query" --select title,embeddingTextBm25Score,nameTrgmSimilarity,descriptionTrgmSimilarity,systemPromptTrgmSimilarity,modelTrgmSimilarity,statusTrgmSimilarity,embeddingTextTrgmSimilarity,searchScore
```

### Search with pagination and field projection

```bash
agentic-db agent list --where.fullTextSearch "query" --limit 10 --select id,title,searchScore
agentic-db agent search "query" --limit 10 --select id,title,searchScore
```

### Create a agent

```bash
agentic-db agent create --entityId <UUID> --name <String> [--description <String>] [--systemPrompt <String>] [--model <String>] [--temperature <BigFloat>] [--status <String>] [--config <JSON>] [--tags <String>] [--embeddingText <String>] [--embedding <Vector>] [--embeddingStale <Boolean>]
```

### Get a agent by id

```bash
agentic-db agent get --id <value>
```
