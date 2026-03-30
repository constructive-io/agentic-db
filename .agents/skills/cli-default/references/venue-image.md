# venueImage

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for VenueImage records via agentic-db CLI

## Usage

```bash
agentic-db venue-image list
agentic-db venue-image get --id <UUID>
agentic-db venue-image create --venueId <UUID> --imageId <UUID> --entityId <UUID>
agentic-db venue-image update --id <UUID> [--venueId <UUID>] [--imageId <UUID>] [--entityId <UUID>]
agentic-db venue-image delete --id <UUID>
```

## Examples

### List all venueImage records

```bash
agentic-db venue-image list
```

### Create a venueImage

```bash
agentic-db venue-image create --venueId <UUID> --imageId <UUID> --entityId <UUID>
```

### Get a venueImage by id

```bash
agentic-db venue-image get --id <value>
```
