# calendarEventTask

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for CalendarEventTask records via agentic-db CLI

## Usage

```bash
agentic-db calendar-event-task list
agentic-db calendar-event-task get --id <UUID>
agentic-db calendar-event-task create --calendarEventId <UUID> --taskId <UUID> --entityId <UUID>
agentic-db calendar-event-task update --id <UUID> [--calendarEventId <UUID>] [--taskId <UUID>] [--entityId <UUID>]
agentic-db calendar-event-task delete --id <UUID>
```

## Examples

### List all calendarEventTask records

```bash
agentic-db calendar-event-task list
```

### Create a calendarEventTask

```bash
agentic-db calendar-event-task create --calendarEventId <UUID> --taskId <UUID> --entityId <UUID>
```

### Get a calendarEventTask by id

```bash
agentic-db calendar-event-task get --id <value>
```
