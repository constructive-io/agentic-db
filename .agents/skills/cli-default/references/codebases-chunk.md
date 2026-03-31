# codebasesChunk

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for CodebasesChunk records via agentic-db CLI

**pgvector embedding fields:** `embedding`
High-dimensional vector columns for semantic similarity search. Query via the Unified Search API pgvector adapter using cosine, L2, or inner-product distance. Supports chunk-aware search: set `includeChunks: true` in VectorNearbyInput to transparently query across parent and chunk embeddings, returning the minimum distance.

**Unified Search API fields:** `searchScore`
Fields provided by the Unified Search plugin. Includes full-text search (tsvector/BM25), trigram similarity scores, and the combined searchScore. Computed fields are read-only and cannot be set in create/update operations.

## Usage

```bash
agentic-db codebases-chunk list
agentic-db codebases-chunk list --where.<field>.<op> <value> --orderBy <values>
agentic-db codebases-chunk list --limit 10 --after <cursor>
agentic-db codebases-chunk find-first --where.<field>.<op> <value>
agentic-db codebases-chunk search <query>
agentic-db codebases-chunk get --id <UUID>
agentic-db codebases-chunk create --codebasesId <UUID> --content <String> [--chunkIndex <Int>] [--embedding <Vector>] [--metadata <JSON>]
agentic-db codebases-chunk update --id <UUID> [--codebasesId <UUID>] [--content <String>] [--chunkIndex <Int>] [--embedding <Vector>] [--metadata <JSON>]
agentic-db codebases-chunk delete --id <UUID>
```

## Examples

### List codebasesChunk records

```bash
agentic-db codebases-chunk list
```

### List codebasesChunk records with pagination

```bash
agentic-db codebases-chunk list --limit 10 --offset 0
```

### List codebasesChunk records with cursor pagination

```bash
agentic-db codebases-chunk list --limit 10 --after <cursor>
```

### Find first matching codebasesChunk

```bash
agentic-db codebases-chunk find-first --where.id.equalTo <value>
```

### List codebasesChunk records with field selection

```bash
agentic-db codebases-chunk list --select id,id
```

### List codebasesChunk records with filtering and ordering

```bash
agentic-db codebases-chunk list --where.id.equalTo <value> --orderBy ID_ASC
```

### Vector similarity search via `embedding` (manual vector)

```bash
# Pass a pre-computed vector array via dot-notation
agentic-db codebases-chunk list --where.embedding.vector '[0.1,0.2,0.3]' --where.embedding.distance 1.0 --select title,embeddingVectorDistance
```

### Vector semantic search via `embedding` with --auto-embed

```bash
# --auto-embed converts text to vectors using the configured embedder (e.g. Ollama nomic-embed-text)
EMBEDDER_PROVIDER=ollama agentic-db codebases-chunk search "semantic query" --auto-embed --select title,embeddingVectorDistance
EMBEDDER_PROVIDER=ollama agentic-db codebases-chunk list --where.embedding.vector "semantic query" --auto-embed --select title,embeddingVectorDistance
```

### Create/update with auto-embedded `embedding` via --auto-embed

```bash
# --auto-embed on create/update converts text strings in vector fields to embeddings before saving
EMBEDDER_PROVIDER=ollama agentic-db codebases-chunk create --embedding "text to embed" --auto-embed
EMBEDDER_PROVIDER=ollama agentic-db codebases-chunk update --embedding "new text to embed" --auto-embed
```

### Search with pagination and field projection

```bash
agentic-db codebases-chunk list --where.fullTextSearch "query" --limit 10 --select id,title,searchScore
agentic-db codebases-chunk search "query" --limit 10 --select id,title,searchScore
```

### Create a codebasesChunk

```bash
agentic-db codebases-chunk create --codebasesId <UUID> --content <String> [--chunkIndex <Int>] [--embedding <Vector>] [--metadata <JSON>]
```

### Get a codebasesChunk by id

```bash
agentic-db codebases-chunk get --id <value>
```
