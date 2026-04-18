# contactLink

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for ContactLink records via agentic-db CLI

**pgvector embedding fields:** `embedding`
High-dimensional vector columns for semantic similarity search. Query via the Unified Search API pgvector adapter using cosine, L2, or inner-product distance. Supports chunk-aware search: set `includeChunks: true` in VectorNearbyInput to transparently query across parent and chunk embeddings, returning the minimum distance.

**Unified Search API fields:** `searchScore`
Fields provided by the Unified Search plugin. Includes full-text search (tsvector/BM25), trigram similarity scores, and the combined searchScore. Computed fields are read-only and cannot be set in create/update operations.

## Usage

```bash
agentic-db contact-link list
agentic-db contact-link list --where.<field>.<op> <value> --orderBy <values>
agentic-db contact-link list --limit 10 --after <cursor>
agentic-db contact-link find-first --where.<field>.<op> <value>
agentic-db contact-link search <query>
agentic-db contact-link get --id <UUID>
agentic-db contact-link create --url <String> --contactId <UUID> [--title <String>] [--embedding <Vector>] [--embeddingStale <Boolean>]
agentic-db contact-link update --id <UUID> [--title <String>] [--url <String>] [--embedding <Vector>] [--embeddingStale <Boolean>] [--contactId <UUID>]
agentic-db contact-link delete --id <UUID>
```

## Examples

### List contactLink records

```bash
agentic-db contact-link list
```

### List contactLink records with pagination

```bash
agentic-db contact-link list --limit 10 --offset 0
```

### List contactLink records with cursor pagination

```bash
agentic-db contact-link list --limit 10 --after <cursor>
```

### Find first matching contactLink

```bash
agentic-db contact-link find-first --where.id.equalTo <value>
```

### List contactLink records with field selection

```bash
agentic-db contact-link list --select id,id
```

### List contactLink records with filtering and ordering

```bash
agentic-db contact-link list --where.id.equalTo <value> --orderBy ID_ASC
```

### Vector similarity search via `embedding` (manual vector)

```bash
# Pass a pre-computed vector array via dot-notation
agentic-db contact-link list --where.embedding.vector '[0.1,0.2,0.3]' --where.embedding.distance 1.0 --select title,embeddingVectorDistance
```

### Vector semantic search via `embedding` with --auto-embed

```bash
# --auto-embed converts text to vectors using the configured embedder (e.g. Ollama nomic-embed-text)
EMBEDDER_PROVIDER=ollama agentic-db contact-link search "semantic query" --auto-embed --select title,embeddingVectorDistance
EMBEDDER_PROVIDER=ollama agentic-db contact-link list --where.embedding.vector "semantic query" --auto-embed --select title,embeddingVectorDistance
```

### Create/update with auto-embedded `embedding` via --auto-embed

```bash
# --auto-embed on create/update converts text strings in vector fields to embeddings before saving
EMBEDDER_PROVIDER=ollama agentic-db contact-link create --embedding "text to embed" --auto-embed
EMBEDDER_PROVIDER=ollama agentic-db contact-link update --embedding "new text to embed" --auto-embed
```

### Search with pagination and field projection

```bash
agentic-db contact-link list --where.unifiedSearch "query" --limit 10 --select id,title,searchScore
agentic-db contact-link search "query" --limit 10 --select id,title,searchScore
```

### Create a contactLink

```bash
agentic-db contact-link create --url <String> --contactId <UUID> [--title <String>] [--embedding <Vector>] [--embeddingStale <Boolean>]
```

### Get a contactLink by id

```bash
agentic-db contact-link get --id <value>
```
