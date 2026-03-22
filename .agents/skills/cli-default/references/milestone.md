# milestone

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for Milestone records via agentic-db CLI

## Usage

```bash
agentic-db milestone list
agentic-db milestone get --id <UUID>
agentic-db milestone create --entityId <UUID> --name <String> [--projectId <UUID>] [--dueDate <Datetime>] [--status <String>]
agentic-db milestone update --id <UUID> [--entityId <UUID>] [--projectId <UUID>] [--name <String>] [--dueDate <Datetime>] [--status <String>]
agentic-db milestone delete --id <UUID>
```

## Examples

### List all milestone records

```bash
agentic-db milestone list
```

### Create a milestone

```bash
agentic-db milestone create --entityId <UUID> --name <String> [--projectId <UUID>] [--dueDate <Datetime>] [--status <String>]
```

### Get a milestone by id

```bash
agentic-db milestone get --id <value>
```
