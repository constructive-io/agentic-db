# agent-os-event-venue

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for EventVenue records via agent-os CLI

## Usage

```bash
agent-os event-venue list
agent-os event-venue get --id <value>
agent-os event-venue create --eventId <value> --venueId <value> --entityId <value>
agent-os event-venue update --id <value> [--eventId <value>] [--venueId <value>] [--entityId <value>]
agent-os event-venue delete --id <value>
```

## Examples

### List all eventVenue records

```bash
agent-os event-venue list
```

### Create a eventVenue

```bash
agent-os event-venue create --eventId "value" --venueId "value" --entityId "value"
```

### Get a eventVenue by id

```bash
agent-os event-venue get --id <value>
```

### Update a eventVenue

```bash
agent-os event-venue update --id <value> --eventId "new-value"
```

### Delete a eventVenue

```bash
agent-os event-venue delete --id <value>
```
