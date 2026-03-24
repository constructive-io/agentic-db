# calendarEvent

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for CalendarEvent records via agentic-db CLI

**Unified Search API fields:** `embeddingTextBm25Score`, `providerEventIdTrgmSimilarity`, `titleTrgmSimilarity`, `descriptionTrgmSimilarity`, `meetingUrlTrgmSimilarity`, `recurrenceRuleTrgmSimilarity`, `statusTrgmSimilarity`, `embeddingTextTrgmSimilarity`, `searchScore`
Fields provided by the Unified Search plugin. Includes full-text search (tsvector/BM25), trigram similarity scores, and the combined searchScore. Computed fields are read-only and cannot be set in create/update operations.

## Usage

```bash
agentic-db calendar-event list
agentic-db calendar-event get --id <UUID>
agentic-db calendar-event create --entityId <UUID> --calendarId <UUID> --title <String> [--providerEventId <String>] [--description <String>] [--startTime <Datetime>] [--endTime <Datetime>] [--isAllDay <Boolean>] [--meetingUrl <String>] [--organizerContactId <UUID>] [--recurrenceRule <String>] [--status <String>] [--tags <String>] [--embeddingText <String>] [--embedding <Vector>] [--embeddingStale <Boolean>]
agentic-db calendar-event update --id <UUID> [--entityId <UUID>] [--calendarId <UUID>] [--providerEventId <String>] [--title <String>] [--description <String>] [--startTime <Datetime>] [--endTime <Datetime>] [--isAllDay <Boolean>] [--meetingUrl <String>] [--organizerContactId <UUID>] [--recurrenceRule <String>] [--status <String>] [--tags <String>] [--embeddingText <String>] [--embedding <Vector>] [--embeddingStale <Boolean>]
agentic-db calendar-event delete --id <UUID>
```

## Examples

### List all calendarEvent records

```bash
agentic-db calendar-event list
```

### Create a calendarEvent

```bash
agentic-db calendar-event create --entityId <UUID> --calendarId <UUID> --title <String> [--providerEventId <String>] [--description <String>] [--startTime <Datetime>] [--endTime <Datetime>] [--isAllDay <Boolean>] [--meetingUrl <String>] [--organizerContactId <UUID>] [--recurrenceRule <String>] [--status <String>] [--tags <String>] [--embeddingText <String>] [--embedding <Vector>] [--embeddingStale <Boolean>]
```

### Get a calendarEvent by id

```bash
agentic-db calendar-event get --id <value>
```
