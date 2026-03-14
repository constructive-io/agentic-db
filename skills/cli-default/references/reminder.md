# reminder

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for Reminder records via agent-db CLI

## Usage

```bash
agent-db reminder list
agent-db reminder get --id <value>
agent-db reminder create --entityId <value> --title <value> --embeddingDistance <value> [--dueAt <value>] [--completedAt <value>] [--recurrence <value>] [--status <value>] [--relatedEntityId <value>] [--relatedEntityType <value>] [--embeddingText <value>] [--embedding <value>]
agent-db reminder update --id <value> [--entityId <value>] [--title <value>] [--dueAt <value>] [--completedAt <value>] [--recurrence <value>] [--status <value>] [--relatedEntityId <value>] [--relatedEntityType <value>] [--embeddingText <value>] [--embedding <value>] [--embeddingDistance <value>]
agent-db reminder delete --id <value>
```

## Examples

### List all reminder records

```bash
agent-db reminder list
```

### Create a reminder

```bash
agent-db reminder create --entityId <value> --title <value> --embeddingDistance <value> [--dueAt <value>] [--completedAt <value>] [--recurrence <value>] [--status <value>] [--relatedEntityId <value>] [--relatedEntityType <value>] [--embeddingText <value>] [--embedding <value>]
```

### Get a reminder by id

```bash
agent-db reminder get --id <value>
```
