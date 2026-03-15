# workflow

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for Workflow records via agent-db CLI

## Usage

```bash
agent-db workflow list
agent-db workflow get --id <value>
agent-db workflow create --entityId <value> --name <value> [--description <value>] [--triggerType <value>] [--triggerConfig <value>] [--isActive <value>] [--tags <value>]
agent-db workflow update --id <value> [--entityId <value>] [--name <value>] [--description <value>] [--triggerType <value>] [--triggerConfig <value>] [--isActive <value>] [--tags <value>]
agent-db workflow delete --id <value>
```

## Examples

### List all workflow records

```bash
agent-db workflow list
```

### Create a workflow

```bash
agent-db workflow create --entityId <value> --name <value> [--description <value>] [--triggerType <value>] [--triggerConfig <value>] [--isActive <value>] [--tags <value>]
```

### Get a workflow by id

```bash
agent-db workflow get --id <value>
```
