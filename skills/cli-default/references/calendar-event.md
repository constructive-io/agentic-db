# calendarEvent

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for CalendarEvent records via agent-db CLI

## Usage

```bash
agent-db calendar-event list
agent-db calendar-event get --id <value>
agent-db calendar-event create --entityId <value> --title <value> --startAt <value> --embeddingDistance <value> [--calendarAccountId <value>] [--remoteId <value>] [--description <value>] [--endAt <value>] [--allDay <value>] [--location <value>] [--recurrenceRule <value>] [--status <value>] [--tags <value>] [--embeddingText <value>] [--embedding <value>]
agent-db calendar-event update --id <value> [--entityId <value>] [--calendarAccountId <value>] [--remoteId <value>] [--title <value>] [--description <value>] [--startAt <value>] [--endAt <value>] [--allDay <value>] [--location <value>] [--recurrenceRule <value>] [--status <value>] [--tags <value>] [--embeddingText <value>] [--embedding <value>] [--embeddingDistance <value>]
agent-db calendar-event delete --id <value>
```

## Examples

### List all calendarEvent records

```bash
agent-db calendar-event list
```

### Create a calendarEvent

```bash
agent-db calendar-event create --entityId <value> --title <value> --startAt <value> --embeddingDistance <value> [--calendarAccountId <value>] [--remoteId <value>] [--description <value>] [--endAt <value>] [--allDay <value>] [--location <value>] [--recurrenceRule <value>] [--status <value>] [--tags <value>] [--embeddingText <value>] [--embedding <value>]
```

### Get a calendarEvent by id

```bash
agent-db calendar-event get --id <value>
```
