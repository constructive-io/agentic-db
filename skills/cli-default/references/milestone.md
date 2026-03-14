# milestone

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for Milestone records via agent-os CLI

## Usage

```bash
agent-os milestone list
agent-os milestone get --id <value>
agent-os milestone create --entityId <value> --name <value> [--projectId <value>] [--dueDate <value>] [--status <value>]
agent-os milestone update --id <value> [--entityId <value>] [--projectId <value>] [--name <value>] [--dueDate <value>] [--status <value>]
agent-os milestone delete --id <value>
```

## Examples

### List all milestone records

```bash
agent-os milestone list
```

### Create a milestone

```bash
agent-os milestone create --entityId <value> --name <value> [--projectId <value>] [--dueDate <value>] [--status <value>]
```

### Get a milestone by id

```bash
agent-os milestone get --id <value>
```
