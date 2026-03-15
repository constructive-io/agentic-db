# taskContact

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for TaskContact records via agent-db CLI

## Usage

```bash
agent-db task-contact list
agent-db task-contact get --id <value>
agent-db task-contact create --taskId <value> --contactId <value> --entityId <value>
agent-db task-contact update --id <value> [--taskId <value>] [--contactId <value>] [--entityId <value>]
agent-db task-contact delete --id <value>
```

## Examples

### List all taskContact records

```bash
agent-db task-contact list
```

### Create a taskContact

```bash
agent-db task-contact create --taskId <value> --contactId <value> --entityId <value>
```

### Get a taskContact by id

```bash
agent-db task-contact get --id <value>
```
