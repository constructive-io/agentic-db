# notification

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for Notification records via agent-db CLI

## Usage

```bash
agent-db notification list
agent-db notification get --id <value>
agent-db notification create --entityId <value> --titleTrgmSimilarity <value> --bodyTrgmSimilarity <value> --typeTrgmSimilarity <value> --priorityTrgmSimilarity <value> --actionUrlTrgmSimilarity <value> --sourceEntityTypeTrgmSimilarity <value> --searchScore <value> [--title <value>] [--body <value>] [--type <value>] [--priority <value>] [--readAt <value>] [--actionUrl <value>] [--sourceEntityId <value>] [--sourceEntityType <value>]
agent-db notification update --id <value> [--entityId <value>] [--title <value>] [--body <value>] [--type <value>] [--priority <value>] [--readAt <value>] [--actionUrl <value>] [--sourceEntityId <value>] [--sourceEntityType <value>] [--titleTrgmSimilarity <value>] [--bodyTrgmSimilarity <value>] [--typeTrgmSimilarity <value>] [--priorityTrgmSimilarity <value>] [--actionUrlTrgmSimilarity <value>] [--sourceEntityTypeTrgmSimilarity <value>] [--searchScore <value>]
agent-db notification delete --id <value>
```

## Examples

### List all notification records

```bash
agent-db notification list
```

### Create a notification

```bash
agent-db notification create --entityId <value> --titleTrgmSimilarity <value> --bodyTrgmSimilarity <value> --typeTrgmSimilarity <value> --priorityTrgmSimilarity <value> --actionUrlTrgmSimilarity <value> --sourceEntityTypeTrgmSimilarity <value> --searchScore <value> [--title <value>] [--body <value>] [--type <value>] [--priority <value>] [--readAt <value>] [--actionUrl <value>] [--sourceEntityId <value>] [--sourceEntityType <value>]
```

### Get a notification by id

```bash
agent-db notification get --id <value>
```
