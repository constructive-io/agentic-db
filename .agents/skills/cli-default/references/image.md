# image

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for Image records via agentic-db CLI

**pgvector embedding fields:** `embedding`
High-dimensional vector columns for semantic similarity search. Query via the Unified Search API pgvector adapter using cosine, L2, or inner-product distance. Supports chunk-aware search: set `includeChunks: true` in VectorNearbyInput to transparently query across parent and chunk embeddings, returning the minimum distance.

**Unified Search API fields:** `searchScore`
Fields provided by the Unified Search plugin. Includes full-text search (tsvector/BM25), trigram similarity scores, and the combined searchScore. Computed fields are read-only and cannot be set in create/update operations.

## Usage

```bash
agentic-db image list
agentic-db image list --where.<field>.<op> <value> --orderBy <values>
agentic-db image list --limit 10 --after <cursor>
agentic-db image find-first --where.<field>.<op> <value>
agentic-db image search <query>
agentic-db image get --id <UUID>
agentic-db image create --url <String> [--meta <JSON>] [--altText <String>] [--caption <String>] [--embedding <Vector>] [--embeddingStale <Boolean>]
agentic-db image update --id <UUID> [--url <String>] [--meta <JSON>] [--altText <String>] [--caption <String>] [--embedding <Vector>] [--embeddingStale <Boolean>]
agentic-db image delete --id <UUID>
```

## Examples

### List image records

```bash
agentic-db image list
```

### List image records with pagination

```bash
agentic-db image list --limit 10 --offset 0
```

### List image records with cursor pagination

```bash
agentic-db image list --limit 10 --after <cursor>
```

### Find first matching image

```bash
agentic-db image find-first --where.id.equalTo <value>
```

### List image records with field selection

```bash
agentic-db image list --select id,id
```

### List image records with filtering and ordering

```bash
agentic-db image list --where.id.equalTo <value> --orderBy ID_ASC
```

### Vector similarity search via `embedding` (manual vector)

```bash
# Pass a pre-computed vector array via dot-notation
agentic-db image list --where.embedding.vector '[0.1,0.2,0.3]' --where.embedding.distance 1.0 --select title,embeddingVectorDistance
```

### Vector semantic search via `embedding` with --auto-embed

```bash
# --auto-embed converts text to vectors using the configured embedder (e.g. Ollama nomic-embed-text)
EMBEDDER_PROVIDER=ollama agentic-db image search "semantic query" --auto-embed --select title,embeddingVectorDistance
EMBEDDER_PROVIDER=ollama agentic-db image list --where.embedding.vector "semantic query" --auto-embed --select title,embeddingVectorDistance
```

### Create/update with auto-embedded `embedding` via --auto-embed

```bash
# --auto-embed on create/update converts text strings in vector fields to embeddings before saving
EMBEDDER_PROVIDER=ollama agentic-db image create --embedding "text to embed" --auto-embed
EMBEDDER_PROVIDER=ollama agentic-db image update --embedding "new text to embed" --auto-embed
```

### Search with pagination and field projection

```bash
agentic-db image list --where.unifiedSearch "query" --limit 10 --select id,title,searchScore
agentic-db image search "query" --limit 10 --select id,title,searchScore
```

### Create a image

```bash
agentic-db image create --url <String> [--meta <JSON>] [--altText <String>] [--caption <String>] [--embedding <Vector>] [--embeddingStale <Boolean>]
```

### Get a image by id

```bash
agentic-db image get --id <value>
```
