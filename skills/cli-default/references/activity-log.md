# activityLog

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for ActivityLog records via agent-os CLI

## Usage

```bash
agent-os activity-log list
agent-os activity-log get --id <value>
agent-os activity-log create --entityId <value> --actorType <value> --action <value> --targetType <value> --targetId <value> [--actorId <value>] [--metadata <value>]
agent-os activity-log update --id <value> [--entityId <value>] [--actorType <value>] [--actorId <value>] [--action <value>] [--targetType <value>] [--targetId <value>] [--metadata <value>]
agent-os activity-log delete --id <value>
```

## Examples

### List all activityLog records

```bash
agent-os activity-log list
```

### Create a activityLog

```bash
agent-os activity-log create --entityId <value> --actorType <value> --action <value> --targetType <value> --targetId <value> [--actorId <value>] [--metadata <value>]
```

### Get a activityLog by id

```bash
agent-os activity-log get --id <value>
```
