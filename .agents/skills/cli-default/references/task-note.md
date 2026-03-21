# taskNote

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for TaskNote records via agentic-db CLI

## Usage

```bash
agentic-db task-note list
agentic-db task-note get --id <UUID>
agentic-db task-note create --taskId <UUID> --noteId <UUID> --entityId <UUID>
agentic-db task-note update --id <UUID> [--taskId <UUID>] [--noteId <UUID>] [--entityId <UUID>]
agentic-db task-note delete --id <UUID>
```

## Examples

### List all taskNote records

```bash
agentic-db task-note list
```

### Create a taskNote

```bash
agentic-db task-note create --taskId <UUID> --noteId <UUID> --entityId <UUID>
```

### Get a taskNote by id

```bash
agentic-db task-note get --id <value>
```
