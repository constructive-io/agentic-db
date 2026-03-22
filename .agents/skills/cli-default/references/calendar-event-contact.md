# calendarEventContact

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for CalendarEventContact records via agentic-db CLI

## Usage

```bash
agentic-db calendar-event-contact list
agentic-db calendar-event-contact get --id <UUID>
agentic-db calendar-event-contact create --calendarEventId <UUID> --contactId <UUID> --entityId <UUID>
agentic-db calendar-event-contact update --id <UUID> [--calendarEventId <UUID>] [--contactId <UUID>] [--entityId <UUID>]
agentic-db calendar-event-contact delete --id <UUID>
```

## Examples

### List all calendarEventContact records

```bash
agentic-db calendar-event-contact list
```

### Create a calendarEventContact

```bash
agentic-db calendar-event-contact create --calendarEventId <UUID> --contactId <UUID> --entityId <UUID>
```

### Get a calendarEventContact by id

```bash
agentic-db calendar-event-contact get --id <value>
```
