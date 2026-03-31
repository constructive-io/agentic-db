# rule

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for Rule records via agentic-db CLI

**pgvector embedding fields:** `embedding`, `triggerConceptEmbedding`
High-dimensional vector columns for semantic similarity search. Query via the Unified Search API pgvector adapter using cosine, L2, or inner-product distance. Supports chunk-aware search: set `includeChunks: true` in VectorNearbyInput to transparently query across parent and chunk embeddings, returning the minimum distance.

**Unified Search API fields:** `embeddingTextBm25Score`, `nameTrgmSimilarity`, `descriptionTrgmSimilarity`, `triggerTypeTrgmSimilarity`, `actionTypeTrgmSimilarity`, `triggerConceptTrgmSimilarity`, `embeddingTextTrgmSimilarity`, `searchScore`
Fields provided by the Unified Search plugin. Includes full-text search (tsvector/BM25), trigram similarity scores, and the combined searchScore. Computed fields are read-only and cannot be set in create/update operations.

## Usage

```bash
agentic-db rule list
agentic-db rule list --where.<field>.<op> <value> --orderBy <values>
agentic-db rule list --limit 10 --after <cursor>
agentic-db rule find-first --where.<field>.<op> <value>
agentic-db rule search <query>
agentic-db rule get --id <UUID>
agentic-db rule create --entityId <UUID> --name <String> --agentId <UUID> [--description <String>] [--triggerType <String>] [--triggerConfig <JSON>] [--actionType <String>] [--actionConfig <JSON>] [--isActive <Boolean>] [--priority <Int>] [--triggerConcept <String>] [--embeddingText <String>] [--embedding <Vector>] [--embeddingStale <Boolean>] [--triggerConceptEmbedding <Vector>]
agentic-db rule update --id <UUID> [--entityId <UUID>] [--name <String>] [--description <String>] [--triggerType <String>] [--triggerConfig <JSON>] [--actionType <String>] [--actionConfig <JSON>] [--isActive <Boolean>] [--priority <Int>] [--triggerConcept <String>] [--embeddingText <String>] [--embedding <Vector>] [--embeddingStale <Boolean>] [--triggerConceptEmbedding <Vector>] [--agentId <UUID>]
agentic-db rule delete --id <UUID>
```

## Examples

### List rule records

```bash
agentic-db rule list
```

### List rule records with pagination

```bash
agentic-db rule list --limit 10 --offset 0
```

### List rule records with cursor pagination

```bash
agentic-db rule list --limit 10 --after <cursor>
```

### Find first matching rule

```bash
agentic-db rule find-first --where.id.equalTo <value>
```

### List rule records with field selection

```bash
agentic-db rule list --select id,id
```

### List rule records with filtering and ordering

```bash
agentic-db rule list --where.id.equalTo <value> --orderBy ID_ASC
```

### Vector similarity search via `embedding` (manual vector)

```bash
# Pass a pre-computed vector array via dot-notation
agentic-db rule list --where.embedding.vector '[0.1,0.2,0.3]' --where.embedding.distance 1.0 --select title,embeddingVectorDistance
```

### Vector semantic search via `embedding` with --auto-embed

```bash
# --auto-embed converts text to vectors using the configured embedder (e.g. Ollama nomic-embed-text)
EMBEDDER_PROVIDER=ollama agentic-db rule search "semantic query" --auto-embed --select title,embeddingVectorDistance
EMBEDDER_PROVIDER=ollama agentic-db rule list --where.embedding.vector "semantic query" --auto-embed --select title,embeddingVectorDistance
```

### Create/update with auto-embedded `embedding` via --auto-embed

```bash
# --auto-embed on create/update converts text strings in vector fields to embeddings before saving
EMBEDDER_PROVIDER=ollama agentic-db rule create --embedding "text to embed" --auto-embed
EMBEDDER_PROVIDER=ollama agentic-db rule update --embedding "new text to embed" --auto-embed
```

### Vector similarity search via `triggerConceptEmbedding` (manual vector)

