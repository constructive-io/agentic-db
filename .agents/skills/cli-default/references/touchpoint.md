# touchpoint

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for Touchpoint records via agentic-db CLI

**pgvector embedding fields:** `embedding`
High-dimensional vector columns for semantic similarity search. Query via the Unified Search API pgvector adapter using cosine, L2, or inner-product distance. Supports chunk-aware search: set `includeChunks: true` in VectorNearbyInput to transparently query across parent and chunk embeddings, returning the minimum distance.

**Unified Search API fields:** `embeddingTextBm25Score`, `touchpointTypeTrgmSimilarity`, `subjectTrgmSimilarity`, `summaryTrgmSimilarity`, `sentimentTrgmSimilarity`, `directionTrgmSimilarity`, `channelTrgmSimilarity`, `embeddingTextTrgmSimilarity`, `searchScore`
Fields provided by the Unified Search plugin. Includes full-text search (tsvector/BM25), trigram similarity scores, and the combined searchScore. Computed fields are read-only and cannot be set in create/update operations.

## Usage

```bash
agentic-db touchpoint list
agentic-db touchpoint list --where.<field>.<op> <value> --orderBy <values>
agentic-db touchpoint list --limit 10 --after <cursor>
agentic-db touchpoint find-first --where.<field>.<op> <value>
agentic-db touchpoint search <query>
agentic-db touchpoint get --id <UUID>
agentic-db touchpoint create --contactId <UUID> --touchpointType <String> --occurredAt <Datetime> [--subject <String>] [--summary <String>] [--sentiment <String>] [--direction <String>] [--channel <String>] [--dealId <UUID>] [--companyId <UUID>] [--eventId <UUID>] [--meta <JSON>] [--tags <String>] [--embeddingText <String>] [--embedding <Vector>] [--embeddingUpdatedAt <Datetime>]
agentic-db touchpoint update --id <UUID> [--contactId <UUID>] [--touchpointType <String>] [--occurredAt <Datetime>] [--subject <String>] [--summary <String>] [--sentiment <String>] [--direction <String>] [--channel <String>] [--dealId <UUID>] [--companyId <UUID>] [--eventId <UUID>] [--meta <JSON>] [--tags <String>] [--embeddingText <String>] [--embedding <Vector>] [--embeddingUpdatedAt <Datetime>]
agentic-db touchpoint delete --id <UUID>
```

## Examples

### List touchpoint records

```bash
agentic-db touchpoint list
```

### List touchpoint records with pagination

```bash
agentic-db touchpoint list --limit 10 --offset 0
```

### List touchpoint records with cursor pagination

```bash
agentic-db touchpoint list --limit 10 --after <cursor>
```

### Find first matching touchpoint

```bash
agentic-db touchpoint find-first --where.id.equalTo <value>
```

### List touchpoint records with field selection

```bash
agentic-db touchpoint list --select id,id
```

### List touchpoint records with filtering and ordering

```bash
agentic-db touchpoint list --where.id.equalTo <value> --orderBy ID_ASC
```

### Vector similarity search via `embedding` (manual vector)

```bash
# Pass a pre-computed vector array via dot-notation
agentic-db touchpoint list --where.embedding.vector '[0.1,0.2,0.3]' --where.embedding.distance 1.0 --select title,embeddingVectorDistance
```

### Vector semantic search via `embedding` with --auto-embed

```bash
# --auto-embed converts text to vectors using the configured embedder (e.g. Ollama nomic-embed-text)
EMBEDDER_PROVIDER=ollama agentic-db touchpoint search "semantic query" --auto-embed --select title,embeddingVectorDistance
EMBEDDER_PROVIDER=ollama agentic-db touchpoint list --where.embedding.vector "semantic query" --auto-embed --select title,embeddingVectorDistance
```

### Create/update with auto-embedded `embedding` via --auto-embed

```bash
# --auto-embed on create/update converts text strings in vector fields to embeddings before saving
EMBEDDER_PROVIDER=ollama agentic-db touchpoint create --embedding "text to embed" --auto-embed
EMBEDDER_PROVIDER=ollama agentic-db touchpoint update --embedding "new text to embed" --auto-embed
```

### BM25 keyword search via `bm25EmbeddingText`

```bash
agentic-db touchpoint list --where.bm25EmbeddingText.query "search query" --select title,embeddingTextBm25Score
```

### Fuzzy search via trigram similarity (`trgmTouchpointType`)

```bash
agentic-db touchpoint list --where.trgmTouchpointType.value "approximate query" --where.trgmTouchpointType.threshold 0.3 --select title,touchpointTypeTrgmSimilarity
```

### Fuzzy search via trigram similarity (`trgmSubject`)

```bash
agentic-db touchpoint list --where.trgmSubject.value "approximate query" --where.trgmSubject.threshold 0.3 --select title,subjectTrgmSimilarity
```

### Fuzzy search via trigram similarity (`trgmSummary`)

```bash
agentic-db touchpoint list --where.trgmSummary.value "approximate query" --where.trgmSummary.threshold 0.3 --select title,summaryTrgmSimilarity
```

### Fuzzy search via trigram similarity (`trgmSentiment`)

```bash
agentic-db touchpoint list --where.trgmSentiment.value "approximate query" --where.trgmSentiment.threshold 0.3 --select title,sentimentTrgmSimilarity
```

### Fuzzy search via trigram similarity (`trgmDirection`)

```bash
agentic-db touchpoint list --where.trgmDirection.value "approximate query" --where.trgmDirection.threshold 0.3 --select title,directionTrgmSimilarity
```

### Fuzzy search via trigram similarity (`trgmChannel`)

```bash
agentic-db touchpoint list --where.trgmChannel.value "approximate query" --where.trgmChannel.threshold 0.3 --select title,channelTrgmSimilarity
```

### Fuzzy search via trigram similarity (`trgmEmbeddingText`)

```bash
agentic-db touchpoint list --where.trgmEmbeddingText.value "approximate query" --where.trgmEmbeddingText.threshold 0.3 --select title,embeddingTextTrgmSimilarity
```

### Composite search (unifiedSearch dispatches to all text adapters)

```bash
agentic-db touchpoint list --where.unifiedSearch "search query" --select title,embeddingTextBm25Score,touchpointTypeTrgmSimilarity,subjectTrgmSimilarity,summaryTrgmSimilarity,sentimentTrgmSimilarity,directionTrgmSimilarity,channelTrgmSimilarity,embeddingTextTrgmSimilarity,searchScore
```

### Search with pagination and field projection

```bash
agentic-db touchpoint list --where.unifiedSearch "query" --limit 10 --select id,title,searchScore
agentic-db touchpoint search "query" --limit 10 --select id,title,searchScore
```

### Create a touchpoint

```bash
agentic-db touchpoint create --contactId <UUID> --touchpointType <String> --occurredAt <Datetime> [--subject <String>] [--summary <String>] [--sentiment <String>] [--direction <String>] [--channel <String>] [--dealId <UUID>] [--companyId <UUID>] [--eventId <UUID>] [--meta <JSON>] [--tags <String>] [--embeddingText <String>] [--embedding <Vector>] [--embeddingUpdatedAt <Datetime>]
```

### Get a touchpoint by id

```bash
agentic-db touchpoint get --id <value>
```
