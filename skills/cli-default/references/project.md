# project

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for Project records via agentic-db CLI

## Usage

```bash
agentic-db project list
agentic-db project get --id <value>
agentic-db project create --entityId <value> --name <value> --description <value> --status <value> --startDate <value> --dueDate <value> --embedding <value> --embeddingDistance <value>
agentic-db project update --id <value> [--entityId <value>] [--name <value>] [--description <value>] [--status <value>] [--startDate <value>] [--dueDate <value>] [--embedding <value>] [--embeddingDistance <value>]
agentic-db project delete --id <value>
```

## Examples

### List all project records

```bash
agentic-db project list
```

### Create a project

```bash
agentic-db project create --entityId "value" --name "value" --description "value" --status "value" --startDate "value" --dueDate "value" --embedding "value" --embeddingDistance "value"
```

### Get a project by id

```bash
agentic-db project get --id <value>
```
