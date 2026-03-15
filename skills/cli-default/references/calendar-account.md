# calendarAccount

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for CalendarAccount records via agent-db CLI

## Usage

```bash
agent-db calendar-account list
agent-db calendar-account get --id <value>
agent-db calendar-account create --entityId <value> --email <value> [--provider <value>] [--syncToken <value>] [--lastSyncedAt <value>]
agent-db calendar-account update --id <value> [--entityId <value>] [--email <value>] [--provider <value>] [--syncToken <value>] [--lastSyncedAt <value>]
agent-db calendar-account delete --id <value>
```

## Examples

### List all calendarAccount records

```bash
agent-db calendar-account list
```

### Create a calendarAccount

```bash
agent-db calendar-account create --entityId <value> --email <value> [--provider <value>] [--syncToken <value>] [--lastSyncedAt <value>]
```

### Get a calendarAccount by id

```bash
agent-db calendar-account get --id <value>
```
