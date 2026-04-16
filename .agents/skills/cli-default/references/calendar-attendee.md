# calendarAttendee

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for CalendarAttendee records via agentic-db CLI

## Usage

```bash
agentic-db calendar-attendee list
agentic-db calendar-attendee list --where.<field>.<op> <value> --orderBy <values>
agentic-db calendar-attendee list --limit 10 --after <cursor>
agentic-db calendar-attendee find-first --where.<field>.<op> <value>
agentic-db calendar-attendee get --id <UUID>
agentic-db calendar-attendee create --calendarEventId <UUID> [--contactId <UUID>] [--responseStatus <String>] [--role <String>]
agentic-db calendar-attendee update --id <UUID> [--contactId <UUID>] [--responseStatus <String>] [--role <String>] [--calendarEventId <UUID>]
agentic-db calendar-attendee delete --id <UUID>
```

## Examples

### List calendarAttendee records

```bash
agentic-db calendar-attendee list
```

### List calendarAttendee records with pagination

```bash
agentic-db calendar-attendee list --limit 10 --offset 0
```

### List calendarAttendee records with cursor pagination

```bash
agentic-db calendar-attendee list --limit 10 --after <cursor>
```

### Find first matching calendarAttendee

```bash
agentic-db calendar-attendee find-first --where.id.equalTo <value>
```

### List calendarAttendee records with field selection

```bash
agentic-db calendar-attendee list --select id,id
```

### List calendarAttendee records with filtering and ordering

```bash
agentic-db calendar-attendee list --where.id.equalTo <value> --orderBy ID_ASC
```

### Create a calendarAttendee

```bash
agentic-db calendar-attendee create --calendarEventId <UUID> [--contactId <UUID>] [--responseStatus <String>] [--role <String>]
```

### Get a calendarAttendee by id

```bash
agentic-db calendar-attendee get --id <value>
```
