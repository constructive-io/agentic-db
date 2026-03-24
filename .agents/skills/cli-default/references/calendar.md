# calendar

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for Calendar records via agentic-db CLI

## Usage

```bash
agentic-db calendar list
agentic-db calendar get --id <UUID>
agentic-db calendar create --entityId <UUID> --name <String> [--providerAccountId <String>] [--providerCalendarId <String>] [--color <String>] [--isPrimary <Boolean>] [--isActive <Boolean>]
agentic-db calendar update --id <UUID> [--entityId <UUID>] [--providerAccountId <String>] [--providerCalendarId <String>] [--name <String>] [--color <String>] [--isPrimary <Boolean>] [--isActive <Boolean>]
agentic-db calendar delete --id <UUID>
```

## Examples

### List all calendar records

```bash
agentic-db calendar list
```

### Create a calendar

```bash
agentic-db calendar create --entityId <UUID> --name <String> [--providerAccountId <String>] [--providerCalendarId <String>] [--color <String>] [--isPrimary <Boolean>] [--isActive <Boolean>]
```

### Get a calendar by id

```bash
agentic-db calendar get --id <value>
```
