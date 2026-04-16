# eventNote

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for EventNote records via agentic-db CLI

## Usage

```bash
agentic-db event-note list
agentic-db event-note list --where.<field>.<op> <value> --orderBy <values>
agentic-db event-note list --limit 10 --after <cursor>
agentic-db event-note find-first --where.<field>.<op> <value>
agentic-db event-note get --id <UUID>
agentic-db event-note create --eventId <UUID> --noteId <UUID>
agentic-db event-note update --id <UUID> [--eventId <UUID>] [--noteId <UUID>]
agentic-db event-note delete --id <UUID>
```

## Examples

### List eventNote records

```bash
agentic-db event-note list
```

### List eventNote records with pagination

```bash
agentic-db event-note list --limit 10 --offset 0
```

### List eventNote records with cursor pagination

```bash
agentic-db event-note list --limit 10 --after <cursor>
```

### Find first matching eventNote

```bash
agentic-db event-note find-first --where.id.equalTo <value>
```

### List eventNote records with field selection

```bash
agentic-db event-note list --select id,id
```

### List eventNote records with filtering and ordering

```bash
agentic-db event-note list --where.id.equalTo <value> --orderBy ID_ASC
```

### Create a eventNote

```bash
agentic-db event-note create --eventId <UUID> --noteId <UUID>
```

### Get a eventNote by id

```bash
agentic-db event-note get --id <value>
```
