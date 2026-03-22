# goalProject

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for GoalProject records via agentic-db CLI

## Usage

```bash
agentic-db goal-project list
agentic-db goal-project get --id <UUID>
agentic-db goal-project create --goalId <UUID> --projectId <UUID> --entityId <UUID>
agentic-db goal-project update --id <UUID> [--goalId <UUID>] [--projectId <UUID>] [--entityId <UUID>]
agentic-db goal-project delete --id <UUID>
```

## Examples

### List all goalProject records

```bash
agentic-db goal-project list
```

### Create a goalProject

```bash
agentic-db goal-project create --goalId <UUID> --projectId <UUID> --entityId <UUID>
```

### Get a goalProject by id

```bash
agentic-db goal-project get --id <value>
```
