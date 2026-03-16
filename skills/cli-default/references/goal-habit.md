# goalHabit

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for GoalHabit records via agentic-db CLI

## Usage

```bash
agentic-db goal-habit list
agentic-db goal-habit get --id <value>
agentic-db goal-habit create --goalId <value> --habitId <value> --entityId <value>
agentic-db goal-habit update --id <value> [--goalId <value>] [--habitId <value>] [--entityId <value>]
agentic-db goal-habit delete --id <value>
```

## Examples

### List all goalHabit records

```bash
agentic-db goal-habit list
```

### Create a goalHabit

```bash
agentic-db goal-habit create --goalId <value> --habitId <value> --entityId <value>
```

### Get a goalHabit by id

```bash
agentic-db goal-habit get --id <value>
```
