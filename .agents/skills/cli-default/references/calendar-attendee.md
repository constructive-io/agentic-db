# calendarAttendee

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for CalendarAttendee records via agentic-db CLI

## Usage

```bash
agentic-db calendar-attendee list
agentic-db calendar-attendee get --id <UUID>
agentic-db calendar-attendee create --entityId <UUID> --calendarEventId <UUID> --contactId <UUID> [--responseStatus <String>] [--role <String>]
agentic-db calendar-attendee update --id <UUID> [--entityId <UUID>] [--calendarEventId <UUID>] [--contactId <UUID>] [--responseStatus <String>] [--role <String>]
agentic-db calendar-attendee delete --id <UUID>
```

## Examples

### List all calendarAttendee records

```bash
agentic-db calendar-attendee list
```

### Create a calendarAttendee

```bash
agentic-db calendar-attendee create --entityId <UUID> --calendarEventId <UUID> --contactId <UUID> [--responseStatus <String>] [--role <String>]
```

### Get a calendarAttendee by id

```bash
agentic-db calendar-attendee get --id <value>
```
