# calendarEventContact

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for CalendarEventContact records via agentic-db CLI

## Usage

```bash
agentic-db calendar-event-contact list
agentic-db calendar-event-contact list --where.<field>.<op> <value> --orderBy <values>
agentic-db calendar-event-contact list --limit 10 --after <cursor>
agentic-db calendar-event-contact find-first --where.<field>.<op> <value>
agentic-db calendar-event-contact get --id <UUID>
agentic-db calendar-event-contact create --calendarEventId <UUID> --contactId <UUID>
agentic-db calendar-event-contact update --id <UUID> [--calendarEventId <UUID>] [--contactId <UUID>]
agentic-db calendar-event-contact delete --id <UUID>
```

## Examples

### List calendarEventContact records

```bash
agentic-db calendar-event-contact list
```

### List calendarEventContact records with pagination

```bash
agentic-db calendar-event-contact list --limit 10 --offset 0
```

### List calendarEventContact records with cursor pagination

```bash
agentic-db calendar-event-contact list --limit 10 --after <cursor>
```

### Find first matching calendarEventContact

```bash
agentic-db calendar-event-contact find-first --where.id.equalTo <value>
```

### List calendarEventContact records with field selection

```bash
agentic-db calendar-event-contact list --select id,id
```

### List calendarEventContact records with filtering and ordering

```bash
agentic-db calendar-event-contact list --where.id.equalTo <value> --orderBy ID_ASC
```

### Create a calendarEventContact

```bash
agentic-db calendar-event-contact create --calendarEventId <UUID> --contactId <UUID>
```

### Get a calendarEventContact by id

```bash
agentic-db calendar-event-contact get --id <value>
```
