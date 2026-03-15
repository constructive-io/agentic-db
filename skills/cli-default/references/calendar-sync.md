# calendarSync

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for CalendarSync records via agentic-db CLI

## Usage

```bash
agentic-db calendar-sync list
agentic-db calendar-sync get --id <value>
agentic-db calendar-sync create --entityId <value> --provider <value> --syncToken <value> --lastSyncedAt <value>
agentic-db calendar-sync update --id <value> [--entityId <value>] [--provider <value>] [--syncToken <value>] [--lastSyncedAt <value>]
agentic-db calendar-sync delete --id <value>
```

## Examples

### List all calendarSync records

```bash
agentic-db calendar-sync list
```

### Create a calendarSync

```bash
agentic-db calendar-sync create --entityId "value" --provider "value" --syncToken "value" --lastSyncedAt "value"
```

### Get a calendarSync by id

```bash
agentic-db calendar-sync get --id <value>
```
