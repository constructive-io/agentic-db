# activityLog

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for ActivityLog records via agentic-db CLI

## Usage

```bash
agentic-db activity-log list
agentic-db activity-log get --id <value>
agentic-db activity-log create --entityId <value> --actorType <value> --action <value> --targetType <value> --targetId <value> --actorTypeTrgmSimilarity <value> --actionTrgmSimilarity <value> --targetTypeTrgmSimilarity <value> --searchScore <value> [--actorId <value>] [--metadata <value>]
agentic-db activity-log update --id <value> [--entityId <value>] [--actorType <value>] [--actorId <value>] [--action <value>] [--targetType <value>] [--targetId <value>] [--metadata <value>] [--actorTypeTrgmSimilarity <value>] [--actionTrgmSimilarity <value>] [--targetTypeTrgmSimilarity <value>] [--searchScore <value>]
agentic-db activity-log delete --id <value>
```

## Examples

### List all activityLog records

```bash
agentic-db activity-log list
```

### Create a activityLog

```bash
agentic-db activity-log create --entityId <value> --actorType <value> --action <value> --targetType <value> --targetId <value> --actorTypeTrgmSimilarity <value> --actionTrgmSimilarity <value> --targetTypeTrgmSimilarity <value> --searchScore <value> [--actorId <value>] [--metadata <value>]
```

### Get a activityLog by id

```bash
agentic-db activity-log get --id <value>
```
