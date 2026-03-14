# goalHabit

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for GoalHabit records via agent-os CLI

## Usage

```bash
agent-os goal-habit list
agent-os goal-habit get --id <value>
agent-os goal-habit create --goalId <value> --habitId <value> --entityId <value>
agent-os goal-habit update --id <value> [--goalId <value>] [--habitId <value>] [--entityId <value>]
agent-os goal-habit delete --id <value>
```

## Examples

### List all goalHabit records

```bash
agent-os goal-habit list
```

### Create a goalHabit

```bash
agent-os goal-habit create --goalId <value> --habitId <value> --entityId <value>
```

### Get a goalHabit by id

```bash
agent-os goal-habit get --id <value>
```
