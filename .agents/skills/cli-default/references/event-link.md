# eventLink

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for EventLink records via agentic-db CLI

**pgvector embedding fields:** `embedding`
High-dimensional vector columns for semantic similarity search. Query via the Unified Search API pgvector adapter using cosine, L2, or inner-product distance. Supports chunk-aware search: set `includeChunks: true` in VectorNearbyInput to transparently query across parent and chunk embeddings, returning the minimum distance.

**Unified Search API fields:** `searchScore`
Fields provided by the Unified Search plugin. Includes full-text search (tsvector/BM25), trigram similarity scores, and the combined searchScore. Computed fields are read-only and cannot be set in create/update operations.

## Usage

```bash
agentic-db event-link list
agentic-db event-link list --where.<field>.<op> <value> --orderBy <values>
agentic-db event-link list --limit 10 --after <cursor>
agentic-db event-link find-first --where.<field>.<op> <value>
agentic-db event-link search <query>
agentic-db event-link get --id <UUID>
agentic-db event-link create --url <String> --eventId <UUID> [--title <String>] [--embedding <Vector>] [--embeddingStale <Boolean>]
agentic-db event-link update --id <UUID> [--title <String>] [--url <String>] [--embedding <Vector>] [--embeddingStale <Boolean>] [--eventId <UUID>]
agentic-db event-link delete --id <UUID>
```

## Examples

### List eventLink records

```bash
agentic-db event-link list
```

### List eventLink records with pagination

```bash
agentic-db event-link list --limit 10 --offset 0
```

### List eventLink records with cursor pagination

```bash
agentic-db event-link list --limit 10 --after <cursor>
```

### Find first matching eventLink

```bash
agentic-db event-link find-first --where.id.equalTo <value>
```

### List eventLink records with field selection

```bash
agentic-db event-link list --select id,id
```

### List eventLink records with filtering and ordering

```bash
agentic-db event-link list --where.id.equalTo <value> --orderBy ID_ASC
```

### Vector similarity search via `embedding` (manual vector)

```bash
# Pass a pre-computed vector array via dot-notation
agentic-db event-link list --where.embedding.vector '[0.1,0.2,0.3]' --where.embedding.distance 1.0 --select title,embeddingVectorDistance
```

### Vector semantic search via `embedding` with --auto-embed

```bash
# --auto-embed converts text to vectors using the configured embedder (e.g. Ollama nomic-embed-text)
EMBEDDER_PROVIDER=ollama agentic-db event-link search "semantic query" --auto-embed --select title,embeddingVectorDistance
EMBEDDER_PROVIDER=ollama agentic-db event-link list --where.embedding.vector "semantic query" --auto-embed --select title,embeddingVectorDistance
```

### Create/update with auto-embedded `embedding` via --auto-embed

```bash
# --auto-embed on create/update converts text strings in vector fields to embeddings before saving
EMBEDDER_PROVIDER=ollama agentic-db event-link create --embedding "text to embed" --auto-embed
EMBEDDER_PROVIDER=ollama agentic-db event-link update --embedding "new text to embed" --auto-embed
```

### Search with pagination and field projection

```bash
agentic-db event-link list --where.unifiedSearch "query" --limit 10 --select id,title,searchScore
agentic-db event-link search "query" --limit 10 --select id,title,searchScore
```

### Create a eventLink

```bash
agentic-db event-link create --url <String> --eventId <UUID> [--title <String>] [--embedding <Vector>] [--embeddingStale <Boolean>]
```

### Get a eventLink by id

```bash
agentic-db event-link get --id <value>
```
