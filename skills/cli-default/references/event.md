# event

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for Event records via agent-os CLI

## Usage

```bash
agent-os event list
agent-os event get --id <value>
agent-os event create --entityId <value> --name <value> --searchTsvRank <value> --embeddingDistance <value> [--eventType <value>] [--location <value>] [--city <value>] [--startedAt <value>] [--endedAt <value>] [--notes <value>] [--tags <value>] [--embeddingText <value>] [--embedding <value>] [--searchTsv <value>] [--mainImageId <value>]
agent-os event update --id <value> [--entityId <value>] [--name <value>] [--eventType <value>] [--location <value>] [--city <value>] [--startedAt <value>] [--endedAt <value>] [--notes <value>] [--tags <value>] [--embeddingText <value>] [--embedding <value>] [--searchTsv <value>] [--mainImageId <value>] [--searchTsvRank <value>] [--embeddingDistance <value>]
agent-os event delete --id <value>
```

## Examples

### List all event records

```bash
agent-os event list
```

### Create a event

```bash
agent-os event create --entityId <value> --name <value> --searchTsvRank <value> --embeddingDistance <value> [--eventType <value>] [--location <value>] [--city <value>] [--startedAt <value>] [--endedAt <value>] [--notes <value>] [--tags <value>] [--embeddingText <value>] [--embedding <value>] [--searchTsv <value>] [--mainImageId <value>]
```

### Get a event by id

```bash
agent-os event get --id <value>
```
