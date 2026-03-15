# habitLog

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for HabitLog records via agent-db CLI

## Usage

```bash
agent-db habit-log list
agent-db habit-log get --id <value>
agent-db habit-log create --entityId <value> --habitId <value> --completedAt <value> --activityTypeTrgmSimilarity <value> --distanceUnitTrgmSimilarity <value> --weightUnitTrgmSimilarity <value> --notesTrgmSimilarity <value> --searchScore <value> [--activityType <value>] [--durationMinutes <value>] [--distance <value>] [--distanceUnit <value>] [--reps <value>] [--sets <value>] [--weightAmount <value>] [--weightUnit <value>] [--calories <value>] [--data <value>] [--notes <value>] [--tags <value>]
agent-db habit-log update --id <value> [--entityId <value>] [--habitId <value>] [--completedAt <value>] [--activityType <value>] [--durationMinutes <value>] [--distance <value>] [--distanceUnit <value>] [--reps <value>] [--sets <value>] [--weightAmount <value>] [--weightUnit <value>] [--calories <value>] [--data <value>] [--notes <value>] [--tags <value>] [--activityTypeTrgmSimilarity <value>] [--distanceUnitTrgmSimilarity <value>] [--weightUnitTrgmSimilarity <value>] [--notesTrgmSimilarity <value>] [--searchScore <value>]
agent-db habit-log delete --id <value>
```

## Examples

### List all habitLog records

```bash
agent-db habit-log list
```

### Create a habitLog

```bash
agent-db habit-log create --entityId <value> --habitId <value> --completedAt <value> --activityTypeTrgmSimilarity <value> --distanceUnitTrgmSimilarity <value> --weightUnitTrgmSimilarity <value> --notesTrgmSimilarity <value> --searchScore <value> [--activityType <value>] [--durationMinutes <value>] [--distance <value>] [--distanceUnit <value>] [--reps <value>] [--sets <value>] [--weightAmount <value>] [--weightUnit <value>] [--calories <value>] [--data <value>] [--notes <value>] [--tags <value>]
```

### Get a habitLog by id

```bash
agent-db habit-log get --id <value>
```
