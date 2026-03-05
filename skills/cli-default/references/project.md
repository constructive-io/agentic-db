# project

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for Project records via agent-os CLI

## Usage

```bash
agent-os project list
agent-os project get --id <value>
agent-os project create --entityId <value> --name <value> --description <value> --status <value> --startDate <value> --dueDate <value> --embedding <value> --embeddingDistance <value>
agent-os project update --id <value> [--entityId <value>] [--name <value>] [--description <value>] [--status <value>] [--startDate <value>] [--dueDate <value>] [--embedding <value>] [--embeddingDistance <value>]
agent-os project delete --id <value>
```

## Examples

### List all project records

```bash
agent-os project list
```

### Create a project

```bash
agent-os project create --entityId "value" --name "value" --description "value" --status "value" --startDate "value" --dueDate "value" --embedding "value" --embeddingDistance "value"
```

### Get a project by id

```bash
agent-os project get --id <value>
```
