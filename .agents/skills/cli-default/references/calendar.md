# calendar

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for Calendar records via agentic-db CLI

## Usage

```bash
agentic-db calendar list
agentic-db calendar list --where.<field>.<op> <value> --orderBy <values>
agentic-db calendar list --limit 10 --after <cursor>
agentic-db calendar find-first --where.<field>.<op> <value>
agentic-db calendar get --id <UUID>
agentic-db calendar create --name <String> [--providerAccountId <String>] [--providerCalendarId <String>] [--color <String>]
agentic-db calendar update --id <UUID> [--providerAccountId <String>] [--providerCalendarId <String>] [--name <String>] [--color <String>]
agentic-db calendar delete --id <UUID>
```

## Examples

### List calendar records

```bash
agentic-db calendar list
```

### List calendar records with pagination

```bash
agentic-db calendar list --limit 10 --offset 0
```

### List calendar records with cursor pagination

```bash
agentic-db calendar list --limit 10 --after <cursor>
```

### Find first matching calendar

```bash
agentic-db calendar find-first --where.id.equalTo <value>
```

### List calendar records with field selection

```bash
agentic-db calendar list --select id,id
```

### List calendar records with filtering and ordering

```bash
agentic-db calendar list --where.id.equalTo <value> --orderBy ID_ASC
```

### Create a calendar

```bash
agentic-db calendar create --name <String> [--providerAccountId <String>] [--providerCalendarId <String>] [--color <String>]
```

### Get a calendar by id

```bash
agentic-db calendar get --id <value>
```
