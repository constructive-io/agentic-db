# eventImage

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for EventImage records via agentic-db CLI

## Usage

```bash
agentic-db event-image list
agentic-db event-image get --id <UUID>
agentic-db event-image create --eventId <UUID> --imageId <UUID> --entityId <UUID>
agentic-db event-image update --id <UUID> [--eventId <UUID>] [--imageId <UUID>] [--entityId <UUID>]
agentic-db event-image delete --id <UUID>
```

## Examples

### List all eventImage records

```bash
agentic-db event-image list
```

### Create a eventImage

```bash
agentic-db event-image create --eventId <UUID> --imageId <UUID> --entityId <UUID>
```

### Get a eventImage by id

```bash
agentic-db event-image get --id <value>
```
