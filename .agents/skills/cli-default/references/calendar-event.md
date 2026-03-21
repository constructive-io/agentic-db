# calendarEvent

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for CalendarEvent records via agentic-db CLI

**Unified Search API fields:** `embeddingTextBm25Score`, `remoteIdTrgmSimilarity`, `titleTrgmSimilarity`, `descriptionTrgmSimilarity`, `locationTrgmSimilarity`, `recurrenceRuleTrgmSimilarity`, `statusTrgmSimilarity`, `embeddingTextTrgmSimilarity`, `searchScore`
Fields provided by the Unified Search plugin. Includes full-text search (tsvector/BM25), trigram similarity scores, and the combined searchScore. Computed fields are read-only and cannot be set in create/update operations.

## Usage

```bash
agentic-db calendar-event list
agentic-db calendar-event get --id <UUID>
agentic-db calendar-event create --entityId <UUID> --title <String> --startAt <Datetime> [--calendarAccountId <UUID>] [--remoteId <String>] [--description <String>] [--endAt <Datetime>] [--allDay <Boolean>] [--location <String>] [--recurrenceRule <String>] [--status <String>] [--tags <String>] [--embeddingText <String>] [--embedding <Vector>]
agentic-db calendar-event update --id <UUID> [--entityId <UUID>] [--calendarAccountId <UUID>] [--remoteId <String>] [--title <String>] [--description <String>] [--startAt <Datetime>] [--endAt <Datetime>] [--allDay <Boolean>] [--location <String>] [--recurrenceRule <String>] [--status <String>] [--tags <String>] [--embeddingText <String>] [--embedding <Vector>]
agentic-db calendar-event delete --id <UUID>
```

## Examples

### List all calendarEvent records

```bash
agentic-db calendar-event list
```

### Create a calendarEvent

```bash
agentic-db calendar-event create --entityId <UUID> --title <String> --startAt <Datetime> [--calendarAccountId <UUID>] [--remoteId <String>] [--description <String>] [--endAt <Datetime>] [--allDay <Boolean>] [--location <String>] [--recurrenceRule <String>] [--status <String>] [--tags <String>] [--embeddingText <String>] [--embedding <Vector>]
```

### Get a calendarEvent by id

```bash
agentic-db calendar-event get --id <value>
```
