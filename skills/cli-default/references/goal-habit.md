# goalHabit

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for GoalHabit records via agent-db CLI

## Usage

```bash
agent-db goal-habit list
agent-db goal-habit get --id <value>
agent-db goal-habit create --goalId <value> --habitId <value> --entityId <value>
agent-db goal-habit update --id <value> [--goalId <value>] [--habitId <value>] [--entityId <value>]
agent-db goal-habit delete --id <value>
```

## Examples

### List all goalHabit records

```bash
agent-db goal-habit list
```

### Create a goalHabit

```bash
agent-db goal-habit create --goalId <value> --habitId <value> --entityId <value>
```

### Get a goalHabit by id

```bash
agent-db goal-habit get --id <value>
```
