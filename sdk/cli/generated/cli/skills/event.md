# agentic-db-event

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for Event records via agentic-db CLI

## Usage

```bash
agentic-db event list
agentic-db event get --id <value>
agentic-db event create --entityId <value> --name <value> --eventType <value> --location <value> --city <value> --startedAt <value> --endedAt <value> --notes <value>
agentic-db event update --id <value> [--entityId <value>] [--name <value>] [--eventType <value>] [--location <value>] [--city <value>] [--startedAt <value>] [--endedAt <value>] [--notes <value>]
agentic-db event delete --id <value>
```

## Examples

### List all event records

```bash
agentic-db event list
```

### Create a event

```bash
agentic-db event create --entityId "value" --name "value" --eventType "value" --location "value" --city "value" --startedAt "value" --endedAt "value" --notes "value"
```

### Get a event by id

```bash
agentic-db event get --id <value>
```

### Update a event

```bash
agentic-db event update --id <value> --entityId "new-value"
```

### Delete a event

```bash
agentic-db event delete --id <value>
```
