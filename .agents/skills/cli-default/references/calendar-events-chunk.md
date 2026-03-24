# calendarEventsChunk

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for CalendarEventsChunk records via agentic-db CLI

**Unified Search API fields:** `searchScore`
Fields provided by the Unified Search plugin. Includes full-text search (tsvector/BM25), trigram similarity scores, and the combined searchScore. Computed fields are read-only and cannot be set in create/update operations.

## Usage

```bash
agentic-db calendar-events-chunk list
agentic-db calendar-events-chunk get --id <UUID>
agentic-db calendar-events-chunk create --calendarEventsId <UUID> --content <String> [--chunkIndex <Int>] [--embedding <Vector>] [--metadata <JSON>]
agentic-db calendar-events-chunk update --id <UUID> [--calendarEventsId <UUID>] [--content <String>] [--chunkIndex <Int>] [--embedding <Vector>] [--metadata <JSON>]
agentic-db calendar-events-chunk delete --id <UUID>
```

## Examples

### List all calendarEventsChunk records

```bash
agentic-db calendar-events-chunk list
```

### Create a calendarEventsChunk

```bash
agentic-db calendar-events-chunk create --calendarEventsId <UUID> --content <String> [--chunkIndex <Int>] [--embedding <Vector>] [--metadata <JSON>]
```

### Get a calendarEventsChunk by id

```bash
agentic-db calendar-events-chunk get --id <value>
```
