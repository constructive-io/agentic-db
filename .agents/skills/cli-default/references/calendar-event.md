# calendarEvent

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for CalendarEvent records via agentic-db CLI

**pgvector embedding fields:** `embedding`
High-dimensional vector columns for semantic similarity search. Query via the Unified Search API pgvector adapter using cosine, L2, or inner-product distance. Supports chunk-aware search: set `includeChunks: true` in VectorNearbyInput to transparently query across parent and chunk embeddings, returning the minimum distance.

**Unified Search API fields:** `searchTsv`, `embeddingTextBm25Score`, `providerEventIdTrgmSimilarity`, `titleTrgmSimilarity`, `descriptionTrgmSimilarity`, `meetingUrlTrgmSimilarity`, `embeddingTextTrgmSimilarity`, `searchScore`
Fields provided by the Unified Search plugin. Includes full-text search (tsvector/BM25), trigram similarity scores, and the combined searchScore. Computed fields are read-only and cannot be set in create/update operations.

## Usage

```bash
agentic-db calendar-event list
agentic-db calendar-event list --where.<field>.<op> <value> --orderBy <values>
agentic-db calendar-event list --limit 10 --after <cursor>
agentic-db calendar-event find-first --where.<field>.<op> <value>
agentic-db calendar-event search <query>
agentic-db calendar-event get --id <UUID>
agentic-db calendar-event create --title <String> --calendarId <UUID> [--providerEventId <String>] [--description <String>] [--startTime <Datetime>] [--endTime <Datetime>] [--meetingUrl <String>] [--organizerContactId <UUID>] [--tags <String>] [--embeddingText <String>] [--embedding <Vector>] [--embeddingStale <Boolean>]
agentic-db calendar-event update --id <UUID> [--providerEventId <String>] [--title <String>] [--description <String>] [--startTime <Datetime>] [--endTime <Datetime>] [--meetingUrl <String>] [--organizerContactId <UUID>] [--tags <String>] [--embeddingText <String>] [--embedding <Vector>] [--embeddingStale <Boolean>] [--calendarId <UUID>]
agentic-db calendar-event delete --id <UUID>
```

## Examples

### List calendarEvent records

```bash
agentic-db calendar-event list
```

### List calendarEvent records with pagination

```bash
agentic-db calendar-event list --limit 10 --offset 0
```

### List calendarEvent records with cursor pagination

```bash
agentic-db calendar-event list --limit 10 --after <cursor>
```

### Find first matching calendarEvent

```bash
agentic-db calendar-event find-first --where.id.equalTo <value>
```

### List calendarEvent records with field selection

```bash
agentic-db calendar-event list --select id,id
```

### List calendarEvent records with filtering and ordering

```bash
agentic-db calendar-event list --where.id.equalTo <value> --orderBy ID_ASC
```

### Vector similarity search via `embedding` (manual vector)

```bash
# Pass a pre-computed vector array via dot-notation
agentic-db calendar-event list --where.embedding.vector '[0.1,0.2,0.3]' --where.embedding.distance 1.0 --select title,embeddingVectorDistance
```

### Vector semantic search via `embedding` with --auto-embed

```bash
# --auto-embed converts text to vectors using the configured embedder (e.g. Ollama nomic-embed-text)
EMBEDDER_PROVIDER=ollama agentic-db calendar-event search "semantic query" --auto-embed --select title,embeddingVectorDistance
EMBEDDER_PROVIDER=ollama agentic-db calendar-event list --where.embedding.vector "semantic query" --auto-embed --select title,embeddingVectorDistance
```

### Create/update with auto-embedded `embedding` via --auto-embed

```bash
# --auto-embed on create/update converts text strings in vector fields to embeddings before saving
EMBEDDER_PROVIDER=ollama agentic-db calendar-event create --embedding "text to embed" --auto-embed
EMBEDDER_PROVIDER=ollama agentic-db calendar-event update --embedding "new text to embed" --auto-embed
```

### Full-text search via tsvector (`searchTsv`)

```bash
agentic-db calendar-event list --where.searchTsv "search query" --select title,tsvRank
```

### BM25 keyword search via `bm25EmbeddingText`

```bash
agentic-db calendar-event list --where.bm25EmbeddingText.query "search query" --select title,embeddingTextBm25Score
```

### Fuzzy search via trigram similarity (`trgmProviderEventId`)

```bash
agentic-db calendar-event list --where.trgmProviderEventId.value "approximate query" --where.trgmProviderEventId.threshold 0.3 --select title,providerEventIdTrgmSimilarity
```

### Fuzzy search via trigram similarity (`trgmTitle`)

```bash
agentic-db calendar-event list --where.trgmTitle.value "approximate query" --where.trgmTitle.threshold 0.3 --select title,titleTrgmSimilarity
```

### Fuzzy search via trigram similarity (`trgmDescription`)

```bash
agentic-db calendar-event list --where.trgmDescription.value "approximate query" --where.trgmDescription.threshold 0.3 --select title,descriptionTrgmSimilarity
```

### Fuzzy search via trigram similarity (`trgmMeetingUrl`)

```bash
agentic-db calendar-event list --where.trgmMeetingUrl.value "approximate query" --where.trgmMeetingUrl.threshold 0.3 --select title,meetingUrlTrgmSimilarity
```

### Fuzzy search via trigram similarity (`trgmEmbeddingText`)

```bash
agentic-db calendar-event list --where.trgmEmbeddingText.value "approximate query" --where.trgmEmbeddingText.threshold 0.3 --select title,embeddingTextTrgmSimilarity
```

### Composite search (fullTextSearch dispatches to all text adapters)

```bash
agentic-db calendar-event list --where.fullTextSearch "search query" --select title,tsvRank,embeddingTextBm25Score,providerEventIdTrgmSimilarity,titleTrgmSimilarity,descriptionTrgmSimilarity,meetingUrlTrgmSimilarity,embeddingTextTrgmSimilarity,searchScore
```

### Search with pagination and field projection

```bash
agentic-db calendar-event list --where.fullTextSearch "query" --limit 10 --select id,title,searchScore
agentic-db calendar-event search "query" --limit 10 --select id,title,searchScore
```

### Create a calendarEvent

```bash
agentic-db calendar-event create --title <String> --calendarId <UUID> [--providerEventId <String>] [--description <String>] [--startTime <Datetime>] [--endTime <Datetime>] [--meetingUrl <String>] [--organizerContactId <UUID>] [--tags <String>] [--embeddingText <String>] [--embedding <Vector>] [--embeddingStale <Boolean>]
```

### Get a calendarEvent by id

```bash
agentic-db calendar-event get --id <value>
```
