# milestone

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for Milestone records via agent-db CLI

## Usage

```bash
agent-db milestone list
agent-db milestone get --id <value>
agent-db milestone create --entityId <value> --name <value> [--projectId <value>] [--dueDate <value>] [--status <value>]
agent-db milestone update --id <value> [--entityId <value>] [--projectId <value>] [--name <value>] [--dueDate <value>] [--status <value>]
agent-db milestone delete --id <value>
```

## Examples

### List all milestone records

```bash
agent-db milestone list
```

### Create a milestone

```bash
agent-db milestone create --entityId <value> --name <value> [--projectId <value>] [--dueDate <value>] [--status <value>]
```

### Get a milestone by id

```bash
agent-db milestone get --id <value>
```
