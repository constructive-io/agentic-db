# activityLog

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for ActivityLog records via agent-db CLI

## Usage

```bash
agent-db activity-log list
agent-db activity-log get --id <value>
agent-db activity-log create --entityId <value> --actorType <value> --action <value> --targetType <value> --targetId <value> [--actorId <value>] [--metadata <value>]
agent-db activity-log update --id <value> [--entityId <value>] [--actorType <value>] [--actorId <value>] [--action <value>] [--targetType <value>] [--targetId <value>] [--metadata <value>]
agent-db activity-log delete --id <value>
```

## Examples

### List all activityLog records

```bash
agent-db activity-log list
```

### Create a activityLog

```bash
agent-db activity-log create --entityId <value> --actorType <value> --action <value> --targetType <value> --targetId <value> [--actorId <value>] [--metadata <value>]
```

### Get a activityLog by id

```bash
agent-db activity-log get --id <value>
```
