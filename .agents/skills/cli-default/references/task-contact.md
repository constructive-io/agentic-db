# taskContact

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for TaskContact records via agentic-db CLI

## Usage

```bash
agentic-db task-contact list
agentic-db task-contact list --where.<field>.<op> <value> --orderBy <values>
agentic-db task-contact list --limit 10 --after <cursor>
agentic-db task-contact find-first --where.<field>.<op> <value>
agentic-db task-contact get --id <UUID>
agentic-db task-contact create --taskId <UUID> --contactId <UUID> --entityId <UUID>
agentic-db task-contact update --id <UUID> [--taskId <UUID>] [--contactId <UUID>] [--entityId <UUID>]
agentic-db task-contact delete --id <UUID>
```

## Examples

### List taskContact records

```bash
agentic-db task-contact list
```

### List taskContact records with pagination

```bash
agentic-db task-contact list --limit 10 --offset 0
```

### List taskContact records with cursor pagination

```bash
agentic-db task-contact list --limit 10 --after <cursor>
```

### Find first matching taskContact

```bash
agentic-db task-contact find-first --where.id.equalTo <value>
```

### List taskContact records with field selection

```bash
agentic-db task-contact list --select id,id
```

### List taskContact records with filtering and ordering

```bash
agentic-db task-contact list --where.id.equalTo <value> --orderBy ID_ASC
```

### Create a taskContact

```bash
agentic-db task-contact create --taskId <UUID> --contactId <UUID> --entityId <UUID>
```

### Get a taskContact by id

```bash
agentic-db task-contact get --id <value>
```
