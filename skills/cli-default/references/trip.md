# trip

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for Trip records via agent-os CLI

## Usage

```bash
agent-os trip list
agent-os trip get --id <value>
agent-os trip create --entityId <value> --name <value> --embeddingDistance <value> [--destination <value>] [--startDate <value>] [--endDate <value>] [--status <value>] [--notes <value>] [--tags <value>] [--embeddingText <value>] [--embedding <value>]
agent-os trip update --id <value> [--entityId <value>] [--name <value>] [--destination <value>] [--startDate <value>] [--endDate <value>] [--status <value>] [--notes <value>] [--tags <value>] [--embeddingText <value>] [--embedding <value>] [--embeddingDistance <value>]
agent-os trip delete --id <value>
```

## Examples

### List all trip records

```bash
agent-os trip list
```

### Create a trip

```bash
agent-os trip create --entityId <value> --name <value> --embeddingDistance <value> [--destination <value>] [--startDate <value>] [--endDate <value>] [--status <value>] [--notes <value>] [--tags <value>] [--embeddingText <value>] [--embedding <value>]
```

### Get a trip by id

```bash
agent-os trip get --id <value>
```
