# agentic-db-venue

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for Venue records via agentic-db CLI

## Usage

```bash
agentic-db venue list
agentic-db venue get --id <value>
agentic-db venue create --entityId <value> --name <value> --neighborhood <value> --city <value> --status <value> --notes <value>
agentic-db venue update --id <value> [--entityId <value>] [--name <value>] [--neighborhood <value>] [--city <value>] [--status <value>] [--notes <value>]
agentic-db venue delete --id <value>
```

## Examples

### List all venue records

```bash
agentic-db venue list
```

### Create a venue

```bash
agentic-db venue create --entityId "value" --name "value" --neighborhood "value" --city "value" --status "value" --notes "value"
```

### Get a venue by id

```bash
agentic-db venue get --id <value>
```

### Update a venue

```bash
agentic-db venue update --id <value> --entityId "new-value"
```

### Delete a venue

```bash
agentic-db venue delete --id <value>
```
