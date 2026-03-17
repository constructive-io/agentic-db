# habitLog

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for HabitLog records via agentic-db CLI

## Usage

```bash
agentic-db habit-log list
agentic-db habit-log get --id <value>
agentic-db habit-log create --entityId <value> --habitId <value> --completedAt <value> --activityTypeTrgmSimilarity <value> --distanceUnitTrgmSimilarity <value> --weightUnitTrgmSimilarity <value> --notesTrgmSimilarity <value> --searchScore <value> [--activityType <value>] [--durationMinutes <value>] [--distance <value>] [--distanceUnit <value>] [--reps <value>] [--sets <value>] [--weightAmount <value>] [--weightUnit <value>] [--calories <value>] [--data <value>] [--notes <value>] [--tags <value>]
agentic-db habit-log update --id <value> [--entityId <value>] [--habitId <value>] [--completedAt <value>] [--activityType <value>] [--durationMinutes <value>] [--distance <value>] [--distanceUnit <value>] [--reps <value>] [--sets <value>] [--weightAmount <value>] [--weightUnit <value>] [--calories <value>] [--data <value>] [--notes <value>] [--tags <value>] [--activityTypeTrgmSimilarity <value>] [--distanceUnitTrgmSimilarity <value>] [--weightUnitTrgmSimilarity <value>] [--notesTrgmSimilarity <value>] [--searchScore <value>]
agentic-db habit-log delete --id <value>
```

## Examples

### List all habitLog records

```bash
agentic-db habit-log list
```

### Create a habitLog

```bash
agentic-db habit-log create --entityId <value> --habitId <value> --completedAt <value> --activityTypeTrgmSimilarity <value> --distanceUnitTrgmSimilarity <value> --weightUnitTrgmSimilarity <value> --notesTrgmSimilarity <value> --searchScore <value> [--activityType <value>] [--durationMinutes <value>] [--distance <value>] [--distanceUnit <value>] [--reps <value>] [--sets <value>] [--weightAmount <value>] [--weightUnit <value>] [--calories <value>] [--data <value>] [--notes <value>] [--tags <value>]
```

### Get a habitLog by id

```bash
agentic-db habit-log get --id <value>
```
