# calendarEventNote

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for CalendarEventNote records via agentic-db CLI

## Usage

```bash
agentic-db calendar-event-note list
agentic-db calendar-event-note list --where.<field>.<op> <value> --orderBy <values>
agentic-db calendar-event-note list --limit 10 --after <cursor>
agentic-db calendar-event-note find-first --where.<field>.<op> <value>
agentic-db calendar-event-note get --id <UUID>
agentic-db calendar-event-note create --calendarEventId <UUID> --noteId <UUID> --entityId <UUID>
agentic-db calendar-event-note update --id <UUID> [--calendarEventId <UUID>] [--noteId <UUID>] [--entityId <UUID>]
agentic-db calendar-event-note delete --id <UUID>
```

## Examples

### List calendarEventNote records

```bash
agentic-db calendar-event-note list
```

### List calendarEventNote records with pagination

```bash
agentic-db calendar-event-note list --limit 10 --offset 0
```

### List calendarEventNote records with cursor pagination

```bash
agentic-db calendar-event-note list --limit 10 --after <cursor>
```

### Find first matching calendarEventNote

```bash
agentic-db calendar-event-note find-first --where.id.equalTo <value>
```

### List calendarEventNote records with field selection

```bash
agentic-db calendar-event-note list --select id,id
```

### List calendarEventNote records with filtering and ordering

```bash
agentic-db calendar-event-note list --where.id.equalTo <value> --orderBy ID_ASC
```

### Create a calendarEventNote

```bash
agentic-db calendar-event-note create --calendarEventId <UUID> --noteId <UUID> --entityId <UUID>
```

### Get a calendarEventNote by id

```bash
agentic-db calendar-event-note get --id <value>
```
