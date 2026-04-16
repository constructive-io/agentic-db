# calendarEventTask

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for CalendarEventTask records via agentic-db CLI

## Usage

```bash
agentic-db calendar-event-task list
agentic-db calendar-event-task list --where.<field>.<op> <value> --orderBy <values>
agentic-db calendar-event-task list --limit 10 --after <cursor>
agentic-db calendar-event-task find-first --where.<field>.<op> <value>
agentic-db calendar-event-task get --id <UUID>
agentic-db calendar-event-task create --calendarEventId <UUID> --taskId <UUID>
agentic-db calendar-event-task update --id <UUID> [--calendarEventId <UUID>] [--taskId <UUID>]
agentic-db calendar-event-task delete --id <UUID>
```

## Examples

### List calendarEventTask records

```bash
agentic-db calendar-event-task list
```

### List calendarEventTask records with pagination

```bash
agentic-db calendar-event-task list --limit 10 --offset 0
```

### List calendarEventTask records with cursor pagination

```bash
agentic-db calendar-event-task list --limit 10 --after <cursor>
```

### Find first matching calendarEventTask

```bash
agentic-db calendar-event-task find-first --where.id.equalTo <value>
```

### List calendarEventTask records with field selection

```bash
agentic-db calendar-event-task list --select id,id
```

### List calendarEventTask records with filtering and ordering

```bash
agentic-db calendar-event-task list --where.id.equalTo <value> --orderBy ID_ASC
```

### Create a calendarEventTask

```bash
agentic-db calendar-event-task create --calendarEventId <UUID> --taskId <UUID>
```

### Get a calendarEventTask by id

```bash
agentic-db calendar-event-task get --id <value>
```
