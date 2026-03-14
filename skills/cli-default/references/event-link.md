# eventLink

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for EventLink records via agent-os CLI

## Usage

```bash
agent-os event-link list
agent-os event-link get --id <value>
agent-os event-link create --entityId <value> --url <value> --eventId <value> --embeddingDistance <value> [--title <value>] [--embedding <value>]
agent-os event-link update --id <value> [--entityId <value>] [--title <value>] [--url <value>] [--embedding <value>] [--eventId <value>] [--embeddingDistance <value>]
agent-os event-link delete --id <value>
```

## Examples

### List all eventLink records

```bash
agent-os event-link list
```

### Create a eventLink

```bash
agent-os event-link create --entityId <value> --url <value> --eventId <value> --embeddingDistance <value> [--title <value>] [--embedding <value>]
```

### Get a eventLink by id

```bash
agent-os event-link get --id <value>
```
