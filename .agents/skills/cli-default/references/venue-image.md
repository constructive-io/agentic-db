# venueImage

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for VenueImage records via agentic-db CLI

## Usage

```bash
agentic-db venue-image list
agentic-db venue-image list --where.<field>.<op> <value> --orderBy <values>
agentic-db venue-image list --limit 10 --after <cursor>
agentic-db venue-image find-first --where.<field>.<op> <value>
agentic-db venue-image get --id <UUID>
agentic-db venue-image create --venueId <UUID> --imageId <UUID> --entityId <UUID>
agentic-db venue-image update --id <UUID> [--venueId <UUID>] [--imageId <UUID>] [--entityId <UUID>]
agentic-db venue-image delete --id <UUID>
```

## Examples

### List venueImage records

```bash
agentic-db venue-image list
```

### List venueImage records with pagination

```bash
agentic-db venue-image list --limit 10 --offset 0
```

### List venueImage records with cursor pagination

```bash
agentic-db venue-image list --limit 10 --after <cursor>
```

### Find first matching venueImage

```bash
agentic-db venue-image find-first --where.id.equalTo <value>
```

### List venueImage records with field selection

```bash
agentic-db venue-image list --select id,id
```

### List venueImage records with filtering and ordering

```bash
agentic-db venue-image list --where.id.equalTo <value> --orderBy ID_ASC
```

### Create a venueImage

```bash
agentic-db venue-image create --venueId <UUID> --imageId <UUID> --entityId <UUID>
```

### Get a venueImage by id

```bash
agentic-db venue-image get --id <value>
```
