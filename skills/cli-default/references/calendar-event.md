# calendarEvent

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for CalendarEvent records via agent-os CLI

## Usage

```bash
agent-os calendar-event list
agent-os calendar-event get --id <value>
agent-os calendar-event create --entityId <value> --title <value> --startAt <value> --embeddingDistance <value> [--calendarAccountId <value>] [--remoteId <value>] [--description <value>] [--endAt <value>] [--allDay <value>] [--location <value>] [--recurrenceRule <value>] [--status <value>] [--tags <value>] [--embeddingText <value>] [--embedding <value>]
agent-os calendar-event update --id <value> [--entityId <value>] [--calendarAccountId <value>] [--remoteId <value>] [--title <value>] [--description <value>] [--startAt <value>] [--endAt <value>] [--allDay <value>] [--location <value>] [--recurrenceRule <value>] [--status <value>] [--tags <value>] [--embeddingText <value>] [--embedding <value>] [--embeddingDistance <value>]
agent-os calendar-event delete --id <value>
```

## Examples

### List all calendarEvent records

```bash
agent-os calendar-event list
```

### Create a calendarEvent

```bash
agent-os calendar-event create --entityId <value> --title <value> --startAt <value> --embeddingDistance <value> [--calendarAccountId <value>] [--remoteId <value>] [--description <value>] [--endAt <value>] [--allDay <value>] [--location <value>] [--recurrenceRule <value>] [--status <value>] [--tags <value>] [--embeddingText <value>] [--embedding <value>]
```

### Get a calendarEvent by id

```bash
agent-os calendar-event get --id <value>
```