```bash
# Pass a pre-computed vector array via dot-notation
agentic-db rule list --where.triggerConceptEmbedding.vector '[0.1,0.2,0.3]' --where.triggerConceptEmbedding.distance 1.0 --select title,triggerConceptEmbeddingVectorDistance
```

### Vector semantic search via `triggerConceptEmbedding` with --auto-embed

```bash
# --auto-embed converts text to vectors using the configured embedder (e.g. Ollama nomic-embed-text)
EMBEDDER_PROVIDER=ollama agentic-db rule search "semantic query" --auto-embed --select title,triggerConceptEmbeddingVectorDistance
EMBEDDER_PROVIDER=ollama agentic-db rule list --where.triggerConceptEmbedding.vector "semantic query" --auto-embed --select title,triggerConceptEmbeddingVectorDistance
```

### Create/update with auto-embedded `triggerConceptEmbedding` via --auto-embed

```bash
# --auto-embed on create/update converts text strings in vector fields to embeddings before saving
EMBEDDER_PROVIDER=ollama agentic-db rule create --triggerConceptEmbedding "text to embed" --auto-embed
EMBEDDER_PROVIDER=ollama agentic-db rule update --triggerConceptEmbedding "new text to embed" --auto-embed
```

### BM25 keyword search via `bm25EmbeddingText`

```bash
agentic-db rule list --where.bm25EmbeddingText.query "search query" --select title,embeddingTextBm25Score
```

### Fuzzy search via trigram similarity (`trgmName`)

```bash
agentic-db rule list --where.trgmName.value "approximate query" --where.trgmName.threshold 0.3 --select title,nameTrgmSimilarity
```

### Fuzzy search via trigram similarity (`trgmDescription`)

```bash
agentic-db rule list --where.trgmDescription.value "approximate query" --where.trgmDescription.threshold 0.3 --select title,descriptionTrgmSimilarity
```

### Fuzzy search via trigram similarity (`trgmTriggerType`)

```bash
agentic-db rule list --where.trgmTriggerType.value "approximate query" --where.trgmTriggerType.threshold 0.3 --select title,triggerTypeTrgmSimilarity
```

### Fuzzy search via trigram similarity (`trgmActionType`)

```bash
agentic-db rule list --where.trgmActionType.value "approximate query" --where.trgmActionType.threshold 0.3 --select title,actionTypeTrgmSimilarity
```

### Fuzzy search via trigram similarity (`trgmTriggerConcept`)

```bash
agentic-db rule list --where.trgmTriggerConcept.value "approximate query" --where.trgmTriggerConcept.threshold 0.3 --select title,triggerConceptTrgmSimilarity
```

### Fuzzy search via trigram similarity (`trgmEmbeddingText`)

```bash
agentic-db rule list --where.trgmEmbeddingText.value "approximate query" --where.trgmEmbeddingText.threshold 0.3 --select title,embeddingTextTrgmSimilarity
```

### Composite search (fullTextSearch dispatches to all text adapters)

```bash
agentic-db rule list --where.fullTextSearch "search query" --select title,embeddingTextBm25Score,nameTrgmSimilarity,descriptionTrgmSimilarity,triggerTypeTrgmSimilarity,actionTypeTrgmSimilarity,triggerConceptTrgmSimilarity,embeddingTextTrgmSimilarity,searchScore
```

### Search with pagination and field projection

```bash
agentic-db rule list --where.fullTextSearch "query" --limit 10 --select id,title,searchScore
agentic-db rule search "query" --limit 10 --select id,title,searchScore
```

### Create a rule

```bash
agentic-db rule create --entityId <UUID> --name <String> --agentId <UUID> [--description <String>] [--triggerType <String>] [--triggerConfig <JSON>] [--actionType <String>] [--actionConfig <JSON>] [--isActive <Boolean>] [--priority <Int>] [--triggerConcept <String>] [--embeddingText <String>] [--embedding <Vector>] [--embeddingStale <Boolean>] [--triggerConceptEmbedding <Vector>]
```

### Get a rule by id

```bash
agentic-db rule get --id <value>
```
