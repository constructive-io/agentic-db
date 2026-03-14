# workflow

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for Workflow records via agent-os CLI

## Usage

```bash
agent-os workflow list
agent-os workflow get --id <value>
agent-os workflow create --entityId <value> --name <value> [--description <value>] [--triggerType <value>] [--triggerConfig <value>] [--isActive <value>] [--tags <value>]
agent-os workflow update --id <value> [--entityId <value>] [--name <value>] [--description <value>] [--triggerType <value>] [--triggerConfig <value>] [--isActive <value>] [--tags <value>]
agent-os workflow delete --id <value>
```

## Examples

### List all workflow records

```bash
agent-os workflow list
```

### Create a workflow

```bash
agent-os workflow create --entityId <value> --name <value> [--description <value>] [--triggerType <value>] [--triggerConfig <value>] [--isActive <value>] [--tags <value>]
```

### Get a workflow by id

```bash
agent-os workflow get --id <value>
```
