# calendarSync

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for CalendarSync records via agent-os CLI

## Usage

```bash
agent-os calendar-sync list
agent-os calendar-sync get --id <value>
agent-os calendar-sync create --entityId <value> --provider <value> --syncToken <value> --lastSyncedAt <value>
agent-os calendar-sync update --id <value> [--entityId <value>] [--provider <value>] [--syncToken <value>] [--lastSyncedAt <value>]
agent-os calendar-sync delete --id <value>
```

## Examples

### List all calendarSync records

```bash
agent-os calendar-sync list
```

### Create a calendarSync

```bash
agent-os calendar-sync create --entityId "value" --provider "value" --syncToken "value" --lastSyncedAt "value"
```

### Get a calendarSync by id

```bash
agent-os calendar-sync get --id <value>
```
