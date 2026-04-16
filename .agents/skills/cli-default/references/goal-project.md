# goalProject

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for GoalProject records via agentic-db CLI

## Usage

```bash
agentic-db goal-project list
agentic-db goal-project list --where.<field>.<op> <value> --orderBy <values>
agentic-db goal-project list --limit 10 --after <cursor>
agentic-db goal-project find-first --where.<field>.<op> <value>
agentic-db goal-project get --id <UUID>
agentic-db goal-project create --goalId <UUID> --projectId <UUID>
agentic-db goal-project update --id <UUID> [--goalId <UUID>] [--projectId <UUID>]
agentic-db goal-project delete --id <UUID>
```

## Examples

### List goalProject records

```bash
agentic-db goal-project list
```

### List goalProject records with pagination

```bash
agentic-db goal-project list --limit 10 --offset 0
```

### List goalProject records with cursor pagination

```bash
agentic-db goal-project list --limit 10 --after <cursor>
```

### Find first matching goalProject

```bash
agentic-db goal-project find-first --where.id.equalTo <value>
```

### List goalProject records with field selection

```bash
agentic-db goal-project list --select id,id
```

### List goalProject records with filtering and ordering

```bash
agentic-db goal-project list --where.id.equalTo <value> --orderBy ID_ASC
```

### Create a goalProject

```bash
agentic-db goal-project create --goalId <UUID> --projectId <UUID>
```

### Get a goalProject by id

```bash
agentic-db goal-project get --id <value>
```
