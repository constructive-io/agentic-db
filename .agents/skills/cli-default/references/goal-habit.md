# goalHabit

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for GoalHabit records via agentic-db CLI

## Usage

```bash
agentic-db goal-habit list
agentic-db goal-habit get --id <UUID>
agentic-db goal-habit create --goalId <UUID> --habitId <UUID> --entityId <UUID>
agentic-db goal-habit update --id <UUID> [--goalId <UUID>] [--habitId <UUID>] [--entityId <UUID>]
agentic-db goal-habit delete --id <UUID>
```

## Examples

### List all goalHabit records

```bash
agentic-db goal-habit list
```

### Create a goalHabit

```bash
agentic-db goal-habit create --goalId <UUID> --habitId <UUID> --entityId <UUID>
```

### Get a goalHabit by id

```bash
agentic-db goal-habit get --id <value>
```
