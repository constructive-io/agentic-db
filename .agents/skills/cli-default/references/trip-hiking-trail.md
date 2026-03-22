# tripHikingTrail

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for TripHikingTrail records via agentic-db CLI

## Usage

```bash
agentic-db trip-hiking-trail list
agentic-db trip-hiking-trail get --id <UUID>
agentic-db trip-hiking-trail create --tripId <UUID> --hikingTrailId <UUID> --entityId <UUID>
agentic-db trip-hiking-trail update --id <UUID> [--tripId <UUID>] [--hikingTrailId <UUID>] [--entityId <UUID>]
agentic-db trip-hiking-trail delete --id <UUID>
```

## Examples

### List all tripHikingTrail records

```bash
agentic-db trip-hiking-trail list
```

### Create a tripHikingTrail

```bash
agentic-db trip-hiking-trail create --tripId <UUID> --hikingTrailId <UUID> --entityId <UUID>
```

### Get a tripHikingTrail by id

```bash
agentic-db trip-hiking-trail get --id <value>
```
