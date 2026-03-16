# calendarAccount

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for CalendarAccount records via agentic-db CLI

## Usage

```bash
agentic-db calendar-account list
agentic-db calendar-account get --id <value>
agentic-db calendar-account create --entityId <value> --email <value> --emailTrgmSimilarity <value> --providerTrgmSimilarity <value> --syncTokenTrgmSimilarity <value> --searchScore <value> [--provider <value>] [--syncToken <value>] [--lastSyncedAt <value>]
agentic-db calendar-account update --id <value> [--entityId <value>] [--email <value>] [--provider <value>] [--syncToken <value>] [--lastSyncedAt <value>] [--emailTrgmSimilarity <value>] [--providerTrgmSimilarity <value>] [--syncTokenTrgmSimilarity <value>] [--searchScore <value>]
agentic-db calendar-account delete --id <value>
```

## Examples

### List all calendarAccount records

```bash
agentic-db calendar-account list
```

### Create a calendarAccount

```bash
agentic-db calendar-account create --entityId <value> --email <value> --emailTrgmSimilarity <value> --providerTrgmSimilarity <value> --syncTokenTrgmSimilarity <value> --searchScore <value> [--provider <value>] [--syncToken <value>] [--lastSyncedAt <value>]
```

### Get a calendarAccount by id

```bash
agentic-db calendar-account get --id <value>
```
