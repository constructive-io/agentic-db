# notification

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for Notification records via agentic-db CLI

## Usage

```bash
agentic-db notification list
agentic-db notification get --id <value>
agentic-db notification create --entityId <value> --titleTrgmSimilarity <value> --bodyTrgmSimilarity <value> --typeTrgmSimilarity <value> --priorityTrgmSimilarity <value> --actionUrlTrgmSimilarity <value> --sourceEntityTypeTrgmSimilarity <value> --searchScore <value> [--title <value>] [--body <value>] [--type <value>] [--priority <value>] [--readAt <value>] [--actionUrl <value>] [--sourceEntityId <value>] [--sourceEntityType <value>]
agentic-db notification update --id <value> [--entityId <value>] [--title <value>] [--body <value>] [--type <value>] [--priority <value>] [--readAt <value>] [--actionUrl <value>] [--sourceEntityId <value>] [--sourceEntityType <value>] [--titleTrgmSimilarity <value>] [--bodyTrgmSimilarity <value>] [--typeTrgmSimilarity <value>] [--priorityTrgmSimilarity <value>] [--actionUrlTrgmSimilarity <value>] [--sourceEntityTypeTrgmSimilarity <value>] [--searchScore <value>]
agentic-db notification delete --id <value>
```

## Examples

### List all notification records

```bash
agentic-db notification list
```

### Create a notification

```bash
agentic-db notification create --entityId <value> --titleTrgmSimilarity <value> --bodyTrgmSimilarity <value> --typeTrgmSimilarity <value> --priorityTrgmSimilarity <value> --actionUrlTrgmSimilarity <value> --sourceEntityTypeTrgmSimilarity <value> --searchScore <value> [--title <value>] [--body <value>] [--type <value>] [--priority <value>] [--readAt <value>] [--actionUrl <value>] [--sourceEntityId <value>] [--sourceEntityType <value>]
```

### Get a notification by id

```bash
agentic-db notification get --id <value>
```
