# calendarEventChunk

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for CalendarEventChunk records via agentic-db CLI

**Unified Search API fields:** `embeddingTextBm25Score`, `contentTrgmSimilarity`, `embeddingTextTrgmSimilarity`, `searchScore`
Fields provided by the Unified Search plugin. Includes full-text search (tsvector/BM25), trigram similarity scores, and the combined searchScore. Computed fields are read-only and cannot be set in create/update operations.

## Usage

```bash
agentic-db calendar-event-chunk list
agentic-db calendar-event-chunk get --id <UUID>
agentic-db calendar-event-chunk create --entityId <UUID> --chunkIndex <Int> --content <String> --calendarEventId <UUID> [--embeddingText <String>] [--embedding <Vector>]
agentic-db calendar-event-chunk update --id <UUID> [--entityId <UUID>] [--chunkIndex <Int>] [--content <String>] [--embeddingText <String>] [--embedding <Vector>] [--calendarEventId <UUID>]
agentic-db calendar-event-chunk delete --id <UUID>
```

## Examples

### List all calendarEventChunk records

```bash
agentic-db calendar-event-chunk list
```

### Create a calendarEventChunk

```bash
agentic-db calendar-event-chunk create --entityId <UUID> --chunkIndex <Int> --content <String> --calendarEventId <UUID> [--embeddingText <String>] [--embedding <Vector>]
```

### Get a calendarEventChunk by id

```bash
agentic-db calendar-event-chunk get --id <value>
```
