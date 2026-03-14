# goalProject

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for GoalProject records via agent-db CLI

## Usage

```bash
agent-db goal-project list
agent-db goal-project get --id <value>
agent-db goal-project create --goalId <value> --projectId <value> --entityId <value>
agent-db goal-project update --id <value> [--goalId <value>] [--projectId <value>] [--entityId <value>]
agent-db goal-project delete --id <value>
```

## Examples

### List all goalProject records

```bash
agent-db goal-project list
```

### Create a goalProject

```bash
agent-db goal-project create --goalId <value> --projectId <value> --entityId <value>
```

### Get a goalProject by id

```bash
agent-db goal-project get --id <value>
```
