# eventImage

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for EventImage records via agentic-db CLI

## Usage

```bash
agentic-db event-image list
agentic-db event-image list --where.<field>.<op> <value> --orderBy <values>
agentic-db event-image list --limit 10 --after <cursor>
agentic-db event-image find-first --where.<field>.<op> <value>
agentic-db event-image get --id <UUID>
agentic-db event-image create --eventId <UUID> --imageId <UUID> --entityId <UUID>
agentic-db event-image update --id <UUID> [--eventId <UUID>] [--imageId <UUID>] [--entityId <UUID>]
agentic-db event-image delete --id <UUID>
```

## Examples

### List eventImage records

```bash
agentic-db event-image list
```

### List eventImage records with pagination

```bash
agentic-db event-image list --limit 10 --offset 0
```

### List eventImage records with cursor pagination

```bash
agentic-db event-image list --limit 10 --after <cursor>
```

### Find first matching eventImage

```bash
agentic-db event-image find-first --where.id.equalTo <value>
```

### List eventImage records with field selection

```bash
agentic-db event-image list --select id,id
```

### List eventImage records with filtering and ordering

```bash
agentic-db event-image list --where.id.equalTo <value> --orderBy ID_ASC
```

### Create a eventImage

```bash
agentic-db event-image create --eventId <UUID> --imageId <UUID> --entityId <UUID>
```

### Get a eventImage by id

```bash
agentic-db event-image get --id <value>
```
