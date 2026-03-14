# notification

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for Notification records via agent-os CLI

## Usage

```bash
agent-os notification list
agent-os notification get --id <value>
agent-os notification create --entityId <value> [--title <value>] [--body <value>] [--type <value>] [--priority <value>] [--readAt <value>] [--actionUrl <value>] [--sourceEntityId <value>] [--sourceEntityType <value>]
agent-os notification update --id <value> [--entityId <value>] [--title <value>] [--body <value>] [--type <value>] [--priority <value>] [--readAt <value>] [--actionUrl <value>] [--sourceEntityId <value>] [--sourceEntityType <value>]
agent-os notification delete --id <value>
```

## Examples

### List all notification records

```bash
agent-os notification list
```

### Create a notification

```bash
agent-os notification create --entityId <value> [--title <value>] [--body <value>] [--type <value>] [--priority <value>] [--readAt <value>] [--actionUrl <value>] [--sourceEntityId <value>] [--sourceEntityType <value>]
```

### Get a notification by id

```bash
agent-os notification get --id <value>
```
