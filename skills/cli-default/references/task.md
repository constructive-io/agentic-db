# task

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for Task records via agentic-db CLI

## Usage

```bash
agentic-db task list
agentic-db task get --id <value>
agentic-db task create --entityId <value> --title <value> --description <value> --status <value> --priority <value> --tags <value> --embedding <value> --embeddingDistance <value>
agentic-db task update --id <value> [--entityId <value>] [--title <value>] [--description <value>] [--status <value>] [--priority <value>] [--tags <value>] [--embedding <value>] [--embeddingDistance <value>]
agentic-db task delete --id <value>
```

## Examples

### List all task records

```bash
agentic-db task list
```

### Create a task

```bash
agentic-db task create --entityId "value" --title "value" --description "value" --status "value" --priority "value" --tags "value" --embedding "value" --embeddingDistance "value"
```

### Get a task by id

```bash
agentic-db task get --id <value>
```
