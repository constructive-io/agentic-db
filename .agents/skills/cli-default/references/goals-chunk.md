# goalsChunk

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for GoalsChunk records via agentic-db CLI

**pgvector embedding fields:** `embedding`
High-dimensional vector columns for semantic similarity search. Query via the Unified Search API pgvector adapter using cosine, L2, or inner-product distance. Supports chunk-aware search: set `includeChunks: true` in VectorNearbyInput to transparently query across parent and chunk embeddings, returning the minimum distance.

**Unified Search API fields:** `searchScore`
Fields provided by the Unified Search plugin. Includes full-text search (tsvector/BM25), trigram similarity scores, and the combined searchScore. Computed fields are read-only and cannot be set in create/update operations.

## Usage

```bash
agentic-db goals-chunk list
agentic-db goals-chunk list --where.<field>.<op> <value> --orderBy <values>
agentic-db goals-chunk list --limit 10 --after <cursor>
agentic-db goals-chunk find-first --where.<field>.<op> <value>
agentic-db goals-chunk search <query>
agentic-db goals-chunk get --id <UUID>
agentic-db goals-chunk create --goalsId <UUID> --content <String> [--chunkIndex <Int>] [--embedding <Vector>] [--metadata <JSON>]
agentic-db goals-chunk update --id <UUID> [--goalsId <UUID>] [--content <String>] [--chunkIndex <Int>] [--embedding <Vector>] [--metadata <JSON>]
agentic-db goals-chunk delete --id <UUID>
```

## Examples

### List goalsChunk records

```bash
agentic-db goals-chunk list
```

### List goalsChunk records with pagination

```bash
agentic-db goals-chunk list --limit 10 --offset 0
```

### List goalsChunk records with cursor pagination

```bash
agentic-db goals-chunk list --limit 10 --after <cursor>
```

### Find first matching goalsChunk

```bash
agentic-db goals-chunk find-first --where.id.equalTo <value>
```

### List goalsChunk records with field selection

```bash
agentic-db goals-chunk list --select id,id
```

### List goalsChunk records with filtering and ordering

```bash
agentic-db goals-chunk list --where.id.equalTo <value> --orderBy ID_ASC
```

### Vector similarity search via `embedding` (manual vector)

```bash
# Pass a pre-computed vector array via dot-notation
agentic-db goals-chunk list --where.embedding.vector '[0.1,0.2,0.3]' --where.embedding.distance 1.0 --select title,embeddingVectorDistance
```

### Vector semantic search via `embedding` with --auto-embed

```bash
# --auto-embed converts text to vectors using the configured embedder (e.g. Ollama nomic-embed-text)
EMBEDDER_PROVIDER=ollama agentic-db goals-chunk search "semantic query" --auto-embed --select title,embeddingVectorDistance
EMBEDDER_PROVIDER=ollama agentic-db goals-chunk list --where.embedding.vector "semantic query" --auto-embed --select title,embeddingVectorDistance
```

### Create/update with auto-embedded `embedding` via --auto-embed

```bash
# --auto-embed on create/update converts text strings in vector fields to embeddings before saving
EMBEDDER_PROVIDER=ollama agentic-db goals-chunk create --embedding "text to embed" --auto-embed
EMBEDDER_PROVIDER=ollama agentic-db goals-chunk update --embedding "new text to embed" --auto-embed
```

### Search with pagination and field projection

```bash
agentic-db goals-chunk list --where.fullTextSearch "query" --limit 10 --select id,title,searchScore
agentic-db goals-chunk search "query" --limit 10 --select id,title,searchScore
```

### Create a goalsChunk

```bash
agentic-db goals-chunk create --goalsId <UUID> --content <String> [--chunkIndex <Int>] [--embedding <Vector>] [--metadata <JSON>]
```

### Get a goalsChunk by id

```bash
agentic-db goals-chunk get --id <value>
```
