# habitLog

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for HabitLog records via agent-os CLI

## Usage

```bash
agent-os habit-log list
agent-os habit-log get --id <value>
agent-os habit-log create --entityId <value> --habitId <value> --completedAt <value> [--activityType <value>] [--durationMinutes <value>] [--distance <value>] [--distanceUnit <value>] [--reps <value>] [--sets <value>] [--weightAmount <value>] [--weightUnit <value>] [--calories <value>] [--data <value>] [--notes <value>] [--tags <value>]
agent-os habit-log update --id <value> [--entityId <value>] [--habitId <value>] [--completedAt <value>] [--activityType <value>] [--durationMinutes <value>] [--distance <value>] [--distanceUnit <value>] [--reps <value>] [--sets <value>] [--weightAmount <value>] [--weightUnit <value>] [--calories <value>] [--data <value>] [--notes <value>] [--tags <value>]
agent-os habit-log delete --id <value>
```

## Examples

### List all habitLog records

```bash
agent-os habit-log list
```

### Create a habitLog

```bash
agent-os habit-log create --entityId <value> --habitId <value> --completedAt <value> [--activityType <value>] [--durationMinutes <value>] [--distance <value>] [--distanceUnit <value>] [--reps <value>] [--sets <value>] [--weightAmount <value>] [--weightUnit <value>] [--calories <value>] [--data <value>] [--notes <value>] [--tags <value>]
```

### Get a habitLog by id

```bash
agent-os habit-log get --id <value>
```
