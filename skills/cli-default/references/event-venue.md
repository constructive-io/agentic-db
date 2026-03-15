# eventVenue

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for EventVenue records via agent-db CLI

## Usage

```bash
agent-db event-venue list
agent-db event-venue get --id <value>
agent-db event-venue create --eventId <value> --venueId <value> --entityId <value>
agent-db event-venue update --id <value> [--eventId <value>] [--venueId <value>] [--entityId <value>]
agent-db event-venue delete --id <value>
```

## Examples

### List all eventVenue records

```bash
agent-db event-venue list
```

### Create a eventVenue

```bash
agent-db event-venue create --eventId <value> --venueId <value> --entityId <value>
```

### Get a eventVenue by id

```bash
agent-db event-venue get --id <value>
```
