# taskProject

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for TaskProject records via agentic-db CLI

## Usage

```bash
agentic-db task-project list
agentic-db task-project get --id <UUID>
agentic-db task-project create --taskId <UUID> --projectId <UUID> --entityId <UUID>
agentic-db task-project update --id <UUID> [--taskId <UUID>] [--projectId <UUID>] [--entityId <UUID>]
agentic-db task-project delete --id <UUID>
```

## Examples

### List all taskProject records

```bash
agentic-db task-project list
```

### Create a taskProject

```bash
agentic-db task-project create --taskId <UUID> --projectId <UUID> --entityId <UUID>
```

### Get a taskProject by id

```bash
agentic-db task-project get --id <value>
```
