# taskNote

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for TaskNote records via agentic-db CLI

## Usage

```bash
agentic-db task-note list
agentic-db task-note list --where.<field>.<op> <value> --orderBy <values>
agentic-db task-note list --limit 10 --after <cursor>
agentic-db task-note find-first --where.<field>.<op> <value>
agentic-db task-note get --id <UUID>
agentic-db task-note create --taskId <UUID> --noteId <UUID>
agentic-db task-note update --id <UUID> [--taskId <UUID>] [--noteId <UUID>]
agentic-db task-note delete --id <UUID>
```

## Examples

### List taskNote records

```bash
agentic-db task-note list
```

### List taskNote records with pagination

```bash
agentic-db task-note list --limit 10 --offset 0
```

### List taskNote records with cursor pagination

```bash
agentic-db task-note list --limit 10 --after <cursor>
```

### Find first matching taskNote

```bash
agentic-db task-note find-first --where.id.equalTo <value>
```

### List taskNote records with field selection

```bash
agentic-db task-note list --select id,id
```

### List taskNote records with filtering and ordering

```bash
agentic-db task-note list --where.id.equalTo <value> --orderBy ID_ASC
```

### Create a taskNote

```bash
agentic-db task-note create --taskId <UUID> --noteId <UUID>
```

### Get a taskNote by id

```bash
agentic-db task-note get --id <value>
```
