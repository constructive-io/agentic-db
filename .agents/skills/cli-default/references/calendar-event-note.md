# calendarEventNote

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for CalendarEventNote records via agentic-db CLI

## Usage

```bash
agentic-db calendar-event-note list
agentic-db calendar-event-note get --id <UUID>
agentic-db calendar-event-note create --calendarEventId <UUID> --noteId <UUID> --entityId <UUID>
agentic-db calendar-event-note update --id <UUID> [--calendarEventId <UUID>] [--noteId <UUID>] [--entityId <UUID>]
agentic-db calendar-event-note delete --id <UUID>
```

## Examples

### List all calendarEventNote records

```bash
agentic-db calendar-event-note list
```

### Create a calendarEventNote

```bash
agentic-db calendar-event-note create --calendarEventId <UUID> --noteId <UUID> --entityId <UUID>
```

### Get a calendarEventNote by id

```bash
agentic-db calendar-event-note get --id <value>
```
