# email

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for Email records via agentic-db CLI

**pgvector embedding fields:** `embedding`
High-dimensional vector columns for semantic similarity search. Query via the Unified Search API pgvector adapter using cosine, L2, or inner-product distance. Supports chunk-aware search: set `includeChunks: true` in VectorNearbyInput to transparently query across parent and chunk embeddings, returning the minimum distance.

**Unified Search API fields:** `searchTsv`
Fields provided by the Unified Search plugin. Includes full-text search (tsvector/BM25), trigram similarity scores, and the combined searchScore. Computed fields are read-only and cannot be set in create/update operations.

## Usage

```bash
agentic-db email list
agentic-db email list --where.<field>.<op> <value> --orderBy <values>
agentic-db email list --limit 10 --after <cursor>
agentic-db email find-first --where.<field>.<op> <value>
agentic-db email search <query>
agentic-db email get --id <UUID>
agentic-db email create --emailThreadId <UUID> [--providerMessageId <String>] [--fromContactId <UUID>] [--to <JSON>] [--cc <JSON>] [--bcc <JSON>] [--subject <String>] [--bodyText <String>] [--bodyHtml <String>] [--sentAt <Datetime>] [--tags <String>] [--embeddingText <String>] [--embedding <Vector>] [--embeddingStale <Boolean>]
agentic-db email update --id <UUID> [--providerMessageId <String>] [--fromContactId <UUID>] [--to <JSON>] [--cc <JSON>] [--bcc <JSON>] [--subject <String>] [--bodyText <String>] [--bodyHtml <String>] [--sentAt <Datetime>] [--tags <String>] [--embeddingText <String>] [--embedding <Vector>] [--embeddingStale <Boolean>] [--emailThreadId <UUID>]
agentic-db email delete --id <UUID>
```

## Examples

### List email records

```bash
agentic-db email list
```

### List email records with pagination

```bash
agentic-db email list --limit 10 --offset 0
```

### List email records with cursor pagination

```bash
agentic-db email list --limit 10 --after <cursor>
```

### Find first matching email

```bash
agentic-db email find-first --where.id.equalTo <value>
```

### List email records with field selection

```bash
agentic-db email list --select id,id
```

### List email records with filtering and ordering

```bash
agentic-db email list --where.id.equalTo <value> --orderBy ID_ASC
```

### Vector similarity search via `embedding` (manual vector)

```bash
# Pass a pre-computed vector array via dot-notation
agentic-db email list --where.embedding.vector '[0.1,0.2,0.3]' --where.embedding.distance 1.0 --select title,embeddingVectorDistance
```

### Vector semantic search via `embedding` with --auto-embed

```bash
# --auto-embed converts text to vectors using the configured embedder (e.g. Ollama nomic-embed-text)
EMBEDDER_PROVIDER=ollama agentic-db email search "semantic query" --auto-embed --select title,embeddingVectorDistance
EMBEDDER_PROVIDER=ollama agentic-db email list --where.embedding.vector "semantic query" --auto-embed --select title,embeddingVectorDistance
```

### Create/update with auto-embedded `embedding` via --auto-embed

```bash
# --auto-embed on create/update converts text strings in vector fields to embeddings before saving
EMBEDDER_PROVIDER=ollama agentic-db email create --embedding "text to embed" --auto-embed
EMBEDDER_PROVIDER=ollama agentic-db email update --embedding "new text to embed" --auto-embed
```

### Full-text search via tsvector (`searchTsv`)

```bash
agentic-db email list --where.searchTsv "search query" --select title,tsvRank
```

### Composite search (fullTextSearch dispatches to all text adapters)

```bash
agentic-db email list --where.fullTextSearch "search query" --select title,tsvRank
```

### Search with pagination and field projection

```bash
agentic-db email list --where.fullTextSearch "query" --limit 10 --select id,title,searchScore
agentic-db email search "query" --limit 10 --select id,title,searchScore
```

### Create a email

```bash
agentic-db email create --emailThreadId <UUID> [--providerMessageId <String>] [--fromContactId <UUID>] [--to <JSON>] [--cc <JSON>] [--bcc <JSON>] [--subject <String>] [--bodyText <String>] [--bodyHtml <String>] [--sentAt <Datetime>] [--tags <String>] [--embeddingText <String>] [--embedding <Vector>] [--embeddingStale <Boolean>]
```

### Get a email by id

```bash
agentic-db email get --id <value>
```
