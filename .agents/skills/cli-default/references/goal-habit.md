# goalHabit

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for GoalHabit records via agentic-db CLI

## Usage

```bash
agentic-db goal-habit list
agentic-db goal-habit list --where.<field>.<op> <value> --orderBy <values>
agentic-db goal-habit list --limit 10 --after <cursor>
agentic-db goal-habit find-first --where.<field>.<op> <value>
agentic-db goal-habit get --id <UUID>
agentic-db goal-habit create --goalId <UUID> --habitId <UUID> --entityId <UUID>
agentic-db goal-habit update --id <UUID> [--goalId <UUID>] [--habitId <UUID>] [--entityId <UUID>]
agentic-db goal-habit delete --id <UUID>
```

## Examples

### List goalHabit records

```bash
agentic-db goal-habit list
```

### List goalHabit records with pagination

```bash
agentic-db goal-habit list --limit 10 --offset 0
```

### List goalHabit records with cursor pagination

```bash
agentic-db goal-habit list --limit 10 --after <cursor>
```

### Find first matching goalHabit

```bash
agentic-db goal-habit find-first --where.id.equalTo <value>
```

### List goalHabit records with field selection

```bash
agentic-db goal-habit list --select id,id
```

### List goalHabit records with filtering and ordering

```bash
agentic-db goal-habit list --where.id.equalTo <value> --orderBy ID_ASC
```

### Create a goalHabit

```bash
agentic-db goal-habit create --goalId <UUID> --habitId <UUID> --entityId <UUID>
```

### Get a goalHabit by id

```bash
agentic-db goal-habit get --id <value>
```
