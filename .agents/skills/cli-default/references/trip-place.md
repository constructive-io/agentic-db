# tripPlace

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for TripPlace records via agentic-db CLI

## Usage

```bash
agentic-db trip-place list
agentic-db trip-place get --id <UUID>
agentic-db trip-place create --tripId <UUID> --placeId <UUID> --entityId <UUID>
agentic-db trip-place update --id <UUID> [--tripId <UUID>] [--placeId <UUID>] [--entityId <UUID>]
agentic-db trip-place delete --id <UUID>
```

## Examples

### List all tripPlace records

```bash
agentic-db trip-place list
```

### Create a tripPlace

```bash
agentic-db trip-place create --tripId <UUID> --placeId <UUID> --entityId <UUID>
```

### Get a tripPlace by id

```bash
agentic-db trip-place get --id <value>
```
