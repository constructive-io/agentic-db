# milestone

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for Milestone records via agentic-db CLI

## Usage

```bash
agentic-db milestone list
agentic-db milestone get --id <value>
agentic-db milestone create --entityId <value> --name <value> --dueDate <value> --embedding <value> --projectId <value> --embeddingDistance <value>
agentic-db milestone update --id <value> [--entityId <value>] [--name <value>] [--dueDate <value>] [--embedding <value>] [--projectId <value>] [--embeddingDistance <value>]
agentic-db milestone delete --id <value>
```

## Examples

### List all milestone records

```bash
agentic-db milestone list
```

### Create a milestone

```bash
agentic-db milestone create --entityId "value" --name "value" --dueDate "value" --embedding "value" --projectId "value" --embeddingDistance "value"
```

### Get a milestone by id

```bash
agentic-db milestone get --id <value>
```
