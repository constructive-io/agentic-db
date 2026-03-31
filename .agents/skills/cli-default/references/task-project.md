# taskProject

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for TaskProject records via agentic-db CLI

## Usage

```bash
agentic-db task-project list
agentic-db task-project list --where.<field>.<op> <value> --orderBy <values>
agentic-db task-project list --limit 10 --after <cursor>
agentic-db task-project find-first --where.<field>.<op> <value>
agentic-db task-project get --id <UUID>
agentic-db task-project create --taskId <UUID> --projectId <UUID> --entityId <UUID>
agentic-db task-project update --id <UUID> [--taskId <UUID>] [--projectId <UUID>] [--entityId <UUID>]
agentic-db task-project delete --id <UUID>
```

## Examples

### List taskProject records

```bash
agentic-db task-project list
```

### List taskProject records with pagination

```bash
agentic-db task-project list --limit 10 --offset 0
```

### List taskProject records with cursor pagination

```bash
agentic-db task-project list --limit 10 --after <cursor>
```

### Find first matching taskProject

```bash
agentic-db task-project find-first --where.id.equalTo <value>
```

### List taskProject records with field selection

```bash
agentic-db task-project list --select id,id
```

### List taskProject records with filtering and ordering

```bash
agentic-db task-project list --where.id.equalTo <value> --orderBy ID_ASC
```

### Create a taskProject

```bash
agentic-db task-project create --taskId <UUID> --projectId <UUID> --entityId <UUID>
```

### Get a taskProject by id

```bash
agentic-db task-project get --id <value>
```
