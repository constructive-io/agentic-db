# calendarAccount

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for CalendarAccount records via agentic-db CLI

## Usage

```bash
agentic-db calendar-account list
agentic-db calendar-account get --id <UUID>
agentic-db calendar-account create --entityId <UUID> --email <String> [--provider <String>] [--syncToken <String>] [--lastSyncedAt <Datetime>]
agentic-db calendar-account update --id <UUID> [--entityId <UUID>] [--email <String>] [--provider <String>] [--syncToken <String>] [--lastSyncedAt <Datetime>]
agentic-db calendar-account delete --id <UUID>
```

## Examples

### List all calendarAccount records

```bash
agentic-db calendar-account list
```

### Create a calendarAccount

```bash
agentic-db calendar-account create --entityId <UUID> --email <String> [--provider <String>] [--syncToken <String>] [--lastSyncedAt <Datetime>]
```

### Get a calendarAccount by id

```bash
agentic-db calendar-account get --id <value>
```
