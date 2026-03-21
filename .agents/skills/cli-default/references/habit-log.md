# habitLog

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for HabitLog records via agentic-db CLI

## Usage

```bash
agentic-db habit-log list
agentic-db habit-log get --id <UUID>
agentic-db habit-log create --entityId <UUID> --habitId <UUID> --completedAt <Datetime> [--activityType <String>] [--durationMinutes <BigFloat>] [--distance <BigFloat>] [--distanceUnit <String>] [--reps <Int>] [--sets <Int>] [--weightAmount <BigFloat>] [--weightUnit <String>] [--calories <BigFloat>] [--data <JSON>] [--notes <String>] [--tags <String>]
agentic-db habit-log update --id <UUID> [--entityId <UUID>] [--habitId <UUID>] [--completedAt <Datetime>] [--activityType <String>] [--durationMinutes <BigFloat>] [--distance <BigFloat>] [--distanceUnit <String>] [--reps <Int>] [--sets <Int>] [--weightAmount <BigFloat>] [--weightUnit <String>] [--calories <BigFloat>] [--data <JSON>] [--notes <String>] [--tags <String>]
agentic-db habit-log delete --id <UUID>
```

## Examples

### List all habitLog records

```bash
agentic-db habit-log list
```

### Create a habitLog

```bash
agentic-db habit-log create --entityId <UUID> --habitId <UUID> --completedAt <Datetime> [--activityType <String>] [--durationMinutes <BigFloat>] [--distance <BigFloat>] [--distanceUnit <String>] [--reps <Int>] [--sets <Int>] [--weightAmount <BigFloat>] [--weightUnit <String>] [--calories <BigFloat>] [--data <JSON>] [--notes <String>] [--tags <String>]
```

### Get a habitLog by id

```bash
agentic-db habit-log get --id <value>
```
