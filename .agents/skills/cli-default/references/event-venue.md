# eventVenue

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for EventVenue records via agentic-db CLI

## Usage

```bash
agentic-db event-venue list
agentic-db event-venue get --id <UUID>
agentic-db event-venue create --eventId <UUID> --venueId <UUID> --entityId <UUID>
agentic-db event-venue update --id <UUID> [--eventId <UUID>] [--venueId <UUID>] [--entityId <UUID>]
agentic-db event-venue delete --id <UUID>
```

## Examples

### List all eventVenue records

```bash
agentic-db event-venue list
```

### Create a eventVenue

```bash
agentic-db event-venue create --eventId <UUID> --venueId <UUID> --entityId <UUID>
```

### Get a eventVenue by id

```bash
agentic-db event-venue get --id <value>
```
