# skill

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for Skill records via agentic-db CLI

**pgvector embedding fields:** `embedding`, `intentTriggerEmbedding`
High-dimensional vector columns for semantic similarity search. Query via the Unified Search API pgvector adapter using cosine, L2, or inner-product distance. Supports chunk-aware search: set `includeChunks: true` in VectorNearbyInput to transparently query across parent and chunk embeddings, returning the minimum distance.

**Unified Search API fields:** `embeddingTextBm25Score`, `nameTrgmSimilarity`, `descriptionTrgmSimilarity`, `categoryTrgmSimilarity`, `implementationTrgmSimilarity`, `intentTriggerTrgmSimilarity`, `embeddingTextTrgmSimilarity`, `searchScore`
Fields provided by the Unified Search plugin. Includes full-text search (tsvector/BM25), trigram similarity scores, and the combined searchScore. Computed fields are read-only and cannot be set in create/update operations.

## Usage

```bash
agentic-db skill list
agentic-db skill list --where.<field>.<op> <value> --orderBy <values>
agentic-db skill list --limit 10 --after <cursor>
agentic-db skill find-first --where.<field>.<op> <value>
agentic-db skill search <query>
agentic-db skill get --id <UUID>
agentic-db skill create --name <String> --agentId <UUID> [--description <String>] [--category <String>] [--implementation <String>] [--config <JSON>] [--isActive <Boolean>] [--intentTrigger <String>] [--embeddingText <String>] [--embedding <Vector>] [--embeddingStale <Boolean>] [--intentTriggerEmbedding <Vector>]
agentic-db skill update --id <UUID> [--name <String>] [--description <String>] [--category <String>] [--implementation <String>] [--config <JSON>] [--isActive <Boolean>] [--intentTrigger <String>] [--embeddingText <String>] [--embedding <Vector>] [--embeddingStale <Boolean>] [--intentTriggerEmbedding <Vector>] [--agentId <UUID>]
agentic-db skill delete --id <UUID>
```

## Examples

### List skill records

```bash
agentic-db skill list
```

### List skill records with pagination

```bash
agentic-db skill list --limit 10 --offset 0
```

### List skill records with cursor pagination

```bash
agentic-db skill list --limit 10 --after <cursor>
```

### Find first matching skill

```bash
agentic-db skill find-first --where.id.equalTo <value>
```

### List skill records with field selection

```bash
agentic-db skill list --select id,id
```

### List skill records with filtering and ordering

```bash
agentic-db skill list --where.id.equalTo <value> --orderBy ID_ASC
```

### Vector similarity search via `embedding` (manual vector)

```bash
# Pass a pre-computed vector array via dot-notation
agentic-db skill list --where.embedding.vector '[0.1,0.2,0.3]' --where.embedding.distance 1.0 --select title,embeddingVectorDistance
```

### Vector semantic search via `embedding` with --auto-embed

```bash
# --auto-embed converts text to vectors using the configured embedder (e.g. Ollama nomic-embed-text)
EMBEDDER_PROVIDER=ollama agentic-db skill search "semantic query" --auto-embed --select title,embeddingVectorDistance
EMBEDDER_PROVIDER=ollama agentic-db skill list --where.embedding.vector "semantic query" --auto-embed --select title,embeddingVectorDistance
```

### Create/update with auto-embedded `embedding` via --auto-embed

```bash
# --auto-embed on create/update converts text strings in vector fields to embeddings before saving
EMBEDDER_PROVIDER=ollama agentic-db skill create --embedding "text to embed" --auto-embed
EMBEDDER_PROVIDER=ollama agentic-db skill update --embedding "new text to embed" --auto-embed
```

### Vector similarity search via `intentTriggerEmbedding` (manual vector)

```bash
# Pass a pre-computed vector array via dot-notation
agentic-db skill list --where.intentTriggerEmbedding.vector '[0.1,0.2,0.3]' --where.intentTriggerEmbedding.distance 1.0 --select title,intentTriggerEmbeddingVectorDistance
```

### Vector semantic search via `intentTriggerEmbedding` with --auto-embed

```bash
# --auto-embed converts text to vectors using the configured embedder (e.g. Ollama nomic-embed-text)
EMBEDDER_PROVIDER=ollama agentic-db skill search "semantic query" --auto-embed --select title,intentTriggerEmbeddingVectorDistance
EMBEDDER_PROVIDER=ollama agentic-db skill list --where.intentTriggerEmbedding.vector "semantic query" --auto-embed --select title,intentTriggerEmbeddingVectorDistance
```

### Create/update with auto-embedded `intentTriggerEmbedding` via --auto-embed

```bash
# --auto-embed on create/update converts text strings in vector fields to embeddings before saving
EMBEDDER_PROVIDER=ollama agentic-db skill create --intentTriggerEmbedding "text to embed" --auto-embed
EMBEDDER_PROVIDER=ollama agentic-db skill update --intentTriggerEmbedding "new text to embed" --auto-embed
```

### BM25 keyword search via `bm25EmbeddingText`

```bash
agentic-db skill list --where.bm25EmbeddingText.query "search query" --select title,embeddingTextBm25Score
```

### Fuzzy search via trigram similarity (`trgmName`)

```bash
agentic-db skill list --where.trgmName.value "approximate query" --where.trgmName.threshold 0.3 --select title,nameTrgmSimilarity
```

### Fuzzy search via trigram similarity (`trgmDescription`)

```bash
agentic-db skill list --where.trgmDescription.value "approximate query" --where.trgmDescription.threshold 0.3 --select title,descriptionTrgmSimilarity
```

### Fuzzy search via trigram similarity (`trgmCategory`)

```bash
agentic-db skill list --where.trgmCategory.value "approximate query" --where.trgmCategory.threshold 0.3 --select title,categoryTrgmSimilarity
```

### Fuzzy search via trigram similarity (`trgmImplementation`)

```bash
agentic-db skill list --where.trgmImplementation.value "approximate query" --where.trgmImplementation.threshold 0.3 --select title,implementationTrgmSimilarity
```

### Fuzzy search via trigram similarity (`trgmIntentTrigger`)

```bash
agentic-db skill list --where.trgmIntentTrigger.value "approximate query" --where.trgmIntentTrigger.threshold 0.3 --select title,intentTriggerTrgmSimilarity
```

### Fuzzy search via trigram similarity (`trgmEmbeddingText`)

```bash
agentic-db skill list --where.trgmEmbeddingText.value "approximate query" --where.trgmEmbeddingText.threshold 0.3 --select title,embeddingTextTrgmSimilarity
```

### Composite search (unifiedSearch dispatches to all text adapters)

```bash
agentic-db skill list --where.unifiedSearch "search query" --select title,embeddingTextBm25Score,nameTrgmSimilarity,descriptionTrgmSimilarity,categoryTrgmSimilarity,implementationTrgmSimilarity,intentTriggerTrgmSimilarity,embeddingTextTrgmSimilarity,searchScore
```

### Search with pagination and field projection

```bash
agentic-db skill list --where.unifiedSearch "query" --limit 10 --select id,title,searchScore
agentic-db skill search "query" --limit 10 --select id,title,searchScore
```

### Create a skill

```bash
agentic-db skill create --name <String> --agentId <UUID> [--description <String>] [--category <String>] [--implementation <String>] [--config <JSON>] [--isActive <Boolean>] [--intentTrigger <String>] [--embeddingText <String>] [--embedding <Vector>] [--embeddingStale <Boolean>] [--intentTriggerEmbedding <Vector>]
```

### Get a skill by id

```bash
agentic-db skill get --id <value>
```
