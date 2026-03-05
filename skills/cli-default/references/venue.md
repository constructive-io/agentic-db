# venue

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for Venue records via agent-os CLI

## Usage

```bash
agent-os venue list
agent-os venue get --id <value>
agent-os venue create --entityId <value> --name <value> --neighborhood <value> --city <value> --status <value> --notes <value> --tags <value> --embedding <value> --mainImageId <value> --imageId <value> --embeddingDistance <value>
agent-os venue update --id <value> [--entityId <value>] [--name <value>] [--neighborhood <value>] [--city <value>] [--status <value>] [--notes <value>] [--tags <value>] [--embedding <value>] [--mainImageId <value>] [--imageId <value>] [--embeddingDistance <value>]
agent-os venue delete --id <value>
```

## Examples

### List all venue records

```bash
agent-os venue list
```

### Create a venue

```bash
agent-os venue create --entityId "value" --name "value" --neighborhood "value" --city "value" --status "value" --notes "value" --tags "value" --embedding "value" --mainImageId "value" --imageId "value" --embeddingDistance "value"
```

### Get a venue by id

```bash
agent-os venue get --id <value>
```
