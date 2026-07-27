# contact

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for Contact records via agentic-db CLI

**pgvector embedding fields:** `embedding`
High-dimensional vector columns for semantic similarity search. Query via the Unified Search API pgvector adapter using cosine, L2, or inner-product distance. Supports chunk-aware search: set `includeChunks: true` in VectorNearbyInput to transparently query across parent and chunk embeddings, returning the minimum distance.

**Unified Search API fields:** `searchTsv`, `embeddingTextBm25Score`, `firstNameTrgmSimilarity`, `lastNameTrgmSimilarity`, `emailTrgmSimilarity`, `phoneTrgmSimilarity`, `headlineTrgmSimilarity`, `bioTrgmSimilarity`, `locationTrgmSimilarity`, `howWeMetTrgmSimilarity`, `embeddingTextTrgmSimilarity`, `searchScore`
Fields provided by the Unified Search plugin. Includes full-text search (tsvector/BM25), trigram similarity scores, and the combined searchScore. Computed fields are read-only and cannot be set in create/update operations.

## Usage

```bash
agentic-db contact list
agentic-db contact list --where.<field>.<op> <value> --orderBy <values>
agentic-db contact list --limit 10 --after <cursor>
agentic-db contact find-first --where.<field>.<op> <value>
agentic-db contact search <query>
agentic-db contact get --id <UUID>
agentic-db contact create --firstName <String> [--lastName <String>] [--email <String>] [--phone <String>] [--headline <String>] [--bio <String>] [--location <String>] [--birthday <Date>] [--relationshipTypes <String>] [--howWeMet <String>] [--tags <String>] [--mainImageId <UUID>] [--embeddingText <String>] [--embedding <Vector>] [--embeddingUpdatedAt <Datetime>] [--locationGeo <GeographyInterface>]
agentic-db contact update --id <UUID> [--firstName <String>] [--lastName <String>] [--email <String>] [--phone <String>] [--headline <String>] [--bio <String>] [--location <String>] [--birthday <Date>] [--relationshipTypes <String>] [--howWeMet <String>] [--tags <String>] [--mainImageId <UUID>] [--embeddingText <String>] [--embedding <Vector>] [--embeddingUpdatedAt <Datetime>] [--locationGeo <GeographyInterface>]
agentic-db contact delete --id <UUID>
```

## Examples

### List contact records

```bash
agentic-db contact list
```

### List contact records with pagination

```bash
agentic-db contact list --limit 10 --offset 0
```

### List contact records with cursor pagination

```bash
agentic-db contact list --limit 10 --after <cursor>
```

### Find first matching contact

```bash
agentic-db contact find-first --where.id.equalTo <value>
```

### List contact records with field selection

```bash
agentic-db contact list --select id,id
```

### List contact records with filtering and ordering

```bash
agentic-db contact list --where.id.equalTo <value> --orderBy ID_ASC
```

### Vector similarity search via `embedding` (manual vector)

```bash
# Pass a pre-computed vector array via dot-notation
agentic-db contact list --where.embedding.vector '[0.1,0.2,0.3]' --where.embedding.distance 1.0 --select title,embeddingVectorDistance
```

### Vector semantic search via `embedding` with --auto-embed

```bash
# --auto-embed converts text to vectors using the configured embedder (e.g. Ollama nomic-embed-text)
EMBEDDER_PROVIDER=ollama agentic-db contact search "semantic query" --auto-embed --select title,embeddingVectorDistance
EMBEDDER_PROVIDER=ollama agentic-db contact list --where.embedding.vector "semantic query" --auto-embed --select title,embeddingVectorDistance
```

### Create/update with auto-embedded `embedding` via --auto-embed

```bash
# --auto-embed on create/update converts text strings in vector fields to embeddings before saving
EMBEDDER_PROVIDER=ollama agentic-db contact create --embedding "text to embed" --auto-embed
EMBEDDER_PROVIDER=ollama agentic-db contact update --embedding "new text to embed" --auto-embed
```

### Full-text search via tsvector (`searchTsv`)

```bash
agentic-db contact list --where.searchTsv "search query" --select title,tsvRank
```

### BM25 keyword search via `bm25EmbeddingText`

```bash
agentic-db contact list --where.bm25EmbeddingText.query "search query" --select title,embeddingTextBm25Score
```

### Fuzzy search via trigram similarity (`trgmFirstName`)

```bash
agentic-db contact list --where.trgmFirstName.value "approximate query" --where.trgmFirstName.threshold 0.3 --select title,firstNameTrgmSimilarity
```

### Fuzzy search via trigram similarity (`trgmLastName`)

```bash
agentic-db contact list --where.trgmLastName.value "approximate query" --where.trgmLastName.threshold 0.3 --select title,lastNameTrgmSimilarity
```

### Fuzzy search via trigram similarity (`trgmEmail`)

```bash
agentic-db contact list --where.trgmEmail.value "approximate query" --where.trgmEmail.threshold 0.3 --select title,emailTrgmSimilarity
```

### Fuzzy search via trigram similarity (`trgmPhone`)

```bash
agentic-db contact list --where.trgmPhone.value "approximate query" --where.trgmPhone.threshold 0.3 --select title,phoneTrgmSimilarity
```

### Fuzzy search via trigram similarity (`trgmHeadline`)

```bash
agentic-db contact list --where.trgmHeadline.value "approximate query" --where.trgmHeadline.threshold 0.3 --select title,headlineTrgmSimilarity
```

### Fuzzy search via trigram similarity (`trgmBio`)

```bash
agentic-db contact list --where.trgmBio.value "approximate query" --where.trgmBio.threshold 0.3 --select title,bioTrgmSimilarity
```

### Fuzzy search via trigram similarity (`trgmLocation`)

```bash
agentic-db contact list --where.trgmLocation.value "approximate query" --where.trgmLocation.threshold 0.3 --select title,locationTrgmSimilarity
```

### Fuzzy search via trigram similarity (`trgmHowWeMet`)

```bash
agentic-db contact list --where.trgmHowWeMet.value "approximate query" --where.trgmHowWeMet.threshold 0.3 --select title,howWeMetTrgmSimilarity
```

### Fuzzy search via trigram similarity (`trgmEmbeddingText`)

```bash
agentic-db contact list --where.trgmEmbeddingText.value "approximate query" --where.trgmEmbeddingText.threshold 0.3 --select title,embeddingTextTrgmSimilarity
```

### Composite search (unifiedSearch dispatches to all text adapters)

```bash
agentic-db contact list --where.unifiedSearch "search query" --select title,tsvRank,embeddingTextBm25Score,firstNameTrgmSimilarity,lastNameTrgmSimilarity,emailTrgmSimilarity,phoneTrgmSimilarity,headlineTrgmSimilarity,bioTrgmSimilarity,locationTrgmSimilarity,howWeMetTrgmSimilarity,embeddingTextTrgmSimilarity,searchScore
```

### Search with pagination and field projection

```bash
agentic-db contact list --where.unifiedSearch "query" --limit 10 --select id,title,searchScore
agentic-db contact search "query" --limit 10 --select id,title,searchScore
```

### Create a contact

```bash
agentic-db contact create --firstName <String> [--lastName <String>] [--email <String>] [--phone <String>] [--headline <String>] [--bio <String>] [--location <String>] [--birthday <Date>] [--relationshipTypes <String>] [--howWeMet <String>] [--tags <String>] [--mainImageId <UUID>] [--embeddingText <String>] [--embedding <Vector>] [--embeddingUpdatedAt <Datetime>] [--locationGeo <GeographyInterface>]
```

### Get a contact by id

```bash
agentic-db contact get --id <value>
```
