# eventVenue

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for EventVenue records via agentic-db CLI

## Usage

```bash
agentic-db event-venue list
agentic-db event-venue list --where.<field>.<op> <value> --orderBy <values>
agentic-db event-venue list --limit 10 --after <cursor>
agentic-db event-venue find-first --where.<field>.<op> <value>
agentic-db event-venue get --id <UUID>
agentic-db event-venue create --eventId <UUID> --venueId <UUID>
agentic-db event-venue update --id <UUID> [--eventId <UUID>] [--venueId <UUID>]
agentic-db event-venue delete --id <UUID>
```

## Examples

### List eventVenue records

```bash
agentic-db event-venue list
```

### List eventVenue records with pagination

```bash
agentic-db event-venue list --limit 10 --offset 0
```

### List eventVenue records with cursor pagination

```bash
agentic-db event-venue list --limit 10 --after <cursor>
```

### Find first matching eventVenue

```bash
agentic-db event-venue find-first --where.id.equalTo <value>
```

### List eventVenue records with field selection

```bash
agentic-db event-venue list --select id,id
```

### List eventVenue records with filtering and ordering

```bash
agentic-db event-venue list --where.id.equalTo <value> --orderBy ID_ASC
```

### Create a eventVenue

```bash
agentic-db event-venue create --eventId <UUID> --venueId <UUID>
```

### Get a eventVenue by id

```bash
agentic-db event-venue get --id <value>
```
