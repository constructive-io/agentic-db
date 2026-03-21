# taskContact

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for TaskContact records via agentic-db CLI

## Usage

```bash
agentic-db task-contact list
agentic-db task-contact get --id <UUID>
agentic-db task-contact create --taskId <UUID> --contactId <UUID> --entityId <UUID>
agentic-db task-contact update --id <UUID> [--taskId <UUID>] [--contactId <UUID>] [--entityId <UUID>]
agentic-db task-contact delete --id <UUID>
```

## Examples

### List all taskContact records

```bash
agentic-db task-contact list
```

### Create a taskContact

```bash
agentic-db task-contact create --taskId <UUID> --contactId <UUID> --entityId <UUID>
```

### Get a taskContact by id

```bash
agentic-db task-contact get --id <value>
```
