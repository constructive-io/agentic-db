# reminder

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for Reminder records via agent-os CLI

## Usage

```bash
agent-os reminder list
agent-os reminder get --id <value>
agent-os reminder create --entityId <value> --title <value> --embeddingDistance <value> [--dueAt <value>] [--completedAt <value>] [--recurrence <value>] [--status <value>] [--relatedEntityId <value>] [--relatedEntityType <value>] [--embeddingText <value>] [--embedding <value>]
agent-os reminder update --id <value> [--entityId <value>] [--title <value>] [--dueAt <value>] [--completedAt <value>] [--recurrence <value>] [--status <value>] [--relatedEntityId <value>] [--relatedEntityType <value>] [--embeddingText <value>] [--embedding <value>] [--embeddingDistance <value>]
agent-os reminder delete --id <value>
```

## Examples

### List all reminder records

```bash
agent-os reminder list
```

### Create a reminder

```bash
agent-os reminder create --entityId <value> --title <value> --embeddingDistance <value> [--dueAt <value>] [--completedAt <value>] [--recurrence <value>] [--status <value>] [--relatedEntityId <value>] [--relatedEntityType <value>] [--embeddingText <value>] [--embedding <value>]
```

### Get a reminder by id

```bash
agent-os reminder get --id <value>
```
